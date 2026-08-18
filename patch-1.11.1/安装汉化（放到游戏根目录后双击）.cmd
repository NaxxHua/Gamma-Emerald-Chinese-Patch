@echo off
chcp 65001 >nul
setlocal
set "HERE=%~dp0"
set "GAME=%HERE%"
if not exist "%GAME%PokemonEmerald.exe" (
  echo 没有在当前目录找到 PokemonEmerald.exe。
  echo 请把整个补丁文件夹里的内容解压到游戏根目录（和 PokemonEmerald.exe 同一层），再双击本脚本。
  pause
  exit /b 1
)
if not exist "%GAME%PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak" (
  echo 未找到 PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak，请确认游戏版本。
  pause
  exit /b 1
)
mkdir "%GAME%PokemonEmerald\Content\Localization\Game\en" 2>nul
copy /Y "%HERE%补丁文件\PokemonEmerald-Windows_p.pak" "%GAME%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" >nul || goto :fail
copy /Y "%HERE%补丁文件\Game.locres" "%GAME%PokemonEmerald\Content\Localization\Game\en\Game.locres" >nul || goto :fail
echo 安装完成！启动游戏即可看到中文。
echo （如需宝可梦种族名保留英文的保守版本，请运行“切换-宝可梦名保留英文.cmd”）
pause
exit /b 0
:fail
echo 复制失败，请确认游戏已完全退出。
pause
exit /b 1
