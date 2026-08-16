import re, os

# 1. Patch EditorPanel.smali
editor_panel_smali = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes4\com\itsmagic\engine\Activities\Editor\Interface\Objects\EditorPanel.smali"
with open(editor_panel_smali, "r", encoding="utf-8") as f:
    ep_content = f.read()

target_nocode = """    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z"""

replacement_nocode = """    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z"""

if target_nocode in ep_content and "TerrainStudioPanel" not in ep_content:
    ep_content = ep_content.replace(target_nocode, replacement_nocode)
    with open(editor_panel_smali, "w", encoding="utf-8") as f:
        f.write(ep_content)
    print("Patched EditorPanel.smali")
else:
    print("EditorPanel.smali already patched or pattern not found")

# 2. Patch PanelsController.smali
panels_controller_smali = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes4\com\itsmagic\engine\Activities\Editor\Interface\PanelsController.smali"
with open(panels_controller_smali, "r", encoding="utf-8") as f:
    pc_content = f.read()

# Layout 1 (NoCode -> TerrainStudio)
t1 = """    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10"""

r1 = """    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10"""

# Layout 1 (Objects -> TerrainTools)
t2 = """    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v9"""

r2 = """    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v9

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v9"""

# Layout 2 (NoCode -> TerrainStudio)
t3 = """    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8"""

r3 = """    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8"""

# Layout 2 (Objects -> TerrainTools)
t4 = """    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11"""

r4 = """    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11"""

if "TerrainStudioPanel" not in pc_content:
    pc_content = pc_content.replace(t1, r1).replace(t2, r2).replace(t3, r3).replace(t4, r4)
    with open(panels_controller_smali, "w", encoding="utf-8") as f:
        f.write(pc_content)
    print("Patched PanelsController.smali successfully!")
else:
    print("PanelsController.smali already contains TerrainStudioPanel")
