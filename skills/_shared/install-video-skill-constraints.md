# INSTALL VIDEO SKILL 人物与服装共用约束

本文件是本项目相关个人技能的人物身份、可见穿衣风格、双向搭配、口袋动作和袖长判断的唯一主定义。用户本次明确要求扩大此前四个技能的范围，所有接入本文件的相关技能共用这一版本。适用入口见文末接入清单；不是对无关插件、API 管理或抽帧工具的强制改造。

只在任务实际涉及人物或服装时执行相应条款：人物编辑执行身份及可见覆盖保持；服装呈现执行产品结构与袖长保真；完整穿搭缺件且允许搭配时执行双向搭配；需要选姿时执行口袋与动作检查。平铺/挂拍/幽灵模特不增加人物或手位；纯抽帧和源片事实分析保持原素材、如实记录，不篡改原片动作。复刻/换产品阶段才适配不兼容动作，保持原时间轴、切镜、数量和镜头语言；必要的功能展示缺证据时说明缺口。封面/拼贴/非服装广告不因此强加全身穿搭或商业服装主商品。

保持各技能原有工具、画幅、数量、时长、输出格式、授权与参考图绑定。历史案例、风格菜单与示例不是类别默认或身份依据。导出独立技能包时同时包含同级 `_shared/install-video-skill-constraints.md`，保持相对目录，避免断链；不要维护多份可漂移的主定义。

## 1. 事实、身份和统一顺序

先确认用户要求、HERO_PRODUCT及全部锁定商品，区分商品参考的可见结构、人物参考的穿衣风格、场景风格参考和可调整搭配件。保留整套参考中的所有已锁定商品；仅在缺件、要求自动搭配或用户允许改搭配时选择配套上装或下装。连衣裙/成套服装不强行新增主件。非服装任务不为了套用规则扩展为搭配任务。

不得从脸、肤色、头巾、服装、名字、地点或目标市场推断民族、种族、国籍或宗教；戴头巾不等于马来人，马来人也不等于必须保守着装。用户明确给定的人物身份可以记录，但身份本身不触发覆盖规则，也不能通过刻板五官描述验证身份。未给人物时可按任务设计原创成年模特，用可见外观描述，不宣称推断出其身份。国家/地区可用于明确的场景、语言和气候要求，不能代替穿衣信号。

统一决策顺序：
`REFERENCE PERSON → ORIGINAL GARMENT STRUCTURE + HERO_PRODUCT → MODEST STYLING SIGNAL → PROVIDED PRODUCT ANALYSIS → SUPPORTING GARMENT SELECTION / PRESERVE BOTH → POCKET TYPE → PRODUCT VISIBILITY → BODY MECHANICS → POSE → AESTHETICS`。
按§3分流到上装配下装、下装配上装或保留两件；不得把上装或下装默认当主商品。不适用的步骤标记N/A，不为了凑齐流程发明信息。禁止先选姿势再修改服装，也禁止随机选搭配件再强迫商品适配。

## 1A. 袖长识别与保持（第17条）

适用于所有含服装的图片、视频、分镜、平铺、挂拍、幽灵模特与其提示词，在ORIGINAL GARMENT STRUCTURE阶段执行，先于覆盖、搭配和姿势决策。先定位商品本身的袖口边缘，再比较同一手臂上的人体参考点：
`SHOULDER → ELBOW → MID FOREARM → LOWER FOREARM → WRIST`。
按人体位置关系判定，不按画面水平高度或固定像素比例判断，不以落肩接缝代替真实肩关节。判断优先级：`ACTUAL SLEEVE END POSITION > GARMENT NAME > VISUAL IMPRESSION`；商品标题、品类或“看起来像长袖”不能覆盖清晰袖口证据。

| SLEEVE_LENGTH | 自然穿着状态下商品袖口的实际落点 |
|---|---|
| CAP / VERY SHORT SLEEVE | 肩部附近，只覆盖少量上臂。 |
| SHORT SLEEVE | 上臂区域，明显高于手肘。 |
| ELBOW SLEEVE | 手肘附近。 |
| 3/4 SLEEVE / BRACELET SLEEVE | 手肘与手腕之间，通常在前臂中段至下段，明显未到手腕；不能归为FULL LONG SLEEVE。 |
| LONG SLEEVE | 到达手腕附近，覆盖完整前臂。 |
| EXTRA LONG SLEEVE | 超过手腕，延伸到部分手掌。 |
| UNCERTAIN | 弯臂、抬臂、遮挡、裁切、透视、卷推状态或袖口/解剖位置不清，无法可靠判定；不强行猜测。 |

无袖商品记录SLEEVELESS/N/A，不强分成盖袖；非对称设计按左右袖分别记录，不能为对称而改袖长。上述命名是本工作流按用户约定使用的分类，不依据标题术语反向补长袖子。

识别与证据处理：
- 优先交叉查看同一商品/对应尺码的正面产品图、平铺图、模特自然垂手图、侧面及其他清晰参考，并结合明确产品资料。平铺/挂拍只显示衣袖比例而没有可靠人体对应或尺寸依据时，不虚构肘腕位置；保留实际可见袖长与结构，类别可为UNCERTAIN。
- 标题写Long Sleeve但清晰自然垂手图袖口停在前臂时，按实际落点分类，记录资料冲突，不把袖子延长。若图像与尺寸/多视图矛盾且无法消解，保持UNCERTAIN；不得混用另一款/尺码来填补。
- 区分外层商品袖口与独立内搭袖口：外袖在前臂、内搭到腕时，外袖仍是3/4/BRACELET，不得把覆盖层当成原商品长袖。Modest覆盖缺口只按§2处理，不改变外袖长度。
- 区分原版长度与当前穿着状态：原图已有卷折/推高时记录其可见状态，不能仅凭抬高的袖口反推未展开的裁剪长度。保留原有卷折/固定翻边，但不自动新增、展开、加高或取消它；缺少未卷袖清晰图时原版长度为UNCERTAIN。天然罗纹、褶皱、卷边工艺不能当作应抹平的卷袖。
- 内部记录 `SLEEVE_LENGTH / CUFF_END_POSITION / SLEEVE_STATE / REFERENCE_EVIDENCE`（必要时左右袖及外袖/内搭分开）。不确定时不伪造测量值；一般任务先用不牵拉袖口的小动作和原图可见范围完成，不要求用户为可选动作补图。确实必须重建被遮袖长时，说明缺口并请求最少的清晰参考，先完成其他可确定部分。

生成与动作约束：
- 所有图片、每个分镜及视频镜头都保持原袖长、袖口实际人体落点、袖口宽度与原卷折状态。禁止把3/4袖补至手腕、把长袖改中袖、自动新增folded sleeve、卷袖、推袖、拉长或缩短袖子；不得为动作、搭配、露手腕、显示手表或modest覆盖改变产品。
- “整理袖口”只允许不移动袖口边缘的轻触/轻抚，不进行卷、推、拉或折；动作会改变落点时回退为手臂自然放松、手轻搭另一手腕等无袖口操作动作。
- 检查同一身体姿态下袖口与肘腕的关系，允许真实布料自然小褶皱，不把透视变化当作裁剪变化；抬臂/弯臂导致判断不可靠时不用该帧重新定类。必要时降低动作幅度，不用延长袖子来“补偿”动作。
- 每条独立提示词写出已确认类别及具体落点，UNCERTAIN时明确保留源图可见长度/原状态、不补画未知部分。负面词包含自动延长/缩短、卷袖/推袖、改袖口落点；禁止误将原有固定翻边列为必须删除的缺陷。翻译、精简和重试都保留该锁，成图后逐镜核对。

核心：SLEEVE LENGTH MUST FOLLOW THE ORIGINAL GARMENT. ACTUAL SLEEVE END POSITION HAS PRIORITY. DO NOT NORMALIZE ALL SLEEVES TO LONG SLEEVE. DO NOT CHANGE SLEEVE LENGTH TO FIT THE POSE.

## 2. MODEST_STYLING：可见风格触发，覆盖由本次输入绑定

- 当当前人物/穿搭参考明显具有 hijab、戴在头上的 headscarf/tudung、Muslimah styling、modestwear 或明显保守穿衣风格，或用户明确要求 modest、Muslimah styling、hijab styling、conservative styling、端庄/保守穿搭时，设 `MODEST_STYLING = TRUE`。没有这些信号时为FALSE；不把“马来模特”“马来西亚市场”或宗教身份单独当作造型指令。
- 普通围在颈部的围巾、包装上的词语、背景旁人的衣着或未选用的风格库例子不自动触发。信号不清时保留参考的实际覆盖，不臆测宗教或民族。没有头巾但明显modest或明确要求端庄，也应启用；启用不等于新增头巾。
- TRUE时保留原有hijab/headscarf的存在、包法和遮盖；原图遮住的头发不得擅自露出。保留原颜色，除非用户明确授权配饰重新配色或换头巾产品。不要因风格库的长发例子替换头巾。
- 覆盖基准 `COVERAGE_TARGET` 来自参考人物实际穿搭、原商品真实设计和用户明确要求。不得新增低胸/深V、露肩背腰腹、明显露大腿、高开衩，或擅自缩短衣长/裙长/袖长。不得将原modest造型变成性感、挑逗、夜店、内衣感或暴露型造型。自然、自信、优雅的商业姿势优先，避免突出胸臀胯或性暗示。
- 不把TRUE硬编码成“只露脸手”“长袖长裤”“脚踝脚背一律遮盖”。如果本次参考或用户确实要求这些覆盖，则逐项保留并检查动作中不走光；原有短袖、领口、衣长、开衩等商品设计不因偏好而改造。
- 当商品与已确定覆盖基准有实际缺口时，可在授权的搭配范围内选择独立、不透明、协调的配套上装、内搭或下装补覆盖；保持外层原领型、袖长、袖口、闭合与下摆，标明内搭是新增造型件，不是假称商品自带。已覆盖处不加冗余层，不固定内搭颜色，不凭“短袖+hijab”机械加同一款高领长袖。
- 若覆盖与展示产品结构无法兼容，说明具体冲突，给出可审阅的独立商品呈现/搭配方案；需要用户取舍时只问该冲突，不默改产品。FALSE时不施加modest专有限制，也不因此自动性感化；保留商品和用户原意。

## 3. 双向搭配与主商品分流（含第18条）

先识别上传商品和用户指定主商品，而不是从模板推定：
- `UPLOAD TOP ONLY → ANALYZE TOP → SELECT BEST BOTTOM`：需要完整穿搭时按§3A补下装；纯上装商品图不强加下装。
- `UPLOAD BOTTOM ONLY → ANALYZE BOTTOM → SELECT BEST TOP`：需要完整穿搭时按§3B补上装；纯下装商品图不强加人物或上装。
- `UPLOAD TOP + BOTTOM → PRESERVE BOTH PRODUCTS → VALIDATE THEIR COMPATIBILITY → COMPLETE THE REST OF THE STYLING`：两件都锁定，不能因为评分不理想而替换、改色或重设计。仅调整授权搭配件；有不可消解的冲突时说明并保留产品，必要时提供分别展示方案。
- `HERO_PRODUCT`由本次用户的主商品要求决定。只提供一件主商品时以该件为主；两件都提供且未指定主次时视为共同展示，不自动降级其中一件；确需单一主次且会影响交付时再简短确认。人物参考所穿的非商品服饰不自动成为已锁定商品，风格参考也不能覆盖产品事实。
- 自动选择的其他服装标记为`SUPPORTING_GARMENT`，说明是搭配建议，不声称来自商品图或随商品出售。不得按固定SKU、固定色组、历史使用频率、候选列表顺序或模板常见款给任何上装/下装类别默认优先级。

### 3A. 上装主导：动态选择下装

仅提供上装或已授权自动配下装时，先读取当前上装：`PRODUCT CATEGORY / MAIN COLOUR / SECONDARY COLOUR / PRINT-PATTERN / FABRIC APPEARANCE / FIT / LENGTH / SLEEVE_LENGTH-CUFF_END_POSITION / SILHOUETTE / VISUAL WEIGHT / STYLE / FORMALITY / MODEST LEVEL`。不可見/不确定项标UNKNOWN；面料观感不是成分或功能证明。

执行：`TOP ANALYSIS → STYLE INTENT → SILHOUETTE BALANCE → COLOUR HARMONY → PATTERN BALANCE → MODEST COMPATIBILITY → COMMERCIAL WEARABILITY → BOTTOM CATEGORY SELECTION → FINAL OUTFIT VALIDATION`。

- 候选类别无排序、无配额：裤/西裤、牛仔、直筒/阔腿/palazzo/culottes，半裙/A字/直筒/百褶/鱼尾/maxi/midi，kain/sarong及其他适合类别。不能默认TOP→PANTS或BLOUSE→TROUSERS；不因列表首项、历史频率、市场、民族或modest身份给任何类别优先权。指定类别/真实套装属于输入事实，不是系统默认。
- 在合理可行的类别中比较候选；可以包含裤、裙、kain，但不为“多样性”硬塞不适合或违背用户要求的候选。先明确下装要承担的功能（收束体积、延长比例、衬托印花等），再决定类别、版型、颜色。每个新产品重算，不沿用上一SKU或固定配色。
- `BUSY TOP → SIMPLE BOTTOM`：印花/花卉/条纹/重纹理/高细节/强设计上装优先配素色干净下装。素色基础上装可配素色、纹理、印花或设计下装，但一套只有一个主视觉焦点。禁止繁上装+繁下装+强配饰相互争抢。
- `VOLUME ON TOP → CONTROL BELOW`：宽松、oversized、蝙蝠袖、boxy、大体积上装优先收敛体积的直线、干净A字或其他受控轮廓，裤裙kain均可。`CONTROL ON TOP → MORE VOLUME ALLOWED BELOW`：合身、结构明确上装可以配阔腿、飘逸、A字、百褶、鱼尾等较饱满轮廓。不得把这个关系硬译成上宽必配紧裤。
- 短/截短上装优先高腰；常规衣长按全身比例选高腰或常规腰；长上衣/tunic/长blouse优先干净直线、受控体积。MODEST_STYLING=TRUE时不靠露腰腹、塞衣缩短或改短上装优化比例；原商品穿法与长度仍锁定。
- 颜色按实际主辅色、明度、饱和度、冷暖判断。比较方向：中性+中性 → 中性+彩色 → 同色/近色层次 → 邻近色 → 克制互补色；这是相容性评估顺序，不是固定色表。印花上装优先从印花已有色找配色，高饱和上装降低下装的视觉饱和度。不建立白上衣必配黑裤等映射，不添无由来的新强色。
- 印花上装优先素下装；素上装允许素或印花下装。双印花必须同时通过图案尺度、色彩关系、视觉密度和风格一致性检查，竞争则拒绝，不能为“时尚”强混。
- 风格与场合一致：casual配casual/smart casual；office配干净有结构；feminine配柔和或干净；elegant配精致利落；sporty配casual/sporty；modest配覆盖兼容。不是固定类别映射，允许有理由的融合，不无因拼接互相冲突的穿衣身份。
- TRUE时下装也维持整体modest兼容：适当长裤、阔腿/直筒、长A字/直筒/maxi裙、kain/sarong等平等评估；不自动新增迷你裙、极短裤、极高开衩、过紧显露身体或露腰造型。不改变用户上传下装的真实设计；冲突按覆盖规则处理。

### 3B. 下装主导：动态选择上装

仅提供下装或已授权自动配上装时，先读取当前下装：`PRODUCT CATEGORY / MAIN COLOUR / SECONDARY COLOUR / PRINT-PATTERN / FABRIC APPEARANCE / FIT / LENGTH / WAISTLINE / SILHOUETTE / VOLUME / VISUAL WEIGHT / STYLE / FORMALITY / MODEST LEVEL`。不清项标UNKNOWN；面料外观不证明成分，图案/品类不证明人物民族或宗教。

执行：`BOTTOM ANALYSIS → STYLE INTENT → SILHOUETTE BALANCE → COLOUR HARMONY → PATTERN BALANCE → MODEST COMPATIBILITY → COMMERCIAL WEARABILITY → TOP CATEGORY SELECTION → FINAL OUTFIT VALIDATION`。

- 从合理类别中动态比较blouse、shirt、T-shirt、fitted/basic/knit top、tunic、cardigan、jacket、modest/peplum top、sleeveless/long-sleeve/short-sleeve top及其他合适上装。这些是非穷尽候选，类别与袖长属性可重叠，不是固定清单、抽签池或默认排名。先确定配套上装需要承担的作用，再选类别、版型、颜色、衣长与袖长，不因为常用而自动选某款。
- `BUSY BOTTOM → SIMPLE TOP`：印花、花卉、batik、重纹理、高细节、statement下装优先素色、简洁、干净上装。素色基础下装允许更多上装设计、颜色、纹理或适度图案，但仍是`ONE OUTFIT → ONE PRIMARY VISUAL FOCUS`，且下装为主商品时不得被配套上装抢焦点。双图案沿用§3A的尺度、色彩关系、视觉密度及风格一致性检查，竞争就拒绝。
- `VOLUME BELOW → CONTROL ABOVE`：阔腿、飘逸、palazzo、大A字、百褶或高量感下装，优先干净、受控、合身或有结构的上装；合身不等于紧身显露身体。`CONTROL BELOW → MORE VOLUME ALLOWED ABOVE`：直筒、修身、干净受控下装，可以配relaxed、loose blouse、batwing、oversized或structured等轮廓。必须按完整人体比例、腰线、衣长、材质和场合复核，不能机械执行。
- 不建立`BOTTOM → BLOUSE`、`SKIRT → BLOUSE`、`PANTS/TROUSERS → SHIRT/BLOUSE`映射。裙装按轮廓、长度、材质、色彩、图案、正式程度和风格选上装；裤装按剪裁、宽度、腰线、材质、颜色、风格和场合选择。缎面鱼尾裙不固定配缎面blouse，印花长裙不固定配白blouse；先判断衬托作用，避免上下材质和设计竞争。
- kain/sarong/batik按其图案、可见造型语境、场合、材质、轮廓和用户意图选配套件，不自动锁定kebaya、blouse或民族服饰。用户明确要求传统、Kebaya、Muslimah或特定文化造型时遵循该造型要求；这是用户意图，不是从产品推断穿着者身份。
- 颜色沿用§3A的比较顺序：中性+中性 → 中性+彩色 → 同色/近色层次 → 邻近色 → 克制互补色，以实际下装主辅色、明度、饱和度和冷暖为依据。印花下装优先从印花主色/辅色提取上装候选色；强色下装配衬托型上装，不无因新增第二个无关强色。不建立黑下装必配白上装、奶油裙必配黑上装或其他固定色公式。
- MODEST_STYLING=TRUE时选择与§2实际覆盖、整体风格和下装比例兼容的上装；不等于LONG BLOUSE ONLY或TUNIC ONLY，也不自动统一长袖。检查袖长、领口、衣长和活动中腰腹覆盖；覆盖与主商品可见性冲突按§2处理，不用改短/改长原商品、掀衣或强制塞衣解决。
- 已提供的配套上装遵循§1A按真实袖口落点分类并保真。只给下装而新增上装时，下装的袖长是N/A；新增上装的袖型/袖长/衣长是明确选定的搭配设计，不伪称来自下装参考。选择后在同一look的所有帧锁定，后续不得为动作卷推或改变落点。
- 候选上装必须通过§4的八项评价；明显冲突则`REJECT COMBINATION → SELECT NEXT TOP → RE-EVALUATE`。不得等生成后才发现明显搭配错误。

核心：TOP CATEGORY MUST BE SELECTED, NOT ASSUMED. NO TOP CATEGORY HAS DEFAULT PRIORITY. BOTTOM DETERMINES WHAT THE TOP NEEDS TO DO. TOP MUST SUPPORT THE BOTTOM, NOT COMPETE WITH IT.

### 3C. 主商品可见性与搭配边界

`HERO PRODUCT MUST REMAIN THE VISUAL PRIORITY. SUPPORTING GARMENT MUST SUPPORT, NOT COMPETE.`
下装是主商品时，上装不得以颜色、图案、材质反光或设计复杂度抢焦点，也不得以衣长、层叠或宽度遮挡腰头、裙型、褶裥、口袋、关键剪裁及主要下装结构。选择合适的配套上装长度、量感和穿法，不为解决遮挡改动下装结构或牺牲已确定的modest覆盖。必要时拒绝当前上装并重选；两件均为锁定商品时不套用重选，按§3的兼容性冲突处理。
上装为主商品时同样检查下装及配饰是否抢焦点。一套只有一个主要视觉焦点；共同展示两件时该焦点可以是协调的完整look，但不能任意牺牲某件锁定商品的展示。原本正确的完整搭配和用户明确类别要求予以保留，不为类别多样性强制换装。
分镜和动作按主商品选择展示部位，不默认胸标/领口就是卖点；下装主商品应让腰线、轮廓、材质和实际关键结构进入合适的镜头。遵守各技能原有机位、数量、时长和构图边界，只替换不适用的产品焦点与动作。

## 4. 候选评价与商业优先

对自动选择的候选配套上装或下装，使用同一套内部评估：`COLOUR HARMONY / SILHOUETTE BALANCE / PATTERN BALANCE / STYLE CONSISTENCY / MODEST COMPATIBILITY / PRODUCT VISIBILITY / COMMERCIAL WEARABILITY / OVERALL PROPORTION`，逐项GOOD/ACCEPTABLE/CONFLICT/UNKNOWN；不伪造图像检测分数。modest未启用时该项N/A。
主要项有明显冲突则 `REJECT → NEXT CANDIDATE → RE-EVALUATE`，缺乏商品事实不能被高美感分抵消。多个可行方案按协调→可穿→商业适用→比例修饰→自然选择；不按稀奇/创意/历史常用类别优先。默认商业、可穿、协调、自然、易形成完整购买搭配，不作未经证实的功效宣传。
同一组锁定造型保持一致；用户请求变体时，只在通过评估的方案中变化，不为强制轮换牺牲准确度。既有完整look保真任务不重新配上装或下装；兼容性评价不能授权替换任一锁定商品。

## 5. 口袋分类与七项门槛

先记录口袋所属服装与功能证据，再分类，不能凭方形/圆形、翻盖或手被遮挡就断定可插。上装装饰袋可同时记录 UPPER_GARMENT_POCKET 与 DECORATIVE_OR_NON_FUNCTIONAL_POCKET，二者均禁止插手；只有确认的下装功能袋进入七项检查。连衣裙、连体服的腰侧袋不自动当作独立下装袋，本套姿势规则下默认不插。

| 类别 | 判定与动作 |
|---|---|
| UPPER_GARMENT_POCKET | 所有上装口袋，包括胸袋、衬衫/blouse袋、jacket胸袋或腰部贴袋及上半身装饰袋；禁止插手，上装有真口袋也不开放插兜姿势。 |
| LOWER_FUNCTIONAL_POCKET | 参考已确认的裤/jeans/裙/shorts侧袋、下装侧缝功能袋及其他位置合理、能自然插手的下装袋；需通过下列全部检查才允许。 |
| DECORATIVE_OR_NON_FUNCTIONAL_POCKET | 假袋、装饰翻盖、无真实开口、太小或位置不适合自然插手的袋；禁止插兜。 |
| UNKNOWN | 开口/功能/所属服装不清楚，证据不足；不能按类别常识补全，HAND_IN_POCKET=FALSE。 |

仅当下列七项都成立才设 `HAND_IN_POCKET = TRUE`，任一不成立或UNKNOWN则FALSE：
1. 当前参考确认口袋真实存在，而不是图案、缝线或装饰。
2. 实际开口清晰可见；仅有“有口袋”文字或被手遮挡不能证明开口位置方向。
3. 是尺寸、深度和位置适合自然插手的功能袋，不凭外形猜功能。
4. 位于下装，属于LOWER_FUNCTIONAL_POCKET。
5. 手进入方向、腕肘关节和身体平衡真实可行。
6. 插手不遮挡或拉扯目标商品的关键结构和卖点。
7. 不需要新增、移动、放大口袋或改变开口来完成动作。

上装下装同时有袋时仅考虑经验证的下装袋；没有可用下装袋则双手在外。通过门槛后无需额外请求用户“点头”才采用自然裤/裙袋动作，但不强制必须插。最终提示词写清是哪个下装袋以及真实进入方向，不能只写“手插口袋”。
禁止为姿势新增口袋、改袋位/尺寸/开口方向、手穿过无开口布料或出现手掌手指穿模。AI前一轮生成的错误袋口不是商品证据，不能拿它反向证明功能。
用户专门要求展示插兜功能但缺证据时说明需补清晰开口参考，先提供不依赖该功能的可用方案；不能把上装袋改判为下装袋。用户明确要求上装插兜与本套规则冲突时说明冲突，不静默执行或伪造结构。

## 6. 动作回退与镜头适配

`PRODUCT VISIBILITY > NATURAL BODY MECHANICS > POSE VARIETY`。
没有合格下装袋时，不强制插兜：手臂自然下垂、手放身体侧边、轻搭另一只手腕、在不挡产品时轻放胯部附近、轻理可见袖口、自然站姿；只有现有或用户已允许的道具才能持包，不为解决手位新增包。自然行走摆臂须符合原技能的镜头/运动约束；固定站台镜头不得因此改成走秀。手机自拍保留持机手，只调整空闲手。
任何动作库先过滤产品证据、覆盖、可见性和人体可行性，再在剩余动作中选；允许重复安全动作，不强求“每张必不同”。被遮头发不安排拨发，modest动作不拉开领口/掀裙/扭胯挺胸。非modest参考也不因随机动作擅改产品。

## 7. 实际执行出口与验证

在开始搭配/选姿之前建立简短内部决策记录：参考角色、锁定商品、袖长分类/袖口落点/原状态及证据、MODEST_STYLING及触发证据、COVERAGE_TARGET、HERO_PRODUCT/共同展示项、输入分支、已提供商品分析、配套候选及拒绝原因、选定上装/下装及参考或新增来源、主商品可见性、口袋类别与七项结论、允许动作与回退。只输出用户需要的简短依据，不要求公开冗长推理。
每条独立图片/视频提示词、分镜行、模板填充、负面词和重试提示都落实本次主商品及全部锁定商品、已选配套上装/下装的类别颜色版型衣长、不得遮挡或抢焦点的具体部位、实际覆盖、具体手位、袖长/袖口落点及原状态和不可改变的产品结构；不得仅向外部工具发送变量TRUE/FALSE、文件链接或“遵守上文”。压缩/翻译不删去适用门槛和回退。拒绝未经筛选的示例姿势，不把知识库的列表顺序当默认排序。

最终提示词按需展开的简短写法（填写具体内容后再发送，不原样留下占位符）：
中文：人物保留参考外观，不推断族裔宗教；保留主商品［具体商品与结构］及其他锁定商品；配套件［明确上装或下装、类别/颜色/版型/衣长、参考件或新增搭配］仅作衬托，不改主商品、不遮挡［具体腰头/褶裥/口袋/剪裁等关键部位］，不抢焦点。袖长［原上装已确认类别与具体落点/不确定时原图可见状态；新增上装填写选定的袖型与落点并标为搭配设计］，不自动卷推、延长或缩短。覆盖［具体头巾与已确定部位/独立内搭，无要求则不新增］。手位［通过七项验证的具体下装袋动作，或具体手在袋外动作］；禁止插上装/装饰/不明口袋，禁止新增袋口、改结构或手部穿模。
English: Preserve the reference person and garment construction; do not infer ethnicity or religion. Keep [hero product and all supplied locked garments] unchanged. Use [selected supporting top or bottom: category/colour/silhouette/length and reference-or-added status], subordinate in colour, pattern and detail; keep [specific hero features] visible. Preserve [actual headwear/coverage/layers when applicable]. Sleeves [confirmed source category and cuff endpoint, or explicitly uncertain source-visible state; for an added top, the explicitly selected sleeve design and endpoint]; no length changes or new rolling/pushing. Hands [specific verified lower-pocket action or explicit outside-pocket fallback]. No upper-garment, decorative or unverified pocket insertion; no invented or altered pocket openings, garment redesign or hand penetration.

生成后逐图/逐镜检查身份外观、覆盖、双向搭配组合及主次关系、腰头/褶裥/轮廓等主商品可见性、真实袋口和手位、袖口相对肘腕落点及原卷折状态、领口下摆、身体可行性、主产品可见性。失败则按原技能修复策略定点修正，不能把错图当新商品基准。静态规则检查不是已验证图像质量；不承诺提示词能杜绝模型错误。

核心：HERO PRODUCT FIRST. ANALYZE THE PROVIDED PRODUCT FIRST. SELECT THE SUPPORTING GARMENT SECOND. SUPPORTING GARMENT CATEGORY MUST BE SELECTED, NOT ASSUMED. NO TOP OR BOTTOM CATEGORY HAS DEFAULT PRIORITY. THE PROVIDED PRODUCT DEFINES THE STYLING. STYLING AND POSE MUST ADAPT TO THE PRODUCT. NEVER MODIFY THE PROVIDED PRODUCT TO MAKE THE OUTFIT WORK OR TO ACCOMMODATE A POSE.

## 8. 接入清单与作用域

- `aigosell-automated-video-replication-15s`
- `aigosell-automated-video-replication-30s`
- `aigosell-video-variant-engine`
- `atutun-xhs-cover`
- `douyin-mirror-outfit-storyboard`
- `fantasy-qiqiguaiguai`
- `fashion-beat-sync-video-replication`
- `fashion-candid-photo-generator`
- `fashion-coordinate-poster`
- `fashion-flatlay-stylist`
- `fashion-video-content-variation`
- `generate-mirror-selfies`
- `generate-mirror-selfies-v2`
- `km-fashion-ai-prompt-generator`
- `km-fashion-product-image-planner`
- `km-ghostbody`
- `km-gwrm`
- `km-outfit-codex`
- `km-poster-prompts`
- `km-white-background-outfit-prompts`
- `kutu001`
- `menswear-outdoor-brand-film`
- `outdoor-mirror-outfit-storyboard`
- `outfit-reference-video-prompt`
- `reelsmart-cover-designer`
- `sunlit-street-ootd-storyboard`
- `tokyo-subway-ootd-storyboard`
- `warm-bedroom-ootd-storyboard`

商品文案技能仍遵循原有已证实属性/标题命名限制：内部按可见袖口做保真检查，不把未经证实的袖长类别、材质成分或商品功效写成销售事实。无人体对应时允许袖长类别 UNCERTAIN，不为补全字段发明数据。