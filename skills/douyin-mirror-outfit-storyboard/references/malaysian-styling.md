# Malaysian Fashion Styling

涉及人物/服装时，先读取[共用决策约束](../../_shared/install-video-skill-constraints.md)，按其适用范围执行身份与可见覆盖、真实袖口落点、主商品优先的双向搭配、口袋类型及七项验证、动作回退。示例/动作池/风格菜单仅是通过检查后的候选，无默认上装或下装类别、固定配色映射。每条独立发给生成工具的提示词必须展开本次商品、配套件、袖长/袖口、覆盖与具体手位，不只发送规则链接；不适用项省略，不增加原任务未要求的人物、服装或动作。

Use this reference whenever the workflow needs to coordinate missing garments, footwear, bags, accessories, a model, or Hijab/Tudung styling.

## Default Direction

- Style the outfit as contemporary Malaysian women's fashion, chosen to fit the hero product and intended context: casual, office, cafe, shopping, travel, festive, sweet, minimal, street, or light-luxury.
- Account for Malaysia's warm, humid climate through visually breathable layers, comfortable proportions, and practical footwear unless the user requests another direction.
- Keep the uploaded product as the visual hero. Supporting pieces should coordinate in color, proportion, texture, and occasion without obscuring its defining features.
- Do not invent brand, fabric, or functional claims that cannot be established visually.

## Product and Coordination Logic

- Uploaded garment or accessory: strict reference. Preserve its visible identity.
- Missing garment, footwear, Hijab, or restrained accessory: creative coordination. Choose it to complete the look, but do not describe it as part of the original product.
- For an uploaded bottom, select a proportionally suitable top, shoes, and optional bag/accessories.
- For an uploaded top, select a suitable bottom, shoes, and optional bag/accessories.
- For a dress or coordinated set, avoid unnecessary layers that hide its cut or key details.
- Default to no bag in model images, storyboards, action tables, Seedance prompts, and OmniFlash prompts.
- Add a bag only when the user explicitly asks for one or uploads a bag as a product/reference image. When used, never let it obstruct the hero product.
- Replace default bag-display storyboard shots with waistband, pocket, closure, cuff, fabric, silhouette, or another relevant hero-product detail.

## Visible Styling and Conditional Coverage

Resolve MODEST_STYLING and COVERAGE_TARGET through shared §2 from the selected person/outfit reference or explicit styling request, including modest styling without hijab. Do not infer ethnicity, religion or nationality from headwear or the Malaysian market.
Preserve existing headwear, wrap, colour and actual covered areas. Add only necessary separate coordinated layers within the authorized styling scope; keep the hero neckline, sleeve class/cuff endpoint, hem and structure unchanged. No fixed inner colour, mandatory long sleeves/trousers or automatic hijab addition. Unresolvable coverage/product-visibility conflicts use shared §2's fallback rather than hiding or redesigning the product.
When MODEST_STYLING is FALSE, preserve the intended garment design without adding modest-only coverage or automatically sexualizing the look. Keep the skill's existing no-bag default and reference bindings.

## Prompt Invariants

For image and video prompts, distinguish:

- `Locked product invariants`: details copied from uploaded products.
- `Coordinated additions`: items selected by the skill.
- `Conditional modesty`: whether Hijab Modest Mode is active and what layers are added without altering the hero product.

For Seedance 2.0 with separate inputs, use these exact roles:

- `@商品图`: product identity and highest apparel-fidelity reference.
- `@人物图`: adult model identity, face, body, hair or Hijab styling.
- `@背景图`: architecture, furniture, materials, lighting, and color palette.
- `@分镜图`: shot order, motion, timing, and composition.

Never write that the background comes from `@人物图` when `@背景图` is supplied.
