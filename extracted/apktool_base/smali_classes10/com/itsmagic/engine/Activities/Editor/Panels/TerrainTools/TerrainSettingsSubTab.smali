.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;
.super Ljava/lang/Object;
.source "TerrainSettingsSubTab.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final scrollContainer:Landroid/widget/ScrollView;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    .line 24
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 25
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->scrollContainer:Landroid/widget/ScrollView;

    .line 26
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->buildUI()V

    .line 27
    return-void
.end method

.method private buildUI()V
    .locals 7

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    const/16 v2, 0x18

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 35
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v3, "TERRAIN SETTINGS & I/O"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const-string v3, "#00E5FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    const/4 v1, 0x0

    const/16 v3, 0xe

    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v5, "Heightmap Resolution: 1025 x 1025 (16-bit precision)\nTerrain Size: 1000m x 1000m x 300m\nLOD Pixel Error: 5.0 (GeoMipMap Quadtree)"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    invoke-virtual {v2, v1, v1, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v2, Landroid/widget/Button;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v4, "\u2699 Bake Bullet Physics Heightfield (libbulletjme)"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 55
    const-string v4, "#2E7D32"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v2, "\ud83d\udce5 Import Heightmap (16-bit RAW / PNG)"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    const-string v2, "#455A64"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v3, "\ud83d\udce4 Export Heightmap (16-bit RAW / OBJ Mesh)"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 70
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->scrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method
