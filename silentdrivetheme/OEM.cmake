set( APPLICATION_NAME       "SilentDrive" )
set( APPLICATION_SHORTNAME  "Silentdrive" )
set( APPLICATION_EXECUTABLE "silentdrive" )
set( APPLICATION_DOMAIN     "silentinfotech.com" )
set( APPLICATION_VENDOR     "SilentInfotech" )
set( APPLICATION_UPDATE_URL "https://silentinfotech.com" CACHE string "URL for updater" )
set( APPLICATION_ICON_NAME  "SilentDrive" )

set( THEME_CLASS            "SilentDriveTheme" )
set( APPLICATION_REV_DOMAIN "com.silentdrive.desktopclient" )
set( WIN_SETUP_BITMAP_PATH  "${OEM_THEME_DIR}/win" )

set( MAC_INSTALLER_BACKGROUND_FILE "${OEM_THEME_DIR}/osx/installer-background.png" CACHE STRING "The MacOSX installer background image")

set( THEME_INCLUDE          "${OEM_THEME_DIR}/silentdrivetheme.h" )
# set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt )

option( WITH_CRASHREPORTER "Build crashreporter" OFF )
set( CRASHREPORTER_SUBMIT_URL "https://silentinfotech.com" CACHE string "URL for crash reporter" )
set( CRASHREPORTER_ICON ":/owncloud-icon.png" )

if(CPACK_GENERATOR MATCHES "NSIS")
    SET( CPACK_PACKAGE_ICON  "{OEM_THEME_DIR}/win/installer.ico" ) # Set installer icon
endif(CPACK_GENERATOR MATCHES "NSIS")
