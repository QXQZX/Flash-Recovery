ECHO OFF
TITLE С��MIX2 recovery�滻����
color 8f
:STARTS
CLS
ECHO.   С��MIX2 Recovery�滻����  ʱ�䣺%DATE% %TIME:~0,8%  ��������ϧ
ECHO.
ECHO. =============================================================================
ECHO. ע�⣺
ECHO.      1.��ȷ���Ѿ���װ����������USB����ģʽ��
ECHO.      
ECHO.      2.���б�����ʱ��ر�91���֣��㶹�Եȵ��ֻ����������
ECHO.   
ECHO.      3.�㽫�ڹٷ�ԭ�桢TWRP�������ͬrecovery�������л����ٷ�ԭ��Ϊ�ٷ�
ECHO.        ��׿8�����ˢ������ȡ��δ���κθĶ���TWRP��Ϊ����3.2.1Դ����룬֧��
ECHO.        ��׿8.0��
ECHO.      4.ѡ���������ǰ����ȷ���ֻ��ѽ��������ֶ�����fastbootģʽ(�ػ�״̬ʱ
ECHO.        ��ס�ֻ������¼����ٰ�����������
ECHO. =============================================================================
ECHO.
ECHO.      ��ѡ����Ĳ���?
ECHO.
ECHO.           1.ˢ��ٷ�recovery                2.ˢ������TWRP_recovery
ECHO.
ECHO.
ECHO.           0.�˳�   
ECHO.                              
ECHO.                                               
ECHO. =============================================================================
:CHO
set choice=
set /p choice= �����Ӧ���֣�Ȼ�󰴻س���:
if /i "%choice%"=="1" goto Official
if /i "%choice%"=="2" goto TWRP
if /i "%choice%"=="0" goto EXT
echo ѡ����Ч������������
echo.
pause
GOTO STARTS

:Official
CLS
ECHO ***************************************************************************
ECHO *        ���һֱ���ڡ�waiting for device��                               *
ECHO *        ���ڴ�ʱ���㶹�Ի����ֻ���������                                 *
ECHO *        ����ʾ���ز���װ����                                             *
ECHO ***************************************************************************
ECHO. ˢдrecovery...
fastboot flash recovery Official_recovery.img
ECHO.
ECHO.
ECHO. ˢд�ٷ�recovery��ɣ������������...
ECHO. 
ECHO.
ECHO.
pause
GOTO STARTS
:TWRP
CLS
ECHO ***************************************************************************
ECHO *        ���һֱ���ڡ�waiting for device��                               *
ECHO *        ���ڴ�ʱ���㶹�Ի����ֻ���������                                 *
ECHO *        ����ʾ���ز���װ����                                             *
ECHO ***************************************************************************
ECHO. ˢдrecovery...
fastboot flash recovery tw_recovery.img
ECHO.
ECHO.
ECHO. ˢдTWRP_recovery��ɣ�������������ֻ���recovery...
ECHO.
ECHO.
pause
fastboot boot tw_recovery.img
GOTO STARTS

:EXIT
exit
