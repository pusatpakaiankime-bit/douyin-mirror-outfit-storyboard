# 流程图 / Workflow

[返回首页 / Home](../README.md)

```mermaid
flowchart TD
 A["上传参考图 / Upload references"] --> B["确认商品、身份、场景角色 / Assign roles"]
 B --> C["记录商品细节与覆盖 / Record details and coverage"]
 C --> D["补齐授权搭配 / Complete permitted styling"]
 D --> E["生成9:16母版 / Generate model image"]
 E --> F{"质检通过? / Review passed?"}
 F -->|Yes| G["10秒动作表 / 10-second plan"]
 F -->|No| R["定点修复，最多两轮 / Targeted repair, up to two rounds"]
 R --> H{"修复通过? / Repaired?"}
 H -->|Yes| G
 H -->|No| Z["标记草稿，说明缺口 / Mark draft and report"]
 G --> I["生成10格分镜 / Generate 10-panel sheet"]
 I --> J{"逐镜检查通过? / All panels pass?"}
 J -->|No| K["最多两轮修复 / Up to two repair rounds"]
 K --> L{"通过? / Passed?"}
 L -->|No| Z
 L -->|Yes| M["视频提示词与TikTok文案 / Prompts and copy"]
 J -->|Yes| M
 M --> N["交付图片、表格与文案 / Deliver assets"]
 N -. "另行请求 / Separate request" .-> V["绑定素材并生成视频 / Bind assets and generate video"]
 V --> Q["观看成片，检查一致性 / Review the actual video"]
```

“通过”指检查中未发现明显偏差，不代表机器保证完全相同。重试上限是本教程的工作流约定；若仍失败，不把错图当成新商品事实。  
“Passed” means no obvious mismatch was found in review—not a guarantee of exact reproduction. The retry limit is this workflow’s convention; failed generations never redefine the product.

十镜头是十个画面时段，不要求每秒做复杂动作。细节镜头可用同一镜前素材的裁切，避免引入不合理的第三人机位。  
Ten shots are ten visual beats, not ten complex moves. Detail views can be crops of the same mirror view rather than an implausible second camera.
