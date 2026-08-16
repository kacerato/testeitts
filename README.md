# ITsMagic Engine 2.0 - Complete Source Code & Unity-Style Terrain Studio

Repositório completo de engenharia reversa, reestruturação de código-fonte Android Studio (Gradle) e implementação do **Unity-Style Terrain Studio** para o **ITsMagic Engine 2.0 (P2.2026.08f4)**.

---

## 📁 Estrutura do Repositório

```
itsmaagic/
├── source/                        # Projeto Android Studio completo (Gradle)
│   ├── app/
│   │   ├── src/main/java/         # +34.400 arquivos de código-fonte Java organizados
│   │   │   └── com/itsmagic/engine/
│   │   │       ├── Activities/Editor/Panels/TerrainStudio/   # Viewport 3D do Terrain Studio
│   │   │       ├── Activities/Editor/Panels/TerrainTools/    # Painel de ferramentas e 7 sub-abas
│   │   │       └── Engines/Engine/ComponentsV2/Terrain/Pro/  # Motor de escultura, erosão, dispersão
│   │   ├── src/main/jniLibs/      # 63 bibliotecas nativas (.so) organizadas por ABI
│   │   ├── src/main/assets/       # +15.600 shaders GLSL, texturas, modelos, fonts e configs
│   │   └── src/main/res/          # Recursos Android (layouts, values, drawables, XMLs)
│   ├── build.gradle               # Configuração AGP 8.5.2, Java 17, compileSdk 36
│   └── settings.gradle
│
├── extracted/
│   └── apktool_base/              # Base completa Apktool com SMALI (classes1 a classes10)
│       ├── AndroidManifest.xml    # Manifest corrigido (Standalone / Licença Removida)
│       ├── smali_classes1..9/     # Bytecode SMALI original do motor
│       └── smali_classes10/       # Bytecode SMALI do novo sistema de terreno
│
├── tools/                         # Ferramentas de compilação, assinatura e APK tooling
│   ├── apktool.jar                # Apktool v2.10.0
│   └── debug.keystore             # Chave de assinatura RSA 2048 / SHA-256
│
└── work/                          # Scripts de automação e pipeline de compilação
    ├── build_align_sign_install.py
    ├── recompile_terrain_dex.py
    └── fix_smali_signatures.py
```

---

## ⛰️ Recursos do Unity-Style Terrain Studio Implementados

1. **Aba Terrain Studio no Viewport Central:**
   - Tela 3D com captura de toque para escultura em tempo real no mesh do terreno.
   - Gizmo 3D circular (`TerrainBrushGizmoRenderer`) projetado dinamicamente sobre o relevo.
   - HUD Flutuante nativo (`TerrainViewportHUD`) com controle de raio, opacidade, altura alvo e heatmaps de declive.

2. **Aba Terrain Tools na Barra Lateral (7 Sub-Abas):**
   - **Sculpt (Escultura):** `Raise/Lower`, `Smooth`, `Flatten` com target height, `Stamp Heightmap`, `Pinch/Rake`, `Terrace/Step`, `Erode Brush`, `Ramp/Road Builder`.
   - **Paint (Pintura de Texturas PBR):** Paleta de texturas multicamadas, controle de peso de splatmap e suavização de transições.
   - **Foliage (Vegetação & Scatter):** Dispersão procedural de árvores e grama 3D por densidade, escala aleatória, rotação e declividade.
   - **Procedural (Geração Procedural):** Ruídos Perlin, Simplex, Ridged Multifractal e Voronoi com semente configurável.
   - **Erosion (Simulador de Erosão):** Erosão hidráulica baseada em partículas de gotas de chuva e talude térmico por deslizamento gravitacional.
   - **Holes (Corte de Túneis/Cavernas):** Máscara de corte de mesh para criação de grutas e entradas subterrâneas.
   - **Settings (Configurações Técnicas):** Resolução de heightmap, tamanho do chunk (LODs), distâncias de renderização e exportação/importação de RAW 16-bit / PNG.

---

## 🚀 Como Compilar e Instalar

### Requisitos:
- Java JDK 17+
- Android SDK (Build-Tools `36.1.0` ou superior com `zipalign`, `apksigner`, `d8`)
- Python 3.8+

### Pipeline Automatizado:
```bash
# Recompilar smali e gerar APK assinado e alinhado
python work/recompile_terrain_dex.py
python work/build_align_sign_install.py
```
