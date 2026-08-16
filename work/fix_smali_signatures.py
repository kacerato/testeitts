import os

studio_panel = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes10\com\itsmagic\engine\Activities\Editor\Panels\TerrainStudio\TerrainStudioPanel.smali"
tools_panel = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes10\com\itsmagic\engine\Activities\Editor\Panels\TerrainTools\TerrainToolsPanel.smali"

for file_path in [studio_panel, tools_panel]:
    if os.path.exists(file_path):
        with open(file_path, "r", encoding="utf-8") as f:
            content = f.read()
        
        # Replace method signatures
        content = content.replace(
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;)V",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V"
        )
        content = content.replace(
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"
        )
        
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"Fixed signatures and constructors in {os.path.basename(file_path)}")

# Remove any stub in smali_classes10
stub_dir = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes10\com\itsmagic\engine\Activities\Editor\Interface"
if os.path.exists(stub_dir):
    import shutil
    shutil.rmtree(stub_dir)
    print("Removed stub directory from smali_classes10")
