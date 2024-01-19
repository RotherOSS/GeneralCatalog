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

package Kernel::Language::sr_Latn_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Funkcionalnost';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Upravljanje Opštim katalogom';
    $Self->{Translation}->{'Items in Class'} = 'Stavke u klasi';
    $Self->{Translation}->{'Edit Item'} = 'Uredi stavku';
    $Self->{Translation}->{'Add Class'} = 'Dodaj klasu';
    $Self->{Translation}->{'Add Item'} = 'Dodaj stavku';
    $Self->{Translation}->{'Add Catalog Item'} = 'Dodavanje stavke u katalog';
    $Self->{Translation}->{'Add Catalog Class'} = 'Dodavanje klase u katalog';
    $Self->{Translation}->{'Catalog Class'} = 'Katalog klasa';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Uredi stavku kataloga';

    # JS File: ITSM.GeneralCatalog
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Komentar 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Kreiranje i upravljanje opštim katalogom.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Definiše komentar 2 u opštem katalogu.';
    $Self->{Translation}->{'Defines the URL JS Color Picker path.'} = 'Definiše URL putanju za JS Color Picker.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Registracija pristupnog modula za AdminGeneralCatalog u interfejsu administratora.';
    $Self->{Translation}->{'General Catalog'} = 'Opšti katalog';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parametri za primer komentara 2 atributa opšteg kataloga.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parametri za primer grupe za dozvole atributa opšteg kataloga.';
    $Self->{Translation}->{'Permission Group'} = 'Grupa pristupa';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
