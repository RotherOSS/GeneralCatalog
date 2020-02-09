# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2020 Rother OSS GmbH, https://otobo.de/
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

package Kernel::Language::de_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Funktionalität';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'General Katalog-Verwaltung';
    $Self->{Translation}->{'Items in Class'} = 'Elemente in Klasse';
    $Self->{Translation}->{'Edit Item'} = 'Ändere das Item';
    $Self->{Translation}->{'Add Class'} = 'Klasse hinzufügen';
    $Self->{Translation}->{'Add Item'} = 'Füge Item hinzu';
    $Self->{Translation}->{'Add Catalog Item'} = 'Katalogelement hinzufügen';
    $Self->{Translation}->{'Add Catalog Class'} = 'Katalogklasse hinzufügen';
    $Self->{Translation}->{'Catalog Class'} = 'Katalogklasse';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Katalogelement bearbeiten';

    # JS File: ITSM.GeneralCatalog
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = 'Der Status des Warnvorfalls kann nicht auf ungültig gesetzt werden.';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Kommentar 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'General Katalog erstellen und verwalten.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Legen Sie den Kommentar 2 für den General Katalog fest.';
    $Self->{Translation}->{'Defines the URL JS Color Picker path.'} = 'Definiert die URL des JS-Farbwähler-Pfads.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Registrierung des Frontend-Moduls für die Konfiguration von AdminGeneralCatalog im Admin-Bereich.';
    $Self->{Translation}->{'General Catalog'} = 'General Katalog';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parameter für den Beispiel-Kommentar 2 der General Katalog-Attribute.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parameter für die zugriffsberechtigte Gruppe der General Katalog-Attribute.';
    $Self->{Translation}->{'Permission Group'} = 'Berechtigungsgruppe \*';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
