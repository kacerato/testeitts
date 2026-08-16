.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;
.super Ljava/lang/Object;
.source "TerrainPaintSubTab.java"


# instance fields
.field private final biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

.field private final context:Landroid/content/Context;

.field private final scrollContainer:Landroid/widget/ScrollView;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 29
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getBiomeEngine()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    .line 30
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->scrollContainer:Landroid/widget/ScrollView;

    .line 31
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->buildUI()V

    .line 32
    return-void
.end method

.method private buildUI()V
    .locals 7

    .line 35
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const/16 v2, 0x18

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v3, "PBR TEXTURE LAYERS & BIOMES"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const-string v3, "#00E5FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 45
    const/16 v3, 0xe

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    .line 50
    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->createLayerCard(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v3, "+ Add Texture Layer (Albedo/Normal/Rough/Height)"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 57
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 58
    const-string v6, "#37474F"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v6, "Enable Triplanar Projection on Steep Cliffs (> 60\u00b0)"

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    const/16 v1, 0xc

    invoke-virtual {v2, v5, v4, v5, v1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 71
    const-string v2, "\u26a1 Auto-Bake Biome Splatmaps (Slope & Height Rules)"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 73
    const-string v2, "#00897B"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method private createLayerCard(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;)Landroid/widget/LinearLayout;
    .locals 7

    .line 81
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    const/16 v2, 0x10

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 85
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 86
    const/16 v3, 0x2a

    const/16 v4, 0x37

    const/16 v5, 0xa0

    const/16 v6, 0x23

    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 87
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (Slope: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minSlopeDeg:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u00b0 - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxSlopeDeg:F

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\u00b0)"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    const/4 p1, 0x0

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->scrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method
