@echo off
set "HERE=%~dp0"
if not exist "%HERE%PokemonEmerald.exe" ( echo 请先把补丁解压到游戏根目录（和 PokemonEmerald.exe 同一层）再运行。& pause & exit /b 1 )
copy /Y "%HERE%补丁文件\PokemonEmerald-Windows_p.no-species-rename.pak" "%HERE%PokemonEmerald\Content\Paks\PokemonEmerald-Windows_p.pak" >nul && echo 已切换为“宝可梦种族名保留英文”版本。|| echo 复制失败，请先退出游戏。
pause
