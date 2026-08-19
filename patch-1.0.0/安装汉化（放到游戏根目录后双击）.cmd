@echo off
setlocal
set "HERE=%~dp0"
set "EXPECT=1706484919"
set "VER=Build 1.0.0"
echo ==============================================
echo  伽马绿宝石 简体中文补丁 - 安装  （适配 %VER%）
echo ==============================================
if exist "%HERE%PokemonEmerald.exe" goto :hasexe
echo [错误] 当前目录没有 PokemonEmerald.exe
echo 请把补丁压缩包里的全部内容解压到游戏根目录（和 PokemonEmerald.exe 同一层），再双击本脚本。
echo 当前目录: %HERE%
goto :end
:hasexe
if exist "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak" goto :haspak
echo [错误] 未找到 PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak，请确认这是游戏目录。
goto :end
:haspak
if exist "%HERE%补丁文件\PokemonEmerald-Windows_p.pak" goto :haspatch
echo [错误] 找不到 补丁文件\PokemonEmerald-Windows_p.pak
echo 请把“补丁文件”文件夹和本脚本一起解压到游戏根目录。
goto :end
:haspatch
for %%F in ("%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak") do set "MAINSIZE=%%~zF"
if "%MAINSIZE%"=="%EXPECT%" goto :sizeok
echo [警告] 你的游戏主文件大小为 %MAINSIZE% 字节，不是本补丁适配的 %VER%（应为 %EXPECT% 字节）。
echo        版本不对会导致遇怪或领图鉴时闪退。请下载与你游戏版本对应的补丁。
echo        参考：1.12.1 = 1643801520，1.11.1 = 1712134231，1.0.0 = 1706484919
echo        如仍要继续安装请按任意键，否则直接关闭本窗口。
pause >nul
:sizeok
if not exist "%HERE%PokemonEmerald\Content\Localization\Game\en" mkdir "%HERE%PokemonEmerald\Content\Localization\Game\en"
copy /Y "%HERE%补丁文件\PokemonEmerald-Windows_p.pak" "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" >nul
if errorlevel 1 goto :copyfail
copy /Y "%HERE%补丁文件\Game.locres" "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres" >nul
if errorlevel 1 goto :copyfail
echo.
echo [完成] 已安装以下两个文件：
for %%F in ("%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres") do echo   %%~fF  %%~zF 字节
echo.
echo 现在启动游戏即可显示中文。
echo 若仍是英文，请运行“检查安装.cmd”并把生成的 汉化检查结果.txt 发给汉化者。
echo 宝可梦种族名想保留英文，运行“切换-宝可梦名保留英文.cmd”。
goto :end
:copyfail
echo [错误] 复制失败，请确认游戏已完全退出、目录可写。
:end
echo.
pause
