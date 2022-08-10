# Written by WATO
# encoding: utf-8

mkp_rule_packs['windows'] = \
{'disabled': False,
 'hits': 0,
 'id': 'windows',
 'rules': [{'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'description': 'Windows Event logs are forwarded with facility '
                           'local4',
            'disabled': False,
            'docu_url': '',
            'drop': 'skip_pack',
            'event_limit': None,
            'hits': 0,
            'id': 'skip_windows',
            'invert_matching': True,
            'match': '',
            'match_facility': 20,
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'description': 'Group Policy Ignored',
            'disabled': False,
            'docu_url': '',
            'drop': True,
            'event_limit': None,
            'hits': 0,
            'id': 'group_policy_ignored',
            'invert_matching': False,
            'match': '(?:0\\.(?:1112|1030|1085) '
                     'Microsoft-Windows-GroupPolicy|34305\\.8194 '
                     'Group_Policy_Folder_Options|0\\.510 '
                     'Microsoft-Windows-Folder_Redirection)',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'description': 'Sharepoint Event Suppressed',
            'disabled': False,
            'docu_url': '',
            'drop': True,
            'event_limit': None,
            'hits': 0,
            'id': 'sharepoint_suppressed',
            'invert_matching': False,
            'match': '0\\.2159 '
                     'Microsoft-SharePoint_Products-SharePoint_Foundation .+ '
                     'occurred .+ more time\\(s\\) and was suppressed in the '
                     'event log',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Group Policy Apply Failed',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'group_policy_apply_failed',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '0\\.1096 Microsoft-Windows-GroupPolicy (?:Fehler bei der '
                     'Verarbeitung der Gruppenrichtlinie\\. Es wurde versucht, '
                     'registrierungsbasierte Richtlinieneinstellungen für das '
                     'Gruppenrichtlinienobjekt \\"|The processing of Group '
                     'Policy failed\\. Windows could not apply the '
                     'registry-based policy settings for the Group Policy '
                     'object )(.+?)(?:\\" zu lesen. Die '
                     'Gruppenrichtlinieneinstellungen dürfen nicht erzwungen '
                     'werden, bis dieses Ereignis behoben ist|\\. Group Policy '
                     'settings will not be resolved until this event is '
                     'resolved)',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'DNS Register Failed',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'dns_register_failed',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '(0\\.(?:8015|8018|8020) '
                     'Microsoft-Windows-DNS-Client|32768\\.11163 DnsApi) '
                     '(?:Fehler beim Registrieren der Hostressourceneinträge '
                     '\\(A(?: oder AAAA)?\\) für den Netzwerkadapter mit den '
                     'folgenden Einstellungen|The system failed to register '
                     'host \\(A(?: or AAAA)?\\) resource records \\(RRs\\) for '
                     'network adapter with settings): (?:Adaptername|Adapter '
                     'Name ): (.+?) (?:Hostname|Host Name ): (.+?) (?:Primäres '
                     'Domänensuffix|Primary Domain Suffix ): (.+?) '
                     '(?:DNS-Serverliste|DNS server list ): (.+?) (?:Server, '
                     'an den das Update gesendet wurde|Sent update to server '
                     '): (.+?) (?:IP-Adresse\\(n\\)|IP Address\\(es\\)) : '
                     '(.+?) (?:Die(?:se)? Ressourceneintr|The reason)',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Sharepoint Job Failed',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'sharepoint_job_failed',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '0\\.6482 Microsoft-SharePoint_Products-SharePoint_Server '
                     'Application Server Administration job failed for service '
                     'instance (.+? \\(.+?\\))\\. Reason: (.+?) Technical '
                     'Support Details:',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'DCOM Unavailable',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'dcom_unavailable',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '0\\.10005 DCOM (.+?) (.+?) Nicht verfügbar {(.+?)}',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Service Unable To Start',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'service_unable_to_start',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '49152\\.7038 Service_Control_Manager Der Dienst "(.+?)" '
                     'konnte sich nicht als "(.+?)" mit dem aktuellen Kennwort '
                     'aufgrund des folgenden Fehlers anmelden: (.+?) '
                     'Vergewissern Sie sich, dass der Dienst richtig '
                     'konfiguriert ist im Dienste-Snap-In in der Microsoft '
                     'Management Console \\(MMC\\).',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Service Not Started',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'service_not_started',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '49152\\.7000 Service_Control_Manager Der Dienst "(.+?)" '
                     'wurde',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Service Failed',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'service_failed',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '49152\\.7034 Service_Control_Manager Dienst "(.+?)" '
                     'wurde unerwartet beendet. Dies ist bereits .+? Mal '
                     'passiert\\.',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 3,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 300,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Failed Login As',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'failed_login_as',
            'invert_matching': False,
            'livetime': (1209600, ['open']),
            'match': '0\\.4625 Microsoft-Windows-Security-Auditing (?:Fehler '
                     'beim Anmelden eines Kontos\\. Antragsteller: '
                     'Sicherheits-|An account failed to log on\\. Subject: '
                     'Security )ID: .+? (?:Kontoname|Account Name): (.+?) '
                     '(?:Kontodomäne|Account Domain): (.+?) (?:Anmelde-|Logon '
                     ')ID: .+? (?:Anmeldetyp|Logon Type): .+? (?:Konto, für '
                     'das die Anmeldung fehlgeschlagen ist|Account For Which '
                     'Logon Failed): (?:Sicherheits-|Security )ID: .+? '
                     '(?:Kontoname|Account Name): (.+?) (?:Kontodomäne|Account '
                     'Domain): (.*?) ?(?:Fehlerinformation|Failure '
                     'Information)',
            'set_text': 'Login failed for \\1@\\2 as \\3@\\4',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '',
            'count': {'algorithm': 'interval',
                      'count': 1,
                      'count_ack': False,
                      'count_duration': None,
                      'period': 86400,
                      'separate_application': True,
                      'separate_host': True,
                      'separate_match_groups': True},
            'description': 'Kernelbase Errors',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'kernelbase',
            'invert_matching': False,
            'livetime': (604800, ['open']),
            'match': '0\\.1000 Application_Error Name der fehlerhaften '
                     'Anwendung: (.+?), Version: (.+?),.+Name des fehlerhaften '
                     'Moduls: KERNELBASE\\.dll, Version: (.+?),.+Pfad der '
                     'fehlerhaften Anwendung: (.+?) Pfad des fehlerhaften '
                     'Moduls: (.+?) Berichtskennung',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1},
           {'actions': [],
            'actions_in_downtime': True,
            'autodelete': False,
            'cancel_action_phases': 'always',
            'cancel_actions': [],
            'comment': '2021-12-04 gurubert: created\n',
            'description': 'Catchall for Eventlog messages',
            'disabled': False,
            'docu_url': '',
            'drop': False,
            'event_limit': None,
            'hits': 0,
            'id': 'catchall',
            'invert_matching': False,
            'livetime': (172800, ['open']),
            'match': '',
            'sl': {'precedence': 'message', 'value': 0},
            'state': -1}],
 'title': 'Windows'}
