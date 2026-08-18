@echo off
chcp 65001 >nul
set "HERE=%~dp0"
copy /Y "%HERE%补丁文件\PokemonEmerald-Windows_p.no-species-rename.pak" "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" >nul && echo 已切换为“宝可梦种族名保留英文”版本。 || echo 复制失败，请先把补丁解压到游戏根目录并退出游戏。
pause
