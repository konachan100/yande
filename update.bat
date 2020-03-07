@echo[
@echo[
@echo ================================================================================
@set cur_build_time=%date% %time%
@echo %cur_build_time%
git pull
if not exist "src" git clone -b yande git@github.com:konachan100/konachan100-src.git src
cd src
call gen.bat
cd ..
git diff --stat
git add *
git commit -m "update content"
git push