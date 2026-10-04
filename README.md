# 镜前穿搭，从你的参考图开始
# Your references. One consistent outfit story.

欢迎！把商品、成年模特和场景交给这个 Skill，我们一起把穿搭想法整理成可检查、可复用的图片与视频创作素材。你不需要先学会复杂提示词：从下面的一句话开始就好。

Welcome! Bring your product, adult-model and room references. This skill helps turn them into reviewable fashion images, storyboards and reusable video prompts. Start with one simple request—no elaborate prompt writing required.

**v3.2.0 · 2026-10-04 · 中文 / English**

[开始使用 / Start here](docs/quick-start.md) · [完整教程 / Full tutorial](docs/tutorial.md) · [流程图 / Flowchart](docs/workflow.md) · [提示词 / Prompts](docs/prompts.md) · [版本记录 / Changelog](CHANGELOG.md)

> 商品图管商品，人物图管身份，背景图管空间。生成结果需要检查，不承诺百分百保真。  
> Product references control clothing, portraits control identity, and background references control the room. Generated results need review; exact fidelity is not guaranteed.

## 你会得到什么？ / What will you get?

| 交付 / Deliverable | 内容 / What it contains |
|---|---|
| 9:16 模特图 / Model image | 从头到鞋的镜前自拍 / Head-to-toe mirror selfie |
| 10 镜头分镜 / Storyboard | 同一人物、服装与场景 / Consistent person, outfit and room |
| 10 秒动作表 / Action plan | 每镜时长、手位、构图与商品重点 / Timing, hands, framing and product focus |
| Seedance 中文提示词 / Chinese prompt | 按实际附件对应参考角色 / Reference roles matched to actual attachments |
| OmniFlash 英文提示词 / English prompt | 开头集中标注一次 @，正文简洁 / One reference block, concise timeline |
| TikTok 文案 / Copy | Hook + TITLE + CAPTION + hashtags；不保证爆款 / No promise of virality |

这是图片和视频提示词工作流，不是自动生成成片的承诺。视频生成需要另外使用支持的服务，并检查输出。  
This is an image and video-prompt workflow—not a promise of automatic video delivery. Video generation is a separate step in a supported service.

## 一句话开始 / Start with one request

先上传商品图、成年模特图和背景图，并说明顺序。  
Upload your product, adult-model and background images, and identify their order.

```text
使用 $douyin-mirror-outfit-storyboard 完成完整流程。
图1是商品，图2是成年模特，图3是背景。
严格保持商品细节、人物身份和场景一致。
生成9:16模特图、10镜头分镜、10秒动作表、Seedance中文提示词、
OmniFlash英文提示词和TikTok文案（Hook、TITLE、CAPTION、Hashtags）。
OmniFlash开头集中标注一次@，后文不要重复。
禁止添加包包、画面文字和水印。模特图检查通过后再生成分镜。
```

```text
Use $douyin-mirror-outfit-storyboard for the complete workflow.
Image 1 is the product, image 2 the adult model, and image 3 the background.
Preserve product details, identity and the room.
Create a 9:16 model image, 10-shot storyboard, 10-second action plan,
Chinese Seedance prompt, English OmniFlash prompt, and TikTok copy
with Hook, TITLE, CAPTION and hashtags.
Mention each reference once at the start of the OmniFlash prompt.
No added bags, on-image text or watermarks. Review the model image before storyboarding.
```

## 图文导览 / Illustrated guide

<table><tr><td width="50%"><img src="examples/malaysian-modest-look-1.png" alt="Existing generated fashion style example 1"></td><td width="50%"><img src="examples/malaysian-modest-look-2.png" alt="Existing generated fashion style example 2"></td></tr><tr><td>风格示意 1 / Style illustration 1</td><td>风格示意 2 / Style illustration 2</td></tr></table>

以上为仓库既有生成示例，不是原始商品，也不是逐细节保真验证通过的证明。先学会[图像检查方法](docs/tutorial.md)，再把你自己的合格图片用于下一步。  
These existing generated examples illustrate style, not source products or verified exact matches. Use the [review checklist](docs/tutorial.md) before reusing your own outputs.

## 安装 / Install

下载仓库 ZIP 并解压。把 `skills/douyin-mirror-outfit-storyboard` 和必需的 `skills/_shared` 放进你的 Codex skills 目录，保留相对结构。已有同名文件请先备份，尤其是其他技能也会使用的共用约束。  
Download and extract the repository ZIP. Copy both skill folders into your Codex skills directory, keeping their relative structure. Back up existing files first, especially shared constraints used by other skills.

[详细安装与升级 / Installation and updates](docs/quick-start.md) · [离线图文入口 / Offline visual guide](docs/index.html)

## 按你的目标阅读 / Find your next step

- [快速上手 / Quick start](docs/quick-start.md)：安装、上传、最简指令 / Install, upload and invoke.
- [完整教程 / Tutorial](docs/tutorial.md)：参考优先级、搭配、质检、失败处理 / References, styling and review.
- [流程图 / Workflow](docs/workflow.md)：从输入到交付 / Inputs to deliverables.
- [提示词与动作表 / Prompts and timeline](docs/prompts.md)：可复制模板 / Copy-ready templates.
- [TikTok 文案 / TikTok copy](docs/tiktok.md)：用户指定的 Hook 写法 / Hook-led format.
- [更新记录 / Changelog](CHANGELOG.md)：每次更新有版本 / Every update is versioned.

只使用你有权使用的素材；模特必须为成年人。本仓库不是 Seedance、OmniFlash 或 TikTok 官方教程，平台设置以你当前界面为准。  
Use assets you have permission to use and adult models only. This is an independent workflow guide, not official platform documentation. Available controls depend on your current service.
