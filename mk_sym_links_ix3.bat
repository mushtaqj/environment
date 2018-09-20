
set ix3_home=D:\Development\ix3_servers\R8.2_OJ_SERVER\instance\Cosmic\
set modules_folder=%ix3_home%\modules\se\cambio\referral\referral-jboss-module\main\
set cosmic_ejb_ear=%ix3_home%\standalone\deployments\cosmic-ejb.ear\
set project_root=D:\Development\Projects\Internal\Dev\R82_referral_Dev\


REM DTO
del %modules_folder%\referral-dto-impl.jar
del %modules_folder%\referral-dto-api.jar

mklink %modules_folder%\referral-dto-impl.jar %project_root%\dto\impl\target\referral-dto-impl.jar 
mklink %modules_folder%\referral-dto-api.jar %project_root%\dto\api\target\referral-dto-api.jar 

REM COMMON
del %modules_folder%\referral-common-api.jar
del %modules_folder%\referral-ejb-common.jar

mklink %modules_folder%\referral-common-api.jar %project_root%\common\api\target\referral-common-api.jar
mklink %modules_folder%\referral-ejb-common.jar %project_root%\ejb\common\target\referral-ejb-common.jar

REM Server
del %modules_folder%\referral-server-api.jar
del %modules_folder%\referral-server-impl.jar
del %modules_folder%\referral-server-spi.jar

mklink %modules_folder%\referral-server-api.jar %project_root%\server\api\target\referral-server-api.jar
mklink %modules_folder%\referral-server-impl.jar %project_root%\server\impl\target\referral-server-impl.jar
mklink %modules_folder%\referral-server-spi.jar %project_root%\server\spi\target\referral-server-spi.jar

REM Service
del %modules_folder%\referral-service-api.jar
del %modules_folder%\referral-service-impl.jar
del %modules_folder%\referral-service-spi.jar

mklink %modules_folder%\referral-service-api.jar %project_root%\service\api\target\referral-service-api.jar
mklink %modules_folder%\referral-service-impl.jar %project_root%\service\impl\target\referral-service-impl.jar
mklink %modules_folder%\referral-service-spi.jar %project_root%\service\spi\target\referral-service-spi.jar

REM 
del %cosmic_ejb_ear%\se.cambio.referral-referral-ejb-server.jar
mklink %cosmic_ejb_ear%\se.cambio.referral-referral-ejb-server.jar %project_root%\ejb\server\target\referral-ejb-server.jar