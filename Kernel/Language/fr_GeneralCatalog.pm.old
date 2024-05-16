# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2021 Rother OSS GmbH, https://otobo.de/
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

package Kernel::Language::fr_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Fonctionnalité';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Gestion du catalogue général';
    $Self->{Translation}->{'Items in Class'} = 'Éléments dans la classe';
    $Self->{Translation}->{'Edit Item'} = 'Éditer un élément';
    $Self->{Translation}->{'Add Class'} = 'Ajouter une classe';
    $Self->{Translation}->{'Add Item'} = 'Ajouter un élément';
    $Self->{Translation}->{'Add Catalog Item'} = 'Ajouter un élément au catalogue';
    $Self->{Translation}->{'Add Catalog Class'} = 'Ajouter une classe au catalogue';
    $Self->{Translation}->{'Catalog Class'} = 'Classe de catalogue';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Éditer un élément du catalogue';

    # JS File: ITSM.GeneralCatalog
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Commentaire 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Créer et gérer le catalogue général.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Définir le commentaire 2 du catalogue général.';
    $Self->{Translation}->{'Defines the URL JS Color Picker path.'} = 'Définit l\'URL du chemin "JS Color Picker".';
    $Self->{Translation}->{'Defines the default frontend (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at https://doc.otobo.org/.'} =
        '';
    $Self->{Translation}->{'Defines the default frontend language. All the possible values are determined by the available language files on the system. These values are listed as the keys in the setting \'DefaultUsedLanguages\'.'} =
        '';
    $Self->{Translation}->{'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin. "Mandatory" determines if the plugin is always shown and can not be removed by agents. Only works if DashboardBackend::AllowCmdOutput is enabled in Config.pm.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Interface d\'enregistrement de module pour la configuration du catalogue général dans la zone administrateur';
    $Self->{Translation}->{'General Catalog'} = 'Catalogue général';
    $Self->{Translation}->{'If "LDAP" was selected for Customer::AuthModule and you wish to use TLS security to communicate with the LDAP server, the "verify" parameter can be specified here. See Net::LDAP::start_tls for more information about the parameter.'} =
        '';
    $Self->{Translation}->{'Ignores not ticket related attributes.'} = '';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Paramètres pour l\'exemple du commentaire 2 des attributs du catalogue général';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Paramètres pour l\'exemple des permissions de groupes des attributs du catalogue général.';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
