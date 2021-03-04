# -*- coding: binary -*-

module Rex
module Post
module Meterpreter
module Extensions
module Stdapi

##
#
# General
#
##

TLV_TYPE_HANDLE             = TLV_META_TYPE_QWORD   |  600
TLV_TYPE_INHERIT            = TLV_META_TYPE_BOOL    |  601
TLV_TYPE_PROCESS_HANDLE     = TLV_META_TYPE_QWORD   |  630
TLV_TYPE_THREAD_HANDLE      = TLV_META_TYPE_QWORD   |  631
TLV_TYPE_PRIVILEGE          = TLV_META_TYPE_STRING  |  632

##
#
# Fs
#
##

TLV_TYPE_DIRECTORY_PATH     = TLV_META_TYPE_STRING  | 1200
TLV_TYPE_FILE_NAME          = TLV_META_TYPE_STRING  | 1201
TLV_TYPE_FILE_PATH          = TLV_META_TYPE_STRING  | 1202
TLV_TYPE_FILE_MODE          = TLV_META_TYPE_STRING  | 1203
TLV_TYPE_FILE_SIZE          = TLV_META_TYPE_UINT    | 1204
TLV_TYPE_FILE_SHORT_NAME    = TLV_META_TYPE_STRING  | 1205
TLV_TYPE_FILE_HASH          = TLV_META_TYPE_RAW     | 1206

TLV_TYPE_MOUNT              = TLV_META_TYPE_GROUP   | 1207
TLV_TYPE_MOUNT_NAME         = TLV_META_TYPE_STRING  | 1208
TLV_TYPE_MOUNT_TYPE         = TLV_META_TYPE_UINT    | 1209
TLV_TYPE_MOUNT_SPACE_USER   = TLV_META_TYPE_QWORD   | 1210
TLV_TYPE_MOUNT_SPACE_TOTAL  = TLV_META_TYPE_QWORD   | 1211
TLV_TYPE_MOUNT_SPACE_FREE   = TLV_META_TYPE_QWORD   | 1212
TLV_TYPE_MOUNT_UNCPATH      = TLV_META_TYPE_STRING  | 1213

TLV_TYPE_STAT_BUF32         = TLV_META_TYPE_COMPLEX | 1220
TLV_TYPE_STAT_BUF           = TLV_META_TYPE_COMPLEX | 1221

TLV_TYPE_SEARCH_RECURSE     = TLV_META_TYPE_BOOL    | 1230
TLV_TYPE_SEARCH_GLOB        = TLV_META_TYPE_STRING  | 1231
TLV_TYPE_SEARCH_ROOT        = TLV_META_TYPE_STRING  | 1232
TLV_TYPE_SEARCH_RESULTS     = TLV_META_TYPE_GROUP   | 1233

TLV_TYPE_FILE_MODE_T        = TLV_META_TYPE_UINT    | 1234
##
#
# Net
#
##
TLV_TYPE_HOST_NAME          = TLV_META_TYPE_STRING  | 1400
TLV_TYPE_PORT               = TLV_META_TYPE_UINT    | 1401
TLV_TYPE_INTERFACE_MTU      = TLV_META_TYPE_UINT    | 1402
TLV_TYPE_INTERFACE_FLAGS    = TLV_META_TYPE_STRING  | 1403
TLV_TYPE_INTERFACE_INDEX    = TLV_META_TYPE_UINT    | 1404

TLV_TYPE_SUBNET             = TLV_META_TYPE_RAW     | 1420
TLV_TYPE_NETMASK            = TLV_META_TYPE_RAW     | 1421
TLV_TYPE_GATEWAY            = TLV_META_TYPE_RAW     | 1422
TLV_TYPE_NETWORK_ROUTE      = TLV_META_TYPE_GROUP   | 1423
TLV_TYPE_IP_PREFIX          = TLV_META_TYPE_UINT    | 1424
TLV_TYPE_ARP_ENTRY          = TLV_META_TYPE_GROUP   | 1425

TLV_TYPE_IP                 = TLV_META_TYPE_RAW     | 1430
TLV_TYPE_MAC_ADDRESS        = TLV_META_TYPE_RAW     | 1431
TLV_TYPE_MAC_NAME           = TLV_META_TYPE_STRING  | 1432
TLV_TYPE_NETWORK_INTERFACE  = TLV_META_TYPE_GROUP   | 1433
TLV_TYPE_IP6_SCOPE          = TLV_META_TYPE_RAW     | 1434

TLV_TYPE_SUBNET_STRING      = TLV_META_TYPE_STRING  | 1440
TLV_TYPE_NETMASK_STRING     = TLV_META_TYPE_STRING  | 1441
TLV_TYPE_GATEWAY_STRING     = TLV_META_TYPE_STRING  | 1442
TLV_TYPE_ROUTE_METRIC       = TLV_META_TYPE_UINT    | 1443

# Resolve
TLV_TYPE_ADDR_TYPE          = TLV_META_TYPE_UINT    | 1444

# Proxy configuration
TLV_TYPE_PROXY_CFG_AUTODETECT    = TLV_META_TYPE_BOOL    | 1445
TLV_TYPE_PROXY_CFG_AUTOCONFIGURL = TLV_META_TYPE_STRING  | 1446
TLV_TYPE_PROXY_CFG_PROXY         = TLV_META_TYPE_STRING  | 1447
TLV_TYPE_PROXY_CFG_PROXYBYPASS   = TLV_META_TYPE_STRING  | 1448

# Socket
TLV_TYPE_PEER_HOST          = TLV_META_TYPE_STRING  | 1500
TLV_TYPE_PEER_PORT          = TLV_META_TYPE_UINT    | 1501
TLV_TYPE_LOCAL_HOST         = TLV_META_TYPE_STRING  | 1502
TLV_TYPE_LOCAL_PORT         = TLV_META_TYPE_UINT    | 1503
TLV_TYPE_CONNECT_RETRIES    = TLV_META_TYPE_UINT    | 1504
TLV_TYPE_NETSTAT_ENTRY      = TLV_META_TYPE_GROUP   | 1505
TLV_TYPE_PEER_HOST_RAW      = TLV_META_TYPE_RAW     | 1506
TLV_TYPE_LOCAL_HOST_RAW     = TLV_META_TYPE_RAW     | 1507

TLV_TYPE_SHUTDOWN_HOW       = TLV_META_TYPE_UINT    | 1530

##
#
# Sys
#
##

PROCESS_EXECUTE_FLAG_HIDDEN           = (1 << 0)
PROCESS_EXECUTE_FLAG_CHANNELIZED      = (1 << 1)
PROCESS_EXECUTE_FLAG_SUSPENDED        = (1 << 2)
PROCESS_EXECUTE_FLAG_USE_THREAD_TOKEN = (1 << 3)
PROCESS_EXECUTE_FLAG_DESKTOP          = (1 << 4)
PROCESS_EXECUTE_FLAG_SESSION          = (1 << 5)
PROCESS_EXECUTE_FLAG_SUBSHELL         = (1 << 6)

# Registry
TLV_TYPE_HKEY               = TLV_META_TYPE_QWORD   | 1000
TLV_TYPE_ROOT_KEY           = TLV_TYPE_HKEY
TLV_TYPE_BASE_KEY           = TLV_META_TYPE_STRING  | 1001
TLV_TYPE_PERMISSION         = TLV_META_TYPE_UINT    | 1002
TLV_TYPE_KEY_NAME           = TLV_META_TYPE_STRING  | 1003
TLV_TYPE_VALUE_NAME         = TLV_META_TYPE_STRING  | 1010
TLV_TYPE_VALUE_TYPE         = TLV_META_TYPE_UINT    | 1011
TLV_TYPE_VALUE_DATA         = TLV_META_TYPE_RAW     | 1012
TLV_TYPE_TARGET_HOST        = TLV_META_TYPE_STRING  | 1013

# Config
TLV_TYPE_COMPUTER_NAME          = TLV_META_TYPE_STRING  | 1040
TLV_TYPE_OS_NAME                = TLV_META_TYPE_STRING  | 1041
TLV_TYPE_USER_NAME              = TLV_META_TYPE_STRING  | 1042
TLV_TYPE_ARCHITECTURE           = TLV_META_TYPE_STRING  | 1043
TLV_TYPE_LANG_SYSTEM            = TLV_META_TYPE_STRING  | 1044
TLV_TYPE_SID                    = TLV_META_TYPE_STRING  | 1045
TLV_TYPE_DOMAIN                 = TLV_META_TYPE_STRING  | 1046
TLV_TYPE_LOGGED_ON_USER_COUNT   = TLV_META_TYPE_UINT    | 1047
TLV_TYPE_LOCAL_DATETIME         = TLV_META_TYPE_STRING  | 1048
TLV_TYPE_BUILD_TUPLE            = TLV_META_TYPE_STRING  | 1049

# Environment
TLV_TYPE_ENV_VARIABLE       = TLV_META_TYPE_STRING  | 1100
TLV_TYPE_ENV_VALUE          = TLV_META_TYPE_STRING  | 1101
TLV_TYPE_ENV_GROUP          = TLV_META_TYPE_GROUP   | 1102

DELETE_KEY_FLAG_RECURSIVE   = (1 << 0)

# Process
TLV_TYPE_BASE_ADDRESS       = TLV_META_TYPE_QWORD   | 2000
TLV_TYPE_ALLOCATION_TYPE    = TLV_META_TYPE_UINT    | 2001
TLV_TYPE_PROTECTION         = TLV_META_TYPE_UINT    | 2002
TLV_TYPE_PROCESS_PERMS      = TLV_META_TYPE_UINT    | 2003
TLV_TYPE_PROCESS_MEMORY     = TLV_META_TYPE_RAW     | 2004
TLV_TYPE_ALLOC_BASE_ADDRESS = TLV_META_TYPE_QWORD   | 2005
TLV_TYPE_MEMORY_STATE       = TLV_META_TYPE_UINT    | 2006
TLV_TYPE_MEMORY_TYPE        = TLV_META_TYPE_UINT    | 2007
TLV_TYPE_ALLOC_PROTECTION   = TLV_META_TYPE_UINT    | 2008
TLV_TYPE_PID                = TLV_META_TYPE_UINT    | 2300
TLV_TYPE_PROCESS_NAME       = TLV_META_TYPE_STRING  | 2301
TLV_TYPE_PROCESS_PATH       = TLV_META_TYPE_STRING  | 2302
TLV_TYPE_PROCESS_GROUP      = TLV_META_TYPE_GROUP   | 2303
TLV_TYPE_PROCESS_FLAGS      = TLV_META_TYPE_UINT    | 2304
TLV_TYPE_PROCESS_ARGUMENTS  = TLV_META_TYPE_STRING  | 2305
TLV_TYPE_PROCESS_ARCH       = TLV_META_TYPE_UINT    | 2306
TLV_TYPE_PARENT_PID         = TLV_META_TYPE_UINT    | 2307
TLV_TYPE_PROCESS_SESSION    = TLV_META_TYPE_UINT    | 2308
TLV_TYPE_PROCESS_ARCH_NAME  = TLV_META_TYPE_STRING  | 2309

TLV_TYPE_DRIVER_ENTRY       = TLV_META_TYPE_GROUP   | 2320
TLV_TYPE_DRIVER_BASENAME    = TLV_META_TYPE_STRING  | 2321
TLV_TYPE_DRIVER_FILENAME    = TLV_META_TYPE_STRING  | 2322

TLV_TYPE_IMAGE_FILE         = TLV_META_TYPE_STRING  | 2400
TLV_TYPE_IMAGE_FILE_PATH    = TLV_META_TYPE_STRING  | 2401
TLV_TYPE_PROCEDURE_NAME     = TLV_META_TYPE_STRING  | 2402
TLV_TYPE_PROCEDURE_ADDRESS  = TLV_META_TYPE_QWORD   | 2403
TLV_TYPE_IMAGE_BASE         = TLV_META_TYPE_QWORD   | 2404
TLV_TYPE_IMAGE_GROUP        = TLV_META_TYPE_GROUP   | 2405
TLV_TYPE_IMAGE_NAME         = TLV_META_TYPE_STRING  | 2406

TLV_TYPE_THREAD_ID          = TLV_META_TYPE_UINT    | 2500
TLV_TYPE_THREAD_PERMS       = TLV_META_TYPE_UINT    | 2502
TLV_TYPE_EXIT_CODE          = TLV_META_TYPE_UINT    | 2510
TLV_TYPE_ENTRY_POINT        = TLV_META_TYPE_QWORD   | 2511
TLV_TYPE_ENTRY_PARAMETER    = TLV_META_TYPE_QWORD   | 2512
TLV_TYPE_CREATION_FLAGS     = TLV_META_TYPE_UINT    | 2513

TLV_TYPE_REGISTER_NAME      = TLV_META_TYPE_STRING  | 2540
TLV_TYPE_REGISTER_SIZE      = TLV_META_TYPE_UINT    | 2541
TLV_TYPE_REGISTER_VALUE_32  = TLV_META_TYPE_UINT    | 2542
TLV_TYPE_REGISTER           = TLV_META_TYPE_GROUP   | 2550

##
#
# Ui
#
##
TLV_TYPE_IDLE_TIME                         = TLV_META_TYPE_UINT   | 3000
TLV_TYPE_KEYS_DUMP                         = TLV_META_TYPE_STRING | 3001
TLV_TYPE_DESKTOP_SCREENSHOT                = TLV_META_TYPE_RAW    | 3002
TLV_TYPE_DESKTOP_SWITCH                    = TLV_META_TYPE_BOOL   | 3003
TLV_TYPE_DESKTOP                           = TLV_META_TYPE_GROUP  | 3004
TLV_TYPE_DESKTOP_SESSION                   = TLV_META_TYPE_UINT   | 3005
TLV_TYPE_DESKTOP_STATION                   = TLV_META_TYPE_STRING | 3006
TLV_TYPE_DESKTOP_NAME                      = TLV_META_TYPE_STRING | 3007
TLV_TYPE_DESKTOP_SCREENSHOT_QUALITY        = TLV_META_TYPE_UINT   | 3008
TLV_TYPE_DESKTOP_SCREENSHOT_PE32DLL_BUFFER = TLV_META_TYPE_RAW    | 3010
TLV_TYPE_DESKTOP_SCREENSHOT_PE64DLL_BUFFER = TLV_META_TYPE_RAW    | 3012
TLV_TYPE_KEYSCAN_TRACK_ACTIVE_WINDOW       = TLV_META_TYPE_BOOL   | 3013
TLV_TYPE_KEYS_SEND                         = TLV_META_TYPE_STRING | 3014
TLV_TYPE_MOUSE_ACTION                      = TLV_META_TYPE_UINT   | 3015
TLV_TYPE_MOUSE_X                           = TLV_META_TYPE_UINT   | 3016
TLV_TYPE_MOUSE_Y                           = TLV_META_TYPE_UINT   | 3017
TLV_TYPE_KEYEVENT_SEND                     = TLV_META_TYPE_RAW    | 3018

##
#
# Event Log
#
##
TLV_TYPE_EVENT_SOURCENAME   = TLV_META_TYPE_STRING  | 4000
TLV_TYPE_EVENT_HANDLE       = TLV_META_TYPE_QWORD   | 4001
TLV_TYPE_EVENT_NUMRECORDS   = TLV_META_TYPE_UINT    | 4002

TLV_TYPE_EVENT_READFLAGS    = TLV_META_TYPE_UINT    | 4003
TLV_TYPE_EVENT_RECORDOFFSET = TLV_META_TYPE_UINT    | 4004

TLV_TYPE_EVENT_RECORDNUMBER = TLV_META_TYPE_UINT    | 4006
TLV_TYPE_EVENT_TIMEGENERATED= TLV_META_TYPE_UINT    | 4007
TLV_TYPE_EVENT_TIMEWRITTEN  = TLV_META_TYPE_UINT    | 4008
TLV_TYPE_EVENT_ID           = TLV_META_TYPE_UINT    | 4009
TLV_TYPE_EVENT_TYPE         = TLV_META_TYPE_UINT    | 4010
TLV_TYPE_EVENT_CATEGORY     = TLV_META_TYPE_UINT    | 4011
TLV_TYPE_EVENT_STRING       = TLV_META_TYPE_STRING  | 4012
TLV_TYPE_EVENT_DATA         = TLV_META_TYPE_RAW     | 4013

##
#
# Power
#
##
TLV_TYPE_POWER_FLAGS        = TLV_META_TYPE_UINT    | 4100
TLV_TYPE_POWER_REASON       = TLV_META_TYPE_UINT    | 4101

##
#
# Webcam
#
##

TLV_TYPE_WEBCAM_IMAGE       = TLV_META_TYPE_RAW     | (TLV_EXTENSIONS + 1)
TLV_TYPE_WEBCAM_INTERFACE_ID= TLV_META_TYPE_UINT    | (TLV_EXTENSIONS + 2)
TLV_TYPE_WEBCAM_QUALITY     = TLV_META_TYPE_UINT    | (TLV_EXTENSIONS + 3)
TLV_TYPE_WEBCAM_NAME        = TLV_META_TYPE_STRING  | (TLV_EXTENSIONS + 4)

##
#
# Audio
#
##

TLV_TYPE_AUDIO_DURATION       = TLV_META_TYPE_UINT    | (TLV_EXTENSIONS + 10)
TLV_TYPE_AUDIO_DATA           = TLV_META_TYPE_RAW     | (TLV_EXTENSIONS + 11)
TLV_TYPE_AUDIO_INTERFACE_ID   = TLV_META_TYPE_UINT    | (TLV_EXTENSIONS + 12)
TLV_TYPE_AUDIO_INTERFACE_NAME = TLV_META_TYPE_STRING  | (TLV_EXTENSIONS + 13)

end; end; end; end; end

