::just another f*ck bat
@echo off
echo =================================
echo Step.1 账号设置
echo =================================
echo 请输入用户名
set /p __username=
git config --global user.name %__username%
echo 请输入邮箱
set /p __email=
git config --global user.email %__email%
echo =================================
echo Step.2 初始化
echo =================================
echo 请稍等...
git clone https://code.aliyun.com/tinymins/JX3_MY_DATA.git JX3_MY_DATA
cd JX3_MY_DATA
echo √ 初始化完成
echo =================================
echo Step.3 请选择使用的平台
echo =================================
echo 回复数字即可
echo 1:Github
echo 2:阿里云（aliyun）
echo 3:码云（gitee）
echo 4:全部
set /p __platform=
if %__platform% == 1 (git remote add github git@github.com:%__username%/JX3_MY_DATA.git)
if %__platform% == 2 (git remote add aliyun git@code.aliyun.com:%__username%/JX3_MY_DATA.git)
if %__platform% == 3 (git remote add gitee git@gitee.com:%__username%/JX3_MY_DATA.git)

if %__platform% == 4 (git remote add github git@github.com:%__username%/JX3_MY_DATA.git)
if %__platform% == 4 (git remote add aliyun git@code.aliyun.com:%__username%/JX3_MY_DATA.git)
if %__platform% == 4 (git remote add gitee git@gitee.com:%__username%/JX3_MY_DATA.git)
echo √ 设置完成
echo =================================
echo 按任意键关闭
echo =================================
pause
