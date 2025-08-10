; Copyright 2015-2024 Matt "MateoConLechuga" Waltz
;
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are met:
;
; 1. Redistributions of source code must retain the above copyright notice,
;    this list of conditions and the following disclaimer.
;
; 2. Redistributions in binary form must reproduce the above copyright notice,
;    this list of conditions and the following disclaimer in the documentation
;    and/or other materials provided with the distribution.
;
; 3. Neither the name of the copyright holder nor the names of its contributors
;    may be used to endorse or promote products derived from this software
;    without specific prior written permission.
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
; POSSIBILITY OF SUCH DAMAGE.

string_cesium:
	db	yoshiti_name,0
string_cesium_version:
	db	yoshiti_name,' Version ',yoshiti_version,0
string_asm:
	db	'eZ80',0
string_c:
	db	'C',0
string_ice:
	db	'ICE',0
string_ice_source:
	db	'ICE S',0
string_directory:
	db	'Folder',0
string_usb:
	db	'USB',0
string_basic:
	db	'Basic',0
string_application:
	db	'App',0
string_ti:
	db	'TI-OS',0
string_unknown:
	db	'Unknown',0
string_appvar:
	db	'Data',0
string_min_os_version:
	db	'5.0.0.0.0',0
.length := $-.

if language eq "english"

string_mode_select:
	db	': Press ',$7e,'MODE] to set',0
string_primary_color:
	db	'Primary Color',0
string_secondary_color:
	db	'Secondary Color',0
string_tertiary_color:
	db	'Highlight Color',0
string_quaternary_color:
	db	'Inversion Color',0
string_quinary_color:
	db	'Hidden Program Color',0
string_senary_color:
	db	'Background Color',0
string_language:
	db	'Type: ',0
string_archived:
	db	'Archived',0
string_read_only:
	db	'Read-Only',0
string_hidden:
	db	'Hidden',0
string_system:
	db	'System',0
string_locked:
	db	'Locked',0
string_size:
	db	'Size: ',0
string_min_version:
	db	'Min Version:',0
string_ram_free:
	db	'RAM Free: ',0
string_rom_free:
	db	'ROM Free: ',0
string_file_information:
	db	'File Information',0
string_settings:
	db	'Settings',0
	db	$7e,'MODE]',0
string_delete:
	db	'Delete',0
	db	$7e,'DEL]',0
string_attributes:
	db	'Attrib',0
	db	$7e,'ALPHA]',0
string_rename:
	db	'Rename',0
	db	$7e,'GRAPH]',0
string_transfer:
	db	'Transfer',0
	db	$7e,'PRGM]',0
string_edit_prgm:
	db	'Edit Prgm',0
	db	$7e,'ZOOM]'
string_new_prgm:
	db	'New Prgm',0
	db	$7e,'Y=]'
string_editor_name:
	db	'Prgm Editor',0
string_delete_confirmation:
	db	'Delete?: ',$7e,'ZOOM]-Yes  ',$7e,'GRAPH]-No',0
string_setting_page1:
	db	'Press <> arrow keys to switch pages  ',$7e,'1 of 2]',0
string_setting_page2:
	db	'Press <> arrow keys to switch pages  ',$7e,'2 of 2]',0
string_setting_color:
	db	'Change YoshiTI Colors',0
string_setting_indicator:
	db	'Disable busy indicator in programs',0
string_setting_clock:
	db	'Display clock time',0
string_setting_show_battery:
	db	'Display battery status',0
string_setting_show_hidden:
	db	'Hide hidden programs',0
string_setting_ram_backup:
	db	'Backup RAM before executing programs',0
string_setting_enable_shortcuts:
	db	'Enable ',$7e,'ON] key shortcuts',0
string_setting_delete_confirm:
	db	'Show confirm deletion prompt',0
string_setting_screen_brightness:
	db	'Change screen brightness',0
string_setting_special_directories:
	db	'Show special directories',0
string_setting_list_count:
	db	'Show item listing count',0
string_setting_poweron_password:
	db	'Change poweron password',0
string_setting_editor_prgm:
	db	'Change program editor',0
string_setting_usb_enable:
	db	'Enable USB flash drive access',0
string_setting_invert_mode:
	db	'Enable dark mode (inverted colors)',0
string_new_password:
	db	'Set poweron password: ',0
string_prgm_editor_name:
	db	'Program editor name: ',0
string_usb_info_0:
	db	'Use any FAT32 USB flash drive',0
string_usb_info_1:
	db	'for external storage and transfer.',0
string_usb_info_2:
	db	'You will need to install LibLoad',0
string_usb_info_3:
	db	'and USBDRVCE/MSDDRVCE/FATDRVCE:',0
string_usb_info_4:
	db	'Link: http://tiny.cc/clibs',0
string_usb_info_5:
	db	'Press ',$7e,'enter] to retry.',0
string_usb_info_6:
	db	'Press ',$7e,'clear] to cancel.',0
string_usb_waiting:
	db	'Waiting for USB to be connected...',0
string_usb_no_partitions:
	db	'No FAT32 partitions found!',0
string_insert_fat32:
	db	'Please insert a FAT32 formatted drive.',0
string_partition:
	db	'Partition ',0
string_select_partition_0:
	db	'This drive contains multiple partitions.',0
string_select_partition_1:
	db	'Choose one from the list above.',0
string_fat_init_error_0:
	db	'Error initializing FAT partition.',0
string_fat_init_error_1:
	db	'Error code: ',0
string_fat_transferring:
	db	'Transferring...',0
string_ram_error:
	db	'Not enough free RAM',0
str_invalid_os:
	db	'Cannot use this OS',0
str_cannot_hide:
	db	'Cannot (un)hide archived programs',0

end if

if language eq "french"

string_mode_select:
	db	':',$7e,'MODE] pour changer',0
string_primary_color:
	db	'Couleur primaire',0
string_secondary_color:
	db	'Couleur secondaire',0
string_tertiary_color:
	db	'Couleur surligner',0
string_quaternary_color:
	db	'Couleur invers',$82,0
string_quinary_color:
	db	'Couleur programme cach',$82,0
string_senary_color:
	db	'Couleur contexte',0
string_language:
	db	'Langage : ',0
string_archived:
	db	'Archiv',$82,0
string_hidden:
	db	'Cach',$82,0
string_locked:
	db	'Verrouill',$82,0
string_size:
	db	'Taille : ',0
string_min_version:
	db	'Version Min:',0
string_ram_free:
	db	'RAM Libre : ',0
string_rom_free:
	db	'ROM Libre : ',0
string_file_information:
	db	'    Infos fichier',0
string_settings:
	db	'Options',0
	db	$7e,'MODE]',0
string_delete:
	db	'Effacer',0
	db	$7e,'SUPPR]',0
string_attributes:
	db	'Attrib',0
	db	$7e,'ALPHA]',0
string_rename:
	db	'Nom',0
	db	$7e,'GRAPH]',0
string_edit_prgm:
	db	'Modifier',0
	db	$7e,'ZOOM]'
string_new_prgm:
	db	'Nouveau',0
	db	$7e,'Y=]',0
string_editor_name:
	db	'Editeur de prgm',0
string_delete_confirmation:
	db	'Supprimer ? ',$7e,'ZOOM]-Oui ',$7e,'GRAPH]-Non',0
string_setting_color:
	db	'Couleur de YoshiTI',0
string_setting_indicator:
	db	'Cacher l',$27,'indicateur de calcul en BASIC',0
string_setting_list_count:
	db	'Afficher le nombre de programmes',0
string_setting_page1:
	db	'Appuyer fl',$8A,'ches <> pour changer page  ',$7e,'1/2]',0
string_setting_page2:
	db	'Appuyer fl',$8A,'ches <> pour changer page  ',$7e,'2/2]',0
string_setting_screen_brightness:
	db	'Modifier la luminosit',$82,' de l',$27,$82,'cran',0
string_setting_show_battery:
	db	'Afficher statut de la batterie',0
string_setting_show_hidden:
	db	'Cacher les programmes cach',$82,'s',0
string_setting_poweron_password:
	db	'D',$82,'finir mot de passe au d',$82,'marrage',0
string_setting_editor_prgm:
	db	'Changer l',$27,$82,'diteur de programmes',0
string_new_password:
	db	'Nouveau mot de passe: ',0
string_prgm_editor_name:
	db	'Nom de l',$27,$82,'diteur de programmes: ',0
string_setting_delete_confirm:
	db	'Afficher l',$27,'invite de suppression',0
string_setting_usb_enable:
	db	'Activer le support de cl',$82,'s USB',0
string_setting_clock:
	db	'Afficher l',$27,'heure',0
string_setting_ram_backup:
	db	'Sauver la RAM avant de lancer des prgms',0
string_setting_special_directories:
	db	'Afficher les r',$82,'pertoires sp',$82,'ciaux',0
string_setting_enable_shortcuts:
	db	'Activer les raccourcis clavier',0
string_read_only:
	db	'Lecture seule',0
string_system:
	db	'Systeme',0
string_transfer:
	db	'Transfer',0
	db	$7e,'PRGM]',0
string_usb_info_0:
	db	'Utilisez une cl',$82,' USB en FAT32',0
string_usb_info_1:
	db	'pour du stockage externe et transferts.',0
string_usb_info_2:
	db	'Vous devrez installer LibLoad',0
string_usb_info_3:
	db	'et la lib USBDRVCE/MSDDRVCE/FATDRVCE :',0
string_usb_info_4:
	db	'hyperlien: http://tiny.cc/clibs',0
string_usb_info_5:
	db	'Appuyez sur ',$7e,'entrer] pour retenter.',0
string_usb_info_6:
	db	'Appuyez sur ',$7e,'suppr] pour annuler.',0
string_usb_waiting:
	db	'En attente de connexion USB ...',0
string_usb_no_partitions:
	db	'Pas de partition FAT32 trouv',$82,'e.',0
string_insert_fat32:
	db	'Veuillez brancher une cl',$82,' format',$82,'e en FAT32.',0
string_partition:
	db	'Partition ',0
string_select_partition_0:
	db	'Cette cl',$82,' contient plusieurs partitions.',0
string_select_partition_1:
	db	'Choisissez-en une depuis la liste ci-dessus.',0
string_fat_init_error_0:
	db	'Erreur d',$27,'init de la partition FAT.',0
string_fat_init_error_1:
	db	'Code d''erreur : ',0
string_fat_transferring:
	db	'Transfert en cours...',0
string_ram_error:
	db	'Pas assez de RAM libre',0
str_invalid_os:
	db	'Mauvaise version d''OS',0
str_cannot_hide:
	db	'Impossible de cacher un programme archiv',$82,0

end if

if language eq "dutch"

string_mode_select:
	db	': ',$7e,'MODE] - volgende',0
string_primary_color:
	db	'Primaire kleur',0
string_secondary_color:
	db	'Secundaire kleur',0
string_tertiary_color:
	db	'Selector kleur',0
string_quaternary_color:
	db	'Inversie kleur',0
string_quinary_color:
	db	'verborgen-programma kleur',0
string_senary_color:
	db	'Achtergrond kleur',0
string_language:
	db	'Type: ',0
string_archived:
	db	'Gearchiveerd',0
string_read_only:
	db	'Alleen-Lezen',0
string_hidden:
	db	'Verborgen',0
string_system:
	db	'Systeem',0
string_locked:
	db	'Beschermd',0
string_size:
	db	'Grootte: ',0
string_min_version:
	db	'Minimum Versie:',0
string_ram_free:
	db	'RAM vrij: ',0
string_rom_free:
	db	'ROM vrij: ',0
string_file_information:
	db	'Bestand info',0
string_settings:
	db	'Opties ',0
	db	$7e,'MODE]',0
string_delete:
	db	'Verwijder ',0
	db	$7e,'DEL]',0
string_attributes:
	db	'Attrib',0
	db	$7e,'ALPHA]',0
string_rename:
	db	'Hernoem',0
	db	$7e,'GRAPH]',0
string_transfer:
	db	'Transfer',0
	db	$7e,'PRGM]',0
string_edit_prgm:
	db	'Bewerk',0
	db	$7e,'ZOOM]'
string_new_prgm:
	db	'Nieuw Prgm',0
	db	$7e,'Y=]'
string_editor_name:
	db	'Prgm Bewerker',0
string_delete_confirmation:
	db	'Verwijderen?: ',$7e,'ZOOM]-Ja  ',$7e,'GRAPH]-Nee',0
string_setting_page1:
	db	'Toets <> pijltjes om pagina te wisselen  ',$7e,'1/2]',0
string_setting_page2:
	db	'Toets <> pijltjes om pagina te wisselen  ',$7e,'2/2]',0
string_setting_color:
	db	'Wijzig YoshiTI Kleuren',0
string_setting_indicator:
	db	'Schakel busy indicator uit in programma',$27,'s',0
string_setting_clock:
	db	'Toon tijd',0
string_setting_show_battery:
	db	'Toon batterijstatus',0
string_setting_show_hidden:
	db	'Verberg verborgen programma',$27,'s',0
string_setting_ram_backup:
	db	'Back-up RAM voor uitvoeren programma',$27,'s',0
string_setting_enable_shortcuts:
	db	'Schakel ',$7e,'ON]-toets shortcuts in',0
string_setting_delete_confirm:
	db	'Toon verwijder bevestigingen',0
string_setting_screen_brightness:
	db	'Wijzig schermhelderheid',0
string_setting_special_directories:
	db	'Toon speciale mappen',0
string_setting_list_count:
	db	'Toon aantal programma',$27,'s',0
string_setting_poweron_password:
	db	'Wijzig wachtwoord',0
string_setting_editor_prgm:
	db	'Wijzig editor',0
string_setting_usb_enable:
	db	'Schakel USB-toegang in',0
string_new_password:
	db	'Stel wachtwoord in: ',0
string_prgm_editor_name:
	db	'Naam editor: ',0
string_usb_info_0:
	db	'Gebruik een FAT32 USB-stick voor:',0
string_usb_info_1:
	db	'-externe opslag.',0
string_usb_info_2:
	db	'Installeer de volgende bibliotheken:',0
string_usb_info_3:
	db	'-LibLoad, USBDRVCE/MSDDRVCE/FATDRVCE',0
string_usb_info_4:
	db	'http://tiny.cc/clibs',0
string_usb_info_5:
	db	'Toets ',$7e,'enter] om opnieuw te proberen.',0
string_usb_info_6:
	db	'Toets ',$7e,'clear] om terug te gaan.',0
string_usb_waiting:
	db	'Wachten tot USB wordt verbonden...',0
string_usb_no_partitions:
	db	'Geen FAT32 partities gevonden!',0
string_insert_fat32:
	db	'Gebruik een FAT32 geformatteerde opslag.',0
string_partition:
	db	'Partitie ',0
string_select_partition_0:
	db	'Deze opslag bevat meerdere partities.',0
string_select_partition_1:
	db	'Kies een van bovenstaande partities.',0
string_fat_init_error_0:
	db	'Fout bij initialiseren van FAT partitie.',0
string_fat_init_error_1:
	db	'Fout code: ',0
string_fat_transferring:
	db	'Over zetten...',0
string_ram_error:
	db	'Niet genoeg RAM beschikbaar',0
str_invalid_os:
	db	'Dit OS is niet bruikbaar',0
str_cannot_hide:
	db	'Kan geen programma in archief verbergen',0

end if

if language eq "italian"

string_mode_select:
	db	': Premi ',$7e,'MODE] per impostare',0
string_primary_color:
	db	'Colore primario',0
string_secondary_color:
	db	'Colore secondario',0
string_tertiary_color:
	db	'Colore dell',$27,'evidenziazione',0
string_quaternary_color:
	db	'Colore dell',$27,'inversione',0
string_quinary_color:
	db	'Colore programma nascosto',0
string_senary_color:
	db	'Colore di sfondo',0
string_language:
	db	'Tipo: ',0
string_archived:
	db	'Archiviato',0
string_read_only:
	db	'Sola lettura',0
string_hidden:
	db	'Nascosto',0
string_system:
	db	'Sistema',0
string_locked:
	db	'Bloccato',0
string_size:
	db	'Grandez.     ',0
string_min_version:
	db	'Versione minima:',0
string_ram_free:
	db	'RAM Libera: ',0
string_rom_free:
	db	'ROM libera: ',0
string_file_information:
	db	'Informazioni',0
string_settings:
	db	'Prefer. ',0
	db	$7e,'MODE]',0
string_delete:
	db	'Elimina',0
	db	$7e,'DEL]',0
string_attributes:
	db	'Attrib.',0
	db	$7e,'ALPHA]',0
string_rename:
	db	'Rinomina',0
	db	$7e,'GRAPH]',0
string_transfer:
	db	'Transf.',0
	db	$7e,'PRGM]',0
string_edit_prgm:
	db	'Modifica',0
	db	$7e,'ZOOM]'
string_new_prgm:
	db	'Nuovo Prgm',0
	db	$7e,'Y=]'
string_editor_name:
	db	'Prgm Editor',0
string_delete_confirmation:
	db	'Eliminare?: ',$7e,'ZOOM]-Si  ',$7e,'GRAPH]-No',0
string_setting_page1:
	db	'Premi i tasti <> per cambiare pagina  ',$7e,'1 di 2]',0
string_setting_page2:
	db	'Premi i tasti <> per cambiare pagina  ',$7e,'2 di 2]',0
string_setting_color:
	db	'Cambia i colori di YoshiTI',0
string_setting_indicator:
	db	'Disab. spia dei processi nei prgm in esec.',0
string_setting_clock:
	db	'Mostra l',$27,'orologio',0
string_setting_show_battery:
	db	'Mostra lo stato della batteria',0
string_setting_show_hidden:
	db	'Nascondi i programmi nascosti',0
string_setting_ram_backup:
	db	'Esegui backup prima di avviare un prgm',0
string_setting_enable_shortcuts:
	db	'Abilita scorciatoie ',$7e,'ON]',0
string_setting_delete_confirm:
	db	'Chiedi prima di eliminare',0
string_setting_screen_brightness:
	db	'Modifica retroilluminazione',0
string_setting_special_directories:
	db	'Mostra cartelle speciali',0
string_setting_list_count:
	db	'Mostra la quantita di file in una cartel.',0
string_setting_poweron_password:
	db	'Cambia password d',$27,'accensione',0
string_setting_editor_prgm:
	db	'Cambia editor di programmi',0
string_setting_usb_enable:
	db	'Abilita i flash drive USB',0
string_setting_invert_mode:
	db	'Abilita modalita notte (colori invertiti)',0
string_new_password:
	db	'Imposta password di accensione: ',0
string_prgm_editor_name:
	db	'Nome editor di programmi: ',0
string_usb_info_0:
	db	'Usa un drive USB formattato in FAT32',0
string_usb_info_1:
	db	'da utilizzare come memoria esterna.',0
string_usb_info_2:
	db	'Devi installare LibLoad',0
string_usb_info_3:
	db	'e USBDRVCE/MSDDRVCE/FATDRVCE:',0
string_usb_info_4:
	db	'Link: http://tiny.cc/clibs',0
string_usb_info_5:
	db	'Premi ',$7e,'enter] per riprovare.',0
string_usb_info_6:
	db	'Premi ',$7e,'clear] per annullare.',0
string_usb_waiting:
	db	'Attendo connessione USB...',0
string_usb_no_partitions:
	db	'Nessuna partizione FAT32 rilevata!',0
string_insert_fat32:
	db	'inserisci un drive formattato in FAT32.',0
string_partition:
	db	'Partizione ',0
string_select_partition_0:
	db	'Questo drive ha moleplici partizioni.',0
string_select_partition_1:
	db	'Scegline uno dalla lista.',0
string_fat_init_error_0:
	db	'Errore del setup della partizione.',0
string_fat_init_error_1:
	db	'Codice errore: ',0
string_fat_transferring:
	db	'Trasferimento...',0
string_ram_error:
	db	'RAM libera insufficiente',0
str_invalid_os:
	db	'Impossibile usare questo OS',0
str_cannot_hide:
	db	'Impos. mostrare/nascondere prgm archiv.',0

end if
