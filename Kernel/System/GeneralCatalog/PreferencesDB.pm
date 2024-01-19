# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.de/
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

package Kernel::System::GeneralCatalog::PreferencesDB;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::DB',
    'Kernel::System::Log',
);

=head1 NAME

Kernel::System::GeneralCatalog::PreferencesDB - some preferences functions for general catalog

=head1 PUBLIC INTERFACE

=cut

=head2 new()

create an object

    use Kernel::System::ObjectManager;

    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $GeneralCatalogPreferencesDBObject = $Kernel::OM->Get('Kernel::System::GeneralCatalog::PreferencesDB');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = bless {}, $Type;

    # preferences table data
    $Self->{PreferencesTable}      = 'general_catalog_preferences';
    $Self->{PreferencesTableKey}   = 'pref_key';
    $Self->{PreferencesTableValue} = 'pref_value';
    $Self->{PreferencesTableGcID}  = 'general_catalog_id';

    return $Self;
}

=head2 GeneralCatalogPreferencesSet()

sets preferences for an item

    $PreferencesObject->GeneralCatalogPreferencesSet(
        ItemID => 1234,
        Key    => 'Functionality',
        Value  => 'operational',
    );

=cut

sub GeneralCatalogPreferencesSet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(ItemID Key Value)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Needed!",
            );
            return;
        }
    }

    # delete old data
    return if !$Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => "DELETE FROM $Self->{PreferencesTable} WHERE "
            . "$Self->{PreferencesTableGcID} = ? AND $Self->{PreferencesTableKey} = ?",
        Bind => [
            \$Param{ItemID},
            \$Param{Key},
        ],
    );

    # insert new data
    return $Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => "INSERT INTO $Self->{PreferencesTable} ($Self->{PreferencesTableGcID}, "
            . " $Self->{PreferencesTableKey}, $Self->{PreferencesTableValue}) "
            . " VALUES (?, ?, ?)",
        Bind => [
            \$Param{ItemID},
            \$Param{Key},
            \$Param{Value},
        ],
    );
}

=head2 GeneralCatalogPreferencesGet()

sets all Preferences for an item

    my %Preferences = $PreferencesObject->GeneralCatalogPreferencesGet(
        ItemID => 123,
    );

=cut

sub GeneralCatalogPreferencesGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(ItemID)) {
        if ( !$Param{$Needed} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Needed!",
            );
            return;
        }
    }

    # check if queue preferences are available
    if ( !$Kernel::OM->Get('Kernel::Config')->Get('GeneralCatalogPreferences') ) {
        return;
    }

    # get preferences
    return if !$Kernel::OM->Get('Kernel::System::DB')->Prepare(
        SQL => "SELECT $Self->{PreferencesTableKey}, $Self->{PreferencesTableValue} "
            . " FROM $Self->{PreferencesTable} WHERE $Self->{PreferencesTableGcID} = ?",
        Bind => [ \$Param{ItemID} ],
    );

    my %Data;
    while ( my @Row = $Kernel::OM->Get('Kernel::System::DB')->FetchrowArray() ) {
        $Data{ $Row[0] } = $Row[1];
    }

    # return data
    return %Data;
}

1;
