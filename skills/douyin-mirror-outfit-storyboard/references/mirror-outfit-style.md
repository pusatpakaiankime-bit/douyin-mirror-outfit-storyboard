# Mirror Outfit Style Reference

涉及人物/服装时，先读取[共用决策约束](../../_shared/install-video-skill-constraints.md)，按其适用范围执行身份与可见覆盖、真实袖口落点、主商品优先的双向搭配、口袋类型及七项验证、动作回退。示例/动作池/风格菜单仅是通过检查后的候选，无默认上装或下装类别、固定配色映射。每条独立发给生成工具的提示词必须展开本次商品、配套件、袖长/袖口、覆盖与具体手位，不只发送规则链接；不适用项省略，不增加原任务未要求的人物、服装或动作。

## Core Style

Position the visual as Douyin-style refined mirror outfit content:

- Mood: sweet but adult, fresh, refined, warm, natural, and credible rather than luxurious or staged.
- Scene: an ordinary lived-in bedroom, dressing corner, wardrobe area, or home mirror location that plausibly supports a phone selfie.
- Camera: vertical 9:16, full-body mirror selfie, phone partly covering the face, camera around chest-to-face height.
- Lighting: warm indoor ceiling light plus soft ambient fill, gentle shadows, low contrast.
- Filter: creamy pastel, warm gray-nude, low saturation, clean skin tone, no heavy HDR.
- Background: visually quiet but not perfect; preserve slight asymmetry, realistic object placement, ordinary home materials, small wear, imperfect curtain or bedding folds, subtle mirror marks/reflections, and normal ambient light. Use only a few secondary objects and keep the product readable.
- Avoid: luxury showroom, hotel-suite perfection, spotless CGI materials, perfect symmetry, excessive decorative flowers, huge empty rooms, dramatic ceiling strips, over-polished reflective floors, or an obviously AI-generated interior.

## Model Direction

Use an adult female model direction unless the user specifies otherwise. Resolve modest styling through the shared rule and `malaysian-styling.md`; when headwear covers the hair, do not apply the uncovered-hair example below:

- Young adult, sweet but adult, fresh natural presence.
- Without Hijab: long softly curled dark hair or neat soft waves.
- With Hijab: no visible hair; keep the chosen Hijab wrap and modest coverage consistent.
- Clean light makeup; avoid dramatic evening glam.
- Relaxed and elegant body language.
- Phone mirror-selfie style can partially cover the face when matching Douyin outfit content.

## Model Image Prompt Pattern

Use this structure for a single model image:

```text
Use case: photorealistic-natural
Asset type: fashion ecommerce model image, vertical 9:16 social commerce style
Input image: strict apparel reference. Preserve the outfit and accessory identity from the reference image.
Primary request: Create a full-body adult female model wearing the same outfit combination in a refined Douyin mirror-selfie fashion style.
Subject: young adult female model, sweet but adult, fresh natural presence, clean light makeup, elegant relaxed body language, taking a full-body mirror selfie with a phone partly covering the face. Describe softly styled hair only when it is actually uncovered; when headwear is present preserve its actual wrap and covered areas under the resolved COVERAGE_TARGET.
Outfit invariants: <list every garment and accessory from the product image, including colors, patterns, closures, silhouette, shoes, bag, scarf, watch, jewelry>.
Scene/backdrop: believable ordinary lived-in bedroom or home dressing corner; natural asymmetry, a few casually placed everyday objects, slightly imperfect fabric folds, subtle mirror/floor reflections, ordinary materials with minor wear, and normal mixed daylight/room light. Tidy enough to see the outfit, but not showroom-perfect or luxurious. If a background reference exists, preserve its real layout and imperfections without beautifying it.
Composition/framing: vertical 9:16, full-body mirror selfie, model centered, entire outfit visible from head to shoes, no cropping of shoes or head. No bag unless explicitly requested or supplied as a reference.
Lighting/mood: warm soft indoor light, low-contrast gentle shadows, mild creamy pastel filter.
Constraints: adult model only; no underage appearance; no readable text, logos, watermarks, distorted hands, warped shoes, changed colors, hidden key garments, extra unrelated props, anime style, heavy glam makeup, or outdoor scenery.
```

## Storyboard Contact Sheet Prompt Pattern

Use this structure for one 10-panel storyboard image:

```text
Create a photorealistic fashion storyboard contact sheet based on the reference model image and original product outfit reference.

Format: one clean contact sheet containing 10 numbered vertical 9:16 panels, arranged in a neat grid. Each panel should look like a separate vertical video frame. Use only simple numbers 01 to 10 in the corner of each panel; no other readable text or captions.

Keep constant: the same adult model, same hairstyle and makeup direction, same outfit and accessories from the product image. Preserve exact colors, silhouettes, bag type, shoe type, scarf/patterns, and styling.

Scene family: believable ordinary lived-in bedroom or home mirror corner. Keep the same real layout, slight asymmetry, small everyday traces, imperfect folds/reflections, and normal mixed light across all panels; never upgrade it into a showroom, luxury closet, or spotless CGI interior.

Panel sequence:
01 opening full-body mirror hero pose, model centered, entire outfit visible, phone partly covering face.
02 half-body closer frame, one hand gently touching scarf/collar/cardigan detail.
03 full-body side pose showing garment length and lower-body silhouette.
04 walking-in-place movement frame, one step forward, trouser/skirt movement and shoes visible.
05 waistband, pocket, closure, cuff, or other hero-product detail pose.
06 lower-body detail frame, shoes and trouser/skirt hem clearly shown.
07 seated or leaning pose near sofa/vanity, elegant relaxed posture, outfit still visible.
08 playful soft pose, slight head tilt or gentle hand gesture, full outfit visible.
09 texture close-up frame, sleeve/cuff/fabric/pattern/watch/accessory detail visible.
10 final full-body hero pose, model centered, product-video cover feeling.

Visual style: photorealistic phone-camera realism, normal soft indoor/daylight mix, gentle low contrast, realistic fabric texture and body proportions, mild sensor grain and restrained processing; commercially usable but not over-polished.

Constraints: adult model only; no underage appearance; no bag unless explicitly requested or supplied; no anime or illustration style; no distorted hands, warped shoes, changed garment colors, hidden shoes, extra unrelated props, readable text besides panel numbers, watermark, logo, or heavy glam makeup.
```

## Action Prompt Table Template

Use this as the default written action plan:

| 镜头 | 时长 | 画面 | 动作提示词 | 镜头/构图 | 产品重点 |
| --- | --- | --- | --- | --- | --- |
| 01 | 2s | 全身镜前开场 | 手机遮脸站定，空闲手自然垂下，身体微侧，完整展示整套穿搭。 | 全身竖屏，人物居中 | 全套搭配 |
| 02 | 2s | 上半身细节 | 一只手轻捏丝巾或整理领口，另一只手拿手机，动作慢而轻。 | 半身近景 | 领口、纽扣、丝巾 |
| 03 | 2s | 侧身轮廓 | 身体转 45 度，空闲手保持自然，脚尖轻点地。 | 全身侧向 | 上衣长度、下装垂感 |
| 04 | 2s | 轻走动 | 向镜子轻走一步，裤腿/裙摆自然摆动，鞋露出。 | 全身动态 | 下装垂感、鞋 |
| 05 | 2s | 商品细节 | 手轻触腰头、口袋、纽扣或其他关键结构，不遮挡主商品。 | 中近景 | 主商品结构 |
| 06 | 2s | 下半身特写 | 脚尖轻交叉或内扣，停顿半秒展示鞋面和裤脚/裙摆。 | 下半身近景 | 鞋、裤脚/裙摆 |
| 07 | 2s | 坐姿生活感 | 坐在沙发或凳边，单腿自然前伸，双手自然放置。 | 中全身 | 穿着场景、下装 |
| 08 | 2s | 甜美互动 | 轻微歪头，比耶或抬手，动作克制不夸张。 | 全身镜前 | 氛围、整体搭配 |
| 09 | 2s | 面料配饰细节 | 手指轻划袖口/面料，靠近展示腕表、纽扣、图案。 | 近景 | 面料、配饰 |
| 10 | 2s | 结尾封面 | 回到全身站姿，空闲手自然垂下；仅七项共用验证通过时可插已确认的下装功能袋，停顿形成封面画面。 | 全身竖屏 | 全套搭配 |

## Product-Specific Filling Notes

For lavender knit cardigan + ivory wide-leg pants + polka-dot scarf styling:

- Emphasize soft lavender, ivory, champagne gold, and silver.
- Keep the cardigan button front, ribbed cuffs, inner purple layer, black polka-dot scarf, wide-leg trouser drape, metallic Mary Jane flats, woven shoulder bag, and bracelet watch.
- Use a refined dressing-room mirror scene rather than a plain white studio, because the outfit reads as sweet delicate daily styling.
