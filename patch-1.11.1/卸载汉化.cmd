@echo off
chcp 65001 >nul
set "HERE=%~dp0"
del /Q "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" 2>nul
del /Q "%HERE%PokemonEmerald\Content\Localization\Game\en\Game.locres" 2>nul
echo 已删除补丁文件，游戏恢复英文原版。
pause
