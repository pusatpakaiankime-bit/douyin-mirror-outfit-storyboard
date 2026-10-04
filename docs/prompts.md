# 完整提示词与10秒动作表 / Complete prompts and timing

[首页 / Home](../README.md) · [参考图规则 / Reference rules](tutorial.md)

下面是蓝色阔腿裤案例，不是所有商品的固定模板。先填入真实细节，再提交。假设本次上传：图1原始人物、图2原始商品、图3已检查的母版、图4分镜。没有独立背景图时，场景沿用母版；有背景图则另绑定并优先使用它。
This example is for blue wide-leg trousers, not every product. Assumed upload order: 1 original portrait, 2 original product, 3 reviewed model image, 4 storyboard. The model image supplies the room only when no separate background is provided.

## 动作表 / Action plan

共同锁定：浅蓝头巾、奶油色不透明宽松长袖上衣（袖口到腕）、中蓝阔腿裤、灰白鞋棕灰鞋底。仅在这确实是已确认搭配时使用。手机始终右手持握，空闲手不插袋、不拉扯衣物，镜头为同一镜前视角或裁切。
Shared locks: use this styling only if approved. Powder-blue hijab, opaque relaxed cream top with cuffs at wrists, blue wide-leg trousers and grey-white shoes with taupe soles. Phone stays in the right hand; the free hand stays outside pockets. Detail shots are mirror-view crops.

| 镜头 / Shot | 时间 / Time | 画面 / Frame | 动作 / Action | 商品重点 / Focus |
|---|---|---|---|---|
| 1 | 0–1s | 全身 / Full body | 站稳轻微微笑 / Stand, soft smile | 完整轮廓 / Silhouette |
| 2 | 1–2s | 腰部裁切 / Waist crop | 手自然停在侧边 / Free hand at side | 腰头、抽绳 / Waistband, cords |
| 3 | 2–3s | 全身 / Full body | 小幅侧转20度 / Turn slightly | 阔腿宽度 / Leg width |
| 4 | 3–4s | 全身 / Full body | 一小步向前 / Small step forward | 自然垂落 / Drape |
| 5 | 4–5s | 口袋裁切 / Pocket crop | 手在袋外不遮开口 / Hand outside | 斜袋口与线迹 / Opening, seams |
| 6 | 5–6s | 裤脚与鞋 / Hem and shoes | 双脚站稳 / Settle feet | 裤长 / Length |
| 7 | 6–7s | 全身 / Full body | 回到正面 / Return front | 比例 / Proportions |
| 8 | 7–8s | 中全身 / Medium-full | 轻微点头 / Small nod | 同一造型 / Continuity |
| 9 | 8–9s | 裤面裁切 / Fabric crop | 手保持外侧 / Hand stays outside | 原始纹理 / Texture |
| 10 | 9–10s | 全身 / Full body | 停稳收尾 / Hold finish | 完整穿搭 / Complete look |

## Seedance 2.0 中文 / Chinese

在平台里实际绑定素材，并另设10秒、9:16、支持的1080输出与关闭音频。这些不是已执行的设置。  
Bind the references and set available controls separately. The following text does not execute platform settings.

```text
生成10秒、9:16竖屏镜前穿搭视频，写实手机画面，静音，无字幕。

参考分工：@图片1 为成年人物身份和浅蓝Hijab参考；@图片2 为裤子商品准确性的最高参考；@图片3 为已确认搭配、镜前构图和室内场景参考；@图片4 只参考镜头顺序与景别，不把拼图网格生成到视频里。原商品覆盖生成图的商品错误，原人物覆盖生成脸部偏差。若母版尚未通过检查，先修正母版，不把它作为准确首帧。

保持同一成年人物的五官、肤色、妆容和浅蓝头巾包法。保留头发、耳朵、颈部、胸口、肩背、腰腹与腿部的遮盖。奶油色不透明宽松长袖上衣作为搭配件，袖口到手腕，不卷推袖、不露腰。主商品保持原图中蓝色、宽松紧腰、两条浅色长扁抽绳自然垂落且不打结、原有前片线迹和斜口袋、宽直裤腿与接近鞋面的裤长，不增加图案。灰白色鞋及棕灰鞋底全程一致。
保持母版奶油色室内、格栅移门、左侧木柜和灯、右侧浅色沙发及木地板的位置与光线；不新增装饰。右手始终持同一手机，左手自然在身体侧边，不插口袋、不提衣、不挡关键商品细节。所有近景来自同一镜前视角的裁切，无第三人摄影机视角。

0–1秒：全身站稳，轻微微笑。
1–2秒：裁切腰部，展示松紧腰和两条长抽绳，手不遮挡。
2–3秒：回全身，小幅侧转20度展示阔腿比例。
3–4秒：向前一小步，裤腿自然摆动。
4–5秒：裁切斜口袋和原有线迹，左手停在袋外。
5–6秒：裁切裤脚与鞋，双脚平稳着地。
6–7秒：全身回正，不改变手机持握。
7–8秒：中全身轻微点头，头巾覆盖不变。
8–9秒：裁切裤面纹理，不新增花纹或夸大面料特性。
9–10秒：回全身，站稳微笑收尾。

只使用自然小动作和直接切镜。无音乐、对白或音效；不加包包、画面文字、水印、新Logo；不换脸、不变色、不改版型、不改变抽绳状态和鞋子，不产生多余肢体或手部穿模。
```

## OmniFlash 英文 / English

@ 只集中在开头四次，每张一次。以下标签需要替换为平台实际附件标签；不是通用接口语法保证。  
Four opening mentions, once per image. Replace them with the labels your interface actually supports.

```text
Create a 10-second, vertical 9:16 photorealistic mirror-selfie outfit video. Silent output.

REFERENCE ROLES
@图片1: original adult portrait; identity, makeup and powder-blue hijab.
@图片2: original product photo; authoritative trouser colour, construction and proportions.
@图片3: reviewed model image; supporting outfit, mirror composition and room.
@图片4: storyboard; shot order and framing only, never a visible grid.

The original product overrides generated garment errors; the portrait overrides generated facial errors. If the model image has unresolved mismatches, repair it before treating it as an exact start frame.

Keep the same adult face, skin tone, makeup and hijab wrap. Maintain covered hair, ears, neck, chest, shoulders, back, midriff and legs. Keep the opaque relaxed cream supporting top, with sleeves ending at the wrists; no rolling or pushing. Preserve the blue wide-leg trousers: gathered elastic waist, two long light flat untied drawstrings, original front seams, slanted pockets, wide straight legs and near-shoe hems. Keep the same grey-white shoes and taupe soles. No invented fabric pattern or material claims.

Preserve the cream room, grid-panel doors, wooden cabinet and lamp on the left, pale sofa on the right, wooden floor and existing light. The same phone stays in the right hand; the left hand rests outside pockets without lifting or pulling clothing. Detail shots are crops of the same mirror view, not a second photographer.

0–1s: full-body still pose, soft smile.
1–2s: waist crop showing elastic gathering and both hanging cords, unobstructed.
2–3s: full body, slight 20-degree turn to show leg width.
3–4s: one small step forward, natural trouser movement.
4–5s: pocket-and-seam crop, free hand remaining outside.
5–6s: hem-and-shoe crop as both feet settle.
6–7s: return to a front-facing full-body pose.
7–8s: medium-full view, a small nod without shifting headwear coverage.
8–9s: trouser texture crop, preserving the original surface.
9–10s: full-body finish, hold a gentle smile.

Use restrained movement and direct cuts. No speech, music or sound effects. No bags, on-screen text, added logos, watermark, face changes, colour shifts, garment redesign, changing shoes or cord state, extra limbs or hand penetration.
```

## 只有三张图怎么办？ / What if I have only three images?

只写真实存在的参考角色。没有原始人物图时，可将已确认母版作为本次身份参考，但不能声称验证了未提供的原始身份；没有分镜时直接用文字时间轴。  
Use only supplied references. An approved model image can define identity for this run when no original portrait is supplied, but do not claim verification against an absent original. Without a storyboard, use a written timeline.
