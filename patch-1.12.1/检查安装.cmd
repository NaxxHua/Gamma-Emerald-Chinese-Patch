@echo off
setlocal
set "HERE=%~dp0"
set "OUT=%HERE%汉化检查结果.txt"
> "%OUT%" echo 伽马绿宝石汉化 安装检查  %date% %time%
>> "%OUT%" echo 目录: %HERE%
call :chk "%HERE%PokemonEmerald.exe"
call :chk "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows.pak"
call :chk "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak"
call :chk "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres"
>> "%OUT%" echo.
>> "%OUT%" echo --- Paks 目录内容 ---
>> "%OUT%" dir /B "%HERE%PokemonEmerald\Content\Paks" 2>&1
>> "%OUT%" echo --- Localization 目录内容 ---
>> "%OUT%" dir /S /B "%HERE%PokemonEmerald\Content\Localization" 2>&1
>> "%OUT%" echo.
>> "%OUT%" echo --- 游戏日志中与补丁有关的行 ---
if exist "%HERE%PokemonEmerald\Saved\Logs\PokemonEmerald.log" (
  >> "%OUT%" findstr /I /C:"_p.pak" /C:"LocRes" /C:"Game.locres" /C:"used for the language" /C:"Build 1." "%HERE%PokemonEmerald\Saved\Logs\PokemonEmerald.log"
) else (
  >> "%OUT%" echo 未找到 PokemonEmerald\Saved\Logs\PokemonEmerald.log（游戏是否运行过？）
)
type "%OUT%"
echo.
echo 以上内容已保存到 %OUT%，请把这个文件发给汉化者。
pause
goto :eof
:chk
if exist %1 (>> "%OUT%" echo [存在] %~1  ^(%~z1 字节^)) else (>> "%OUT%" echo [缺失] %~1)
goto :eof
