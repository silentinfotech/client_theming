set( APPLICATION_NAME       "Griddrive" )
set( APPLICATION_SHORTNAME  "Griddrive" )
set( APPLICATION_EXECUTABLE "griddrive" )
set( APPLICATION_DOMAIN     "portal.griddrive.net" )
set( APPLICATION_VENDOR     "Grid365" )
set( APPLICATION_UPDATE_URL "https://portal.griddrive.net" CACHE string "URL for updater" )
set( APPLICATION_ICON_NAME  "Griddrive" )

set( THEME_CLASS            "GridDriveTheme" )
set( APPLICATION_REV_DOMAIN "com.griddrive.desktopclient" )
set( WIN_SETUP_BITMAP_PATH  "${OEM_THEME_DIR}/win" )

set( MAC_INSTALLER_BACKGROUND_FILE "${OEM_THEME_DIR}/osx/installer-background.png" CACHE STRING "The MacOSX installer background image")

set( THEME_INCLUDE          "${OEM_THEME_DIR}/griddrivetheme.h" )
# set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt )

option( WITH_CRASHREPORTER "Build crashreporter" OFF )
set( CRASHREPORTER_SUBMIT_URL "https://portal.griddrive.net" CACHE string "URL for crash reporter" )
set( CRASHREPORTER_ICON ":/owncloud-icon.png" )

if(CPACK_GENERATOR MATCHES "NSIS")
    SET( CPACK_PACKAGE_ICON  "{OEM_THEME_DIR}/win/installer.ico" ) # Set installer icon
endif(CPACK_GENERATOR MATCHES "NSIS")
