# 快速上手 / Quick start

[返回首页 / Home](../README.md)

## 1. 安装 / Install

1. 在仓库点击 **Code → Download ZIP**，解压。 / Download and extract the repository ZIP.
2. 打开用户目录下的 `.codex/skills`。Windows 常见位置：`%USERPROFILE%\.codex\skills`。 / Open the skills directory under your user profile.
3. 备份已存在的同名技能及共享文件，再复制下面两个目录。不要把仓库整个套进技能目录。 / Back up existing versions, then copy both folders below—not the entire repository.
4. 重新打开 Codex 任务；若未识别则重启应用。 / Open a new task; restart the app if needed.

```text
.codex/
└── skills/
    ├── douyin-mirror-outfit-storyboard/
    │   ├── SKILL.md
    │   ├── agents/
    │   └── references/
    └── _shared/
        └── install-video-skill-constraints.md
```

仓库已有 `install.ps1`，运行前应阅读它。它会覆盖同名技能及共享文件，不自动备份；推荐首次使用者按上述手动安装。  
The existing installer overwrites matching skill/shared files without automatic backups. Read it before running; manual installation is recommended for first-time users.

```powershell
# 在解压后的仓库目录 / From the extracted repository
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

若执行策略受组织管理，请遵循管理员流程，不绕过管理限制。  
Follow administrator procedures on managed devices.

## 2. 准备素材 / Prepare references

| 素材 / Asset | 要求 / Requirement |
|---|---|
| 商品 / Product | 清晰正面与必要细节；指出哪件是商品 / Clear front view and useful details; identify the hero |
| 人物 / Person | 成年人物，脸部清楚；头巾参考保留 / Adult, clear face; preserve referenced headwear |
| 背景 / Background | 所需房间和光线 / Intended room and light |
| 已有母版 / Existing model image | 可选；先检查，错图不能当准确首帧 / Optional; review before using as a start frame |
| 分镜 / Storyboard | 可选；只管动作构图，不覆盖原商品 / Optional; motion/framing, not product authority |

只有商品图也能设计原创成年人物，但不能说“锁定了未提供的人物”。没有背景图只能设计场景，不能声称复刻背景。  
With product-only inputs, an original adult model can be designed. Missing identity or room references cannot be called “locked.”

## 3. 发出请求 / Send your request

复制[首页完整指令](../README.md)，按照真实上传顺序改编号。不要只在文字中写 @，却没有上传或绑定对应素材。  
Copy the homepage command and adjust the order. Typing @ alone does not upload or bind a file.

## 4. 检查，再继续 / Review, then continue

先看脸、商品、覆盖、鞋子、空间和手机持握。发现错误，指出具体位置，例如：  
Check identity, clothing, coverage, shoes, room and phone hand. Report precise errors:

```text
先不要生成分镜。裤子出现原图没有的花纹。
仅修正裤面纹理，保持原来的中蓝色、松紧腰、两条白色长抽绳及阔腿比例。
人物、鞋子和背景不变。修正后重新检查。
```

```text
Do not create the storyboard yet. The trousers have an invented pattern.
Correct only the texture; preserve the original blue, elastic waistband,
two long ivory drawstrings and wide-leg proportions.
Keep the person, shoes and room unchanged, then review again.
```

## 5. 升级或回退 / Upgrade or roll back

更新前备份技能目录及共享文件，查看 CHANGELOG，再复制新版。其他技能可能共用同一约束，不盲目用旧共享文件覆盖新版。回退时使用已备份版本或历史提交，并检查依赖相容性。  
Back up the skill and shared file before updating. Review the changelog and shared dependencies. Roll back from your backup or a historical commit; do not blindly overwrite a newer shared file used by other skills.
