@echo off
setlocal
set "HERE=%~dp0"
echo ==============================================
echo  伽马绿宝石 简体中文补丁 - 安装
echo ==============================================
if not exist "%HERE%PokemonEmerald.exe" (
  echo [错误] 当前目录没有 PokemonEmerald.exe
  echo 请把补丁压缩包里的全部内容解压到游戏根目录（和 PokemonEmerald.exe 同一层），再双击本脚本。
  echo 当前目录: %HERE%
  goto :end
)
if not exist "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak" (
  echo [错误] 未找到 PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak，请确认这是游戏目录。
  goto :end
)
if not exist "%HERE%补丁文件\PokemonEmerald-Windows_p.pak" (
  echo [错误] 找不到 补丁文件\PokemonEmerald-Windows_p.pak，请把“补丁文件”文件夹和本脚本一起解压到游戏根目录。
  goto :end
)
tasklist /FI "IMAGENAME eq PokemonEmerald-Win64-Shipping.exe" 2>nul | find /I "PokemonEmerald" >nul && echo [提示] 游戏似乎正在运行，请先完全退出游戏再安装。
if not exist "%HERE%PokemonEmerald\Content\Localization\Game\en" mkdir "%HERE%PokemonEmerald\Content\Localization\Game\en"
copy /Y "%HERE%补丁文件\PokemonEmerald-Windows_p.pak" "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" >nul
if errorlevel 1 ( echo [错误] 复制 pak 失败，请确认游戏已退出、目录可写。& goto :end )
copy /Y "%HERE%补丁文件\Game.locres" "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres" >nul
if errorlevel 1 ( echo [错误] 复制 Game.locres 失败。& goto :end )
echo.
echo [完成] 已安装以下两个文件：
for %%F in ("%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres") do echo   %%~fF  (%%~zF 字节)
echo.
echo 现在启动游戏即可显示中文。若仍是英文，请运行“检查安装.cmd”并把生成的 汉化检查结果.txt 发给汉化者。
echo （宝可梦种族名想保留英文，运行“切换-宝可梦名保留英文.cmd”）
:end
echo.
pause
