# 完整图文教程 / Full illustrated tutorial

[首页 / Home](../README.md) · [提示词 / Prompts](prompts.md)

## 01｜把参考图分工说清楚 / Give each image a role

| 参考 / Reference | 决定什么 / Controls | 不决定什么 / Does not control |
|---|---|---|
| 原始商品 / Original product | 颜色、版型、长度、缝线、抽绳、口袋 / Colour, cut, length, seams, cords, pockets | 商品照片里的其他人物、包或露腰穿法 / Incidental person, bag or exposed styling |
| 原始人物 / Original portrait | 脸部、肤色、妆容、发型或头巾 / Face, skin tone, makeup, hair/headwear | 没拍到的身高、全身比例 / Unseen height or body measurements |
| 背景 / Room | 布局、家具、材质、光线 / Layout, furniture, materials, light | 人物身份 / Person identity |
| 合格母版 / Reviewed model image | 已确认搭配、构图 / Approved supporting outfit and framing | 覆盖原商品错误 / Overriding product facts |
| 分镜 / Storyboard | 动作顺序与景别 / Motion order and framing | 修改脸、商品或场景 / Redefining identity, product or room |

没有全身人物参考时，只能保持可见身份并合理补全未见部分，不能保证原本人身比例。  
A portrait cannot prove unseen full-body proportions; preserve visible identity and disclose inferred areas.

## 02｜商品检查卡 / Product inspection card

以蓝色阔腿裤案例为例，记录：中蓝色、宽松紧腰、两条浅色长抽绳、斜口袋、宽裤腿、裤脚长度、可见缝线。原图无花纹，生成图也不能出现旋涡纹。不要把视觉上的牛仔感写成“纯棉、透气、不褪色”等未经证实的卖点。  
For the blue wide-leg trouser example, record the blue tone, gathered waistband, two light long cords, slanted pockets, wide legs, hem length and visible seams. An invented swirl pattern is a mismatch. Denim appearance does not prove cotton content, breathability or colourfastness.

如果主图抽绳未打结，细节图有蝴蝶结，先选定本次状态，不在不同镜头间随机切换。  
When references show different cord states, choose the intended state before generation and keep it consistent.

## 03｜搭配与覆盖 / Styling and coverage

只补缺件，主商品不重设计。已有 Hijab/Tudung 时保持头巾颜色与包法，按参考和明确要求保持覆盖，不从外观推断宗教或族裔。无此造型要求时不自动加头巾。  
Complete missing pieces without redesigning the hero. Preserve referenced headwear and requested coverage; do not infer religion or ethnicity. Do not automatically add a hijab when it is not requested or referenced.

如用户要求完整遮盖头发、耳朵、颈部、胸口、肩背、腰腹和腿部，逐项检查，不能为了展示裤腰掀衣。覆盖与商品展示冲突时说明取舍，而不是偷偷修改商品。  
When full coverage is requested, inspect every specified area. Never lift clothing to display the waist; disclose conflicts instead of altering the product.

商品原有标记与“禁止新增 Logo”分开处理。若用户要求连商品原标也删除，却又要求所有细节保留，先说明冲突。  
Distinguish an existing product mark from adding new branding. Clarify a conflict between removing an original mark and preserving all details.

## 04｜先母版，后分镜 / Model image before storyboard

![Existing generated model style example](../examples/malaysian-modest-look-1.png)

**图注 / Caption：** 既有风格示意，仅用于讲解检查顺序；未提供该图对应原始资料的逐项验证结果。  
Existing style illustration used to explain review order; no source-by-source fidelity certification is claimed.

按从上到下检查：脸和头巾 → 领口袖口 → 腰头与商品结构 → 裤脚与鞋 → 房间家具 → 手机和手指。  
Inspect top to bottom: face/headwear → neckline/cuffs → hero structure → hems/shoes → furniture → phone/fingers.

- 袖口不自动卷推、变长或变短。 / Do not roll, push or resize sleeves.
- 手机始终同一只手；细节裁切不等于换机位。 / Keep the phone in the same hand.
- 不确定口袋功能时手放外面；上装口袋不安排插手。 / Keep hands outside unverified pockets; no upper-garment pocket insertion.
- 原图有包但本次禁止包时，不复制该道具。 / Do not copy incidental bags when bags are excluded.

## 05｜十镜头排版 / Ten-panel layout

![Existing generated fashion style example](../examples/malaysian-modest-look-2.png)

**图注 / Caption：** 另一张既有风格示意，不是十格分镜，也不是准确度对比图。  
Another existing style illustration—not a ten-panel sheet or fidelity comparison.

十格建议两行五列，每格内容按 9:16 构图；整张拼图不必是 9:16。用户禁止文字时格内不放数字，表格用“上排从左至右、下排从左至右”对应。  
Use two rows of five with 9:16 framing per panel. The overall sheet need not be 9:16. For no-text requests, omit panel numbers and map the table left-to-right, top row first.

## 06｜提示词与平台操作 / Prompts and platform controls

[复制完整示例](prompts.md)。按实际平台上传顺序设置参考，不凭空增加 @。OmniFlash 开头集中一次说明角色，后文用普通名称。@ 在这里是附件标签示例，平台是否提供相同语法需要看实际界面。  
Use the [complete examples](prompts.md). Map actual attachments; do not invent references. OmniFlash uses one opening role block. The @ labels are illustrative attachment labels, not a guarantee of platform syntax.

10秒、9:16、1080及关闭音频应在支持的界面里设置；提示词里写了这些，不等于设置已经生效。  
Set duration, ratio, resolution and audio in supported controls. Writing settings in a prompt does not apply them automatically.

## 07｜常见问题 / Troubleshooting

| 问题 / Problem | 做法 / Response |
|---|---|
| 人物不对 / Wrong person | 核对真实绑定和原始人物图；不要直接断言原因 / Check actual bindings and source portrait; do not assume the cause |
| 商品改色或变形 / Garment drift | 对照原图定点修复；不用错图作新基准 / Repair against original, not the failed output |
| 图案突然出现 / Invented pattern | 明确指出并修复纹理 / Identify and correct the texture |
| 鞋子、持机手变了 / Shoes or phone hand change | 检查各镜头并锁定同一配置 / Review each shot and preserve configuration |
| 分镜与原图冲突 / Storyboard conflict | 原商品与原人物优先 / Original product and portrait win |
| 想用错误母版出视频 / Failed start frame | 先修图；最多作为构图参考 / Repair first; use only as composition guidance |
| 生成服务不可用 / Generator unavailable | 交付提示词和缺口，不假称已生成图片 / Deliver prompts and state limitation |
| 重试仍失败 / Repeated failure | 两轮后标记草稿，说明未解决项 / After two repair rounds, mark draft and report |

最终验收是看实际图片和视频，不只是提示词写得完整。  
Final acceptance depends on the generated media, not just prompt completeness.
