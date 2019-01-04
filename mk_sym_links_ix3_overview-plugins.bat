REM Sets up an ix3 server symlinks which can be used without triggering repackagings

set module_name=overviewplugins
set module_parent=overviews
set ix3_home=D:\Development\Jboss\\R82_OJ_Server\instance\Cosmic\
set modules_folder=%ix3_home%\modules\se\cambio\%module_parent%\%module_name%-jboss-module\main\
set cosmic_ejb_ear=%ix3_home%\standalone\deployments\cosmic-ejb.ear\
set project_root=D:\Development\Projects\Internal\Modules\%module_name%


REM DTO
del %modules_folder%\%module_name%-dto-impl.jar
del %modules_folder%\%module_name%-dto-api.jar

mklink %modules_folder%\%module_name%-dto-impl.jar %project_root%\dto\impl\target\%module_name%-dto-impl.jar
mklink %modules_folder%\%module_name%-dto-api.jar %project_root%\dto\api\target\%module_name%-dto-api.jar

REM COMMON
del %modules_folder%\%module_name%-common-api.jar
del %modules_folder%\%module_name%-ejb-common.jar

mklink %modules_folder%\%module_name%-common-api.jar %project_root%\common\api\target\%module_name%-common-api.jar
mklink %modules_folder%\%module_name%-ejb-common.jar %project_root%\ejb\common\target\%module_name%-ejb-common.jar

REM Server
del %modules_folder%\%module_name%-server-api.jar
del %modules_folder%\%module_name%-server-impl.jar
del %modules_folder%\%module_name%-server-spi.jar

mklink %modules_folder%\%module_name%-server-api.jar %project_root%\server\api\target\%module_name%-server-api.jar
mklink %modules_folder%\%module_name%-server-impl.jar %project_root%\server\impl\target\%module_name%-server-impl.jar
mklink %modules_folder%\%module_name%-server-spi.jar %project_root%\server\spi\target\%module_name%-server-spi.jar

REM Service
del %modules_folder%\%module_name%-service-api.jar
del %modules_folder%\%module_name%-service-impl.jar
del %modules_folder%\%module_name%-service-spi.jar

mklink %modules_folder%\%module_name%-service-api.jar %project_root%\service\api\target\%module_name%-service-api.jar
mklink %modules_folder%\%module_name%-service-impl.jar %project_root%\service\impl\target\%module_name%-service-impl.jar
mklink %modules_folder%\%module_name%-service-spi.jar %project_root%\service\spi\target\%module_name%-service-spi.jar

REM EJB
del %cosmic_ejb_ear%\se.cambio.%module_name%-%module_name%-ejb-server.jar
mklink %cosmic_ejb_ear%\se.cambio.%module_name%-%module_name%-ejb-server.jar %project_root%\ejb\server\target\%module_name%-ejb-server.jar
