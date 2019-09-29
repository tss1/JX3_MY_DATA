::just another f*ck bat
@echo off
echo =================================
echo Step.1 请选择上传平台
echo =================================
echo 回复数字即可
echo 1:Github
echo 2:阿里云（aliyun）
echo 3:码云（gitee）
echo 4:全部
set /p __platform=

::如果用户以前通过网页修改过，待会幺蛾子很多
echo =================================
echo Step.2 校对旧数据
echo =================================
echo 请稍等...
if %__platform% == 1 (git pull github master)
if %__platform% == 2 (git pull aliyun master)
if %__platform% == 3 (git pull gitee master)

if %__platform% == 4 (git pull github master)
if %__platform% == 4 (git pull aliyun master)
if %__platform% == 4 (git pull gitee master)
echo √ 校对完成
echo =================================
echo Step.3 准备上传
echo =================================
echo 请稍等...
git add *
git commit -a -m "update"
::未知异常多，统一强制处理
if %__platform% == 1 (git push github master -f)
if %__platform% == 2 (git push aliyun master -f)
if %__platform% == 3 (git push gitee master -f)

if %__platform% == 4 (git push github master -f)
if %__platform% == 4 (git push aliyun master -f)
if %__platform% == 4 (git push gitee master -f)
echo √ 上传成功
echo =================================
echo 按任意键关闭
echo =================================
pause
