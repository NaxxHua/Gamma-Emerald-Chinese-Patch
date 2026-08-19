# Pokemon Gamma Emerald（伽马绿宝石）简体中文补丁

**汉化：花水月 FlowaterMoon** ｜ ★ 花水月FlowaterMoon 汉化 ★ 转载请注明出处，禁止商用

游戏本体（官方，免费）：<https://undreamedpanic.itch.io/gamma-emerald-ea>

## 下载

| 游戏版本 | 补丁 |
|---|---|
| Early Access **Build 1.12.1**（当前最新） | [Releases](../../releases/latest) 里的 `v2.3-for-1.12.1.zip`（[直链](../../releases/download/v2.3/v2.3-for-1.12.1.zip)），或直接使用仓库中的 [`patch-1.12.1/`](patch-1.12.1/) |
| Build 1.11.1 | `v2.2-for-1.11.1.zip`（[直链](../../releases/download/v2.2/v2.2-for-1.11.1.zip)），或 [`patch-1.11.1/`](patch-1.11.1/) |
| 早期构建 Build 1.0.0（2026-08-14） | `v2.2-for-1.0.0.zip`（[直链](../../releases/download/v2.2/v2.2-for-1.0.0.zip)），或 [`patch-1.0.0/`](patch-1.0.0/) |

**补丁版本必须与游戏版本对应**，装错版本会闪退。其他版本请等待更新。

## 安装

1. 完全退出游戏。
2. 把补丁文件夹内所有内容解压到游戏根目录（和 `PokemonEmerald.exe` 同一层）。
3. 双击 `安装汉化（放到游戏根目录后双击）.cmd`。
   - 手动安装：把 `补丁文件\PokemonEmerald-Windows_p.pak` 复制到 `PokemonEmerald\Content\Paks\`；
     把 `补丁文件\Game.locres` 复制到 `PokemonEmerald\Content\Localization\Game\en\`（没有该文件夹就新建）。
4. 启动游戏。
5. 进游戏仍是英文？双击 `检查安装.cmd`，把生成的 `汉化检查结果.txt` 发到 Issues 或评论区。常见原因：解压位置不对（必须与 `PokemonEmerald.exe` 同一层，注意游戏目录里另有一个 `PokemonEmerald` 文件夹，别放进那里面）、游戏没有完全退出、手动复制时文件夹名拼错。

### 两个版本
- **默认版**：宝可梦种族名也是中文（木守宫、蛇纹熊……）。
- **保守版**：宝可梦种族名保留英文，其余相同。若默认版出现选初始宝可梦 / 进化 / 存档异常，双击 `切换-宝可梦名保留英文.cmd`。

### 卸载
双击 `卸载汉化.cmd`，或手动删除上面两个文件。存档在 `%LOCALAPPDATA%\PokemonEmerald`，不受影响。

## 更新记录
- **v2.3**（2026-08-19）：适配 Build 1.12.1。**补丁必须与游戏版本一致**：旧补丁装在新版游戏上会因地图资源不匹配导致遇怪/领图鉴时闪退。安装脚本新增版本校验（按主 pak 大小判断）。
- **v2.2**（2026-08-19）：修正 No. 误译与一处宝可梦名误译；招式说明中文化；宝可梦备注（性格效果、蛋孵化提示）汉化；安装脚本改为 GBK 编码修复双击闪退；新增 `检查安装.cmd` 诊断脚本。
- **v2.1**（2026-08-18）：首个公开版本，适配 Build 1.11.1 / 1.0.0。

## 汉化内容
- 8600 余条游戏文本全部汉化（对话、剧情、图鉴、道具、战斗提示、菜单）；宝可梦 / 招式 / 特性 / 道具使用官方译名。
- 20 个游戏字体追加中文字形，英文保持原样不变形。
- 招式名、宝可梦种族名（默认版）为官方中文。

## 版权与声明
- 本补丁为非官方、非营利的同人汉化，仅供学习交流使用，禁止用于任何商业用途；禁止未经许可的二次打包、售卖或去除署名后转载。
- 补丁仅包含汉化所需的字体、词库和少量改名后的资源文件，不包含游戏本体；游戏本体请从作者 UndreamedPanic 的官方页面获取：<https://undreamedpanic.itch.io/gamma-emerald-ea>
- Pokémon / 宝可梦 及相关角色、名称、图像的著作权与商标权归 Nintendo / Creatures Inc. / GAME FREAK inc. 所有；Pokemon Gamma Emerald 归其作者 UndreamedPanic 所有。本补丁与上述权利方均无关联，如权利方要求将立即撤下。
- 汉化文本 © 2026 花水月FlowaterMoon，并沿用了以下开放资源，特此致谢：
  - 巧月十八 —— Demo 3.1 汉化补丁的部分人工译文
  - pokeemerald 中文项目（rh-hideout-chinese）—— 原作剧情译文
  - 文泉驿点阵宋（WenQuanYi Bitmap Song，GPL 含字体例外）—— 中文字形
  - Pixel Operator、Pokemon Classic 等原游戏字体的作者
- 使用本补丁产生的任何问题（包括存档异常）由使用者自行承担，请安装前备份存档。

—— 花水月FlowaterMoon 汉化
