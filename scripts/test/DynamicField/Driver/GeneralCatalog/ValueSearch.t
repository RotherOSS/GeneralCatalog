# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2019-2023 Rother OSS GmbH, https://otobo.de/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

use v5.24;
use strict;
use warnings;
use namespace::autoclean;
use utf8;

# core modules

# CPAN modules
use Test2::V0;
use Data::Dx;    ## no critic qw(Modules::ProhibitEvilModules)

# OTOBO modules
use Kernel::System::UnitTest::RegisterOM; # Set up $Kernel::OM
use Kernel::System::VariableCheck qw(:all);

# get helper object
$Kernel::OM->ObjectParamAdd(
    'Kernel::System::UnitTest::Helper' => {
        RestoreDatabase => 1,
    },
);
my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

# set up the test class with some items.
my $GeneralCatalogObject = $Kernel::OM->Get('Kernel::System::GeneralCatalog');
my @Circles = (
    '🟠 - U+1F7E0 - LARGE ORANGE CIRCLE',
    '🟡 - U+1F7E1 - LARGE YELLOW CIRCLE',
    '🟢 - U+1F7E2 - LARGE GREEN CIRCLE',
    '🟣 - U+1F7E3 - LARGE PURPLE CIRCLE',
    '🟤 - U+1F7E4 - LARGE BROWN CIRCLE',
);
my %CircleID2Name;
my $TestClass = 'UnitTest::Circle::Large';
for my $Circle ( @Circle ) {
    my $ItemID = $GeneralCatalogObject->ItemAdd(
        Class   => $TestClass,
        Name    => $Circle,
        ValidID => 1,
        UserID  => 1,
    );
    ok( $ItemID, "circle added: $Circle" );
    $CircleID2Name{$ItemID} = $Circle;
}
my $CircleName2ID = reverse %CircleID2Name;

# get needed objects
my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');
my $BackendObject      = $Kernel::OM->Get('Kernel::System::DynamicField::Backend');

# define needed variable
my $RandomID = $Helper->GetRandomNumber();

# create a dynamic field
my $FieldID = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "dynamicfieldtest_circle",
    Label      => 'a description',
    FieldOrder => 9991,
    FieldType  => 'GeneralCatalog',
    ObjectType => 'CustomerUser',
    Config     => {
        Class => $TestClass,
    },
    ValidID => 1,
    UserID  => 1,
);
ok( $FieldID, "DynamicFieldAdd() successful for Field ID $FieldID");

my $DynamicFieldConfig = $DynamicFieldObject->DynamicFieldGet( ID => $FieldID );
ref_ok($DynamicFieldConfig, 'HASH', 'got a dynamic field');

my @ObjectNames = 'customer for all circles';
for my $Circle (@Circles) {
    my $ObjectName = "customer for $Circle";

    my $Success = $BackendObject->ValueSet(
        DynamicFieldConfig => $DynamicFieldConfig,
        Value              => $CircleName2ID{$Circle},
        UserID             => 1,
        ObjectName         => $ObjectName,
    );
    ok( $Success, "Creation of dynamic field value via object name: $ObjectName");

    push @ObjectNames, $ObjectName;

    my $Success = $BackendObject->ValueSet(
        DynamicFieldConfig => $DynamicFieldConfig,
        Value              => $CircleName2ID{$Circle},
        UserID             => 1,
        ObjectName         => 'customer for all circles',
    );
    ok( $Success, "Creation of dynamic field value for $Circle for generic customer");
}

# fetch object IDs for object names
my $ObjectIDByObjectName = $DynamicFieldObject->ObjectMappingGet(
    ObjectName => \@ObjectNames,
    ObjectType => 'CustomerUser',
);
Dx $ObjectIDByObjectName;
is(
    scalar keys $ObjectIDByObjectName->%*,
    scalar @ObjectNames,
    'Number of found object IDs must match number of object names.',
);

# check that ValueSearch() returns expected data,
# The list of item IDs is OR combined
my $Results = $BackendObject->ValueSearch(
    DynamicFieldConfig => $DynamicFieldConfig,
    Search             => [ @CircleName2ID{ '🟢 - U+1F7E2 - LARGE GREEN CIRCLE', '🟣 - U+1F7E3 - LARGE PURPLE CIRCLE' } ],
);
Dx $Results;
ok( IsArrayRefWithData($Results), 'ValueSearch must return a result.');
ok( scalar $Results->@*, 3, 'got three results' );

done_testing;
