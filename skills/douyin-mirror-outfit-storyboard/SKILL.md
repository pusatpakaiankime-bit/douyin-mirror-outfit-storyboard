---
name: douyin-mirror-outfit-storyboard
description: Generate Malaysian-fashion mirror-selfie model images, coordinated outfits, storyboard/contact sheets, and Seedance 2.0 or OmniFlash video prompts from women's apparel product images. Use for 女装商品图变模特图, 自动搭配, 马来穿搭, Hijab/Tudung 穿搭, 镜前自拍, 抖音分镜, or 图生视频提示词.
---

# Douyin Mirror Outfit Storyboard

涉及人物/服装时，先读取[共用决策约束](../_shared/install-video-skill-constraints.md)，按其适用范围执行身份与可见覆盖、真实袖口落点、主商品优先的双向搭配、口袋类型及七项验证、动作回退。示例/动作池/风格菜单仅是通过检查后的候选，无默认上装或下装类别、固定配色映射。每条独立发给生成工具的提示词必须展开本次商品、配套件、袖长/袖口、覆盖与具体手位，不只发送规则链接；不适用项省略，不增加原任务未要求的人物、服装或动作。

## Overview

Turn a women's apparel product image into a refined Malaysian-fashion mirror-selfie model visual, then extend it into a 9:16 storyboard and image-to-video prompt. Lock uploaded products as strict references and coordinate missing garments, shoes, hijab, or restrained accessories around the hero product. Do not add a bag unless the user explicitly requests one or uploads a bag as a product reference.

Read `references/mirror-outfit-style.md` when generating the model image, storyboard image, or action prompts.
Read `references/malaysian-styling.md` whenever selecting or coordinating garments, shoes, bags, accessories, models, or Hijab/Tudung styling.

## Workflow

1. Inspect the product image first.
   - Identify every visible garment and accessory: category, color, silhouette, neckline/collar, closure, pattern, cuffs/hem, waist, trouser/skirt shape, shoes, bag, jewelry, scarf, watch.
   - Treat the input as a strict apparel reference. Do not invent brand claims, logos, discounts, or materials that are not visible.

2. Separate locked products from creative styling.
   - Every uploaded product is locked: preserve its visible color, pattern, silhouette, construction, length, closures, and defining details.
   - Coordinate missing items rather than pretending they came from the product image. Keep additions visually secondary to the hero product.
   - Default to no bag. Include a bag only when the user explicitly requests bag styling or supplies a bag product/reference image.
   - If the user uploads multiple products, preserve and use all of them unless the user identifies alternatives.

3. Apply Malaysian styling and conditional modesty.
   - Default to contemporary Malaysian women's fashion appropriate to the product, climate, and requested use case.
   - Resolve MODEST_STYLING from the selected visible outfit/person or explicit styling request under shared §2, including headscarf or modestwear without hijab; never infer identity or religion.
   - When MODEST_STYLING=FALSE, preserve ordinary product-faithful styling without extra modest restrictions; visible conservative styling without hijab still qualifies for TRUE.
   - Always cast an adult model.

4. Choose the most fitting real scene.
   - Default scene: upscale dressing room / tidy bedroom mirror area.
   - Use the product's colors to tune the background: warm cream wall, dark glass wardrobe, vanity table, flowers, soft sofa edge, polished gray floor, warm ceiling light.
   - Keep the scene uncluttered and product-centered.

5. Generate the model image when requested.
   - Use the image generation tool with the product image as a strict reference.
   - Make a vertical 9:16 full-body mirror-selfie model image.
   - Repeat outfit invariants in the prompt so garment colors, silhouettes, shoes, bag, and scarf do not drift.

6. Generate the storyboard/contact sheet when requested.
   - Use the model image and original product image as references when available.
   - Create one contact sheet with 10 numbered vertical 9:16 panels unless the user requests separate frames.
   - Use only simple panel numbers inside the image; provide detailed action prompts as text outside the image.

7. Generate video prompts when requested.
   - For Seedance 2.0, write one directly copyable Chinese prompt using explicit references: `@商品图`, `@人物图`, `@背景图`, and `@分镜图` when those inputs exist.
   - Never attribute room details to `@人物图` when a separate `@背景图` is supplied.
   - State reference priority: product fidelity, person identity, background continuity, then storyboard motion/composition.
   - Match the requested duration; for a 10-second, 10-shot plan, default to one second per shot.
   - For OmniFlash, provide the same locks and timeline in English.

8. Return concise deliverables.
   - For model image: provide the image/path and a brief style note.
   - For storyboard: provide the contact sheet/path plus a table of action prompts.
   - Include enough prompt text for reuse, but keep the final response practical and not overly long.

## Product Fidelity Rules

- Preserve exact visible outfit identity: colors, garment categories, silhouettes, key patterns, closures, cuffs, hems, waistband, shoes, bag, scarf, and jewelry.
- Apply strict fidelity only to uploaded products. Clearly treat automatically selected items as coordinated additions.
- Do not crop out defining items if they matter to the sale, especially shoes and bag.
- Do not hide key garments behind props or arms.
- Do not add readable brand marks, captions, watermarks, or unrelated props.
- Do not invent a bag. A bag is allowed only when explicitly requested or supplied as a reference/product.
- Avoid distorted hands, warped footwear, incorrect colors, anime styling, heavy glamour styling, and underage appearance.

## Default Storyboard Shape

Use 10 shots for Douyin mirror outfit videos:

1. Opening full-body mirror hero.
2. Upper-body scarf/cardigan detail.
3. Side pose showing the hero-product silhouette.
4. Small step or walking-in-place movement.
5. Waistband, pocket, closure, or other hero-product detail.
6. Lower-body shoes and trouser/skirt detail.
7. Seated or leaning lifestyle pose.
8. Playful soft pose.
9. Texture/accessory close-up.
10. Final full-body cover pose.

## Output Table

For action prompts, use a table with:

`镜头 | 时长 | 画面 | 动作提示词 | 镜头/构图 | 产品重点`

Keep each action prompt executable: describe body movement, hand placement, gaze/phone position, product focus, and what must remain visible.
