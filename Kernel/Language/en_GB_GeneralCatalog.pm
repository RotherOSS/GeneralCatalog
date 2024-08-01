# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.io/
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

package Kernel::Language::en_GB_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Functionality';

    # Template: AdminDynamicFieldGeneralCatalog
    $Self->{Translation}->{'Filter items by class.'} = '';
    $Self->{Translation}->{'Set the general catalog class.'} = '';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'General Catalogue Management';
    $Self->{Translation}->{'Items in Class'} = '';
    $Self->{Translation}->{'Edit Item'} = '';
    $Self->{Translation}->{'Add Class'} = '';
    $Self->{Translation}->{'Add Item'} = '';
    $Self->{Translation}->{'Add Catalog Item'} = 'Add Catalogue Item';
    $Self->{Translation}->{'Add Catalog Class'} = 'Add Catalogue Class';
    $Self->{Translation}->{'Catalog Class'} = 'Catalog Class';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Edit Catalogue Item';

    # JS File: ITSM.GeneralCatalog
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Create and manage the General Catalogue.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = '';
    $Self->{Translation}->{'Defines if parent-child translations for queues and services should be generated automatically.'} =
        '';
    $Self->{Translation}->{'Defines the URL JS Color Picker path.'} = 'Defines the URL JS Colour Picker path.';
    $Self->{Translation}->{'Defines the initial height for the rich text editor component in pixels.'} =
        '';
    $Self->{Translation}->{'Defines the initial height in pixels for the rich text editor component for this screen.'} =
        '';
    $Self->{Translation}->{'Dynamic Fields GeneralCatalog Backend GUI'} = '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Frontend module registration for the AdminGeneralCatalogue configuration in the admin area.';
    $Self->{Translation}->{'General Catalog'} = 'General Catalogue';
    $Self->{Translation}->{'GeneralCatalog'} = '';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parameters for the example comment 2 of the general catalogue attributes.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parameters for the example permission groups of the general catalogue attributes.';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
