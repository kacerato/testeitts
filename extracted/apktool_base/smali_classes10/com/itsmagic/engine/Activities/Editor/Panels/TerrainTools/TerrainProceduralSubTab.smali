.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;
.super Ljava/lang/Object;
.source "TerrainProceduralSubTab.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final scrollContainer:Landroid/widget/ScrollView;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->context:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 26
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->scrollContainer:Landroid/widget/ScrollView;

    .line 27
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->buildUI()V

    .line 28
    return-void
.end method

.method private buildUI()V
    .locals 5

    .line 31
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    const/16 v2, 0x18

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 36
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v3, "PROCEDURAL GENERATORS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const-string v3, "#00E5FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    const/16 v1, 0xe

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    const-string v1, "\u26f0 Perlin Fractal Mountains (Octaves: 6, Persist: 0.5)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    const-string v1, "\u25b2 Ridged Multifractal (Alpine Peaks & Ridges)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    const-string v1, "\u2b21 Worley / Voronoi Cells (Basalt & Plateaus)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    const-string v1, "\u2635 Terrace Quantizer (Canyon Steps)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    const-string v1, "\u26a1 Tectonic Fault Lines (Geological Shifts)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    const-string v1, "\u2248 Desert Sand Dunes (Wind Vector Flow)"

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->createGenButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v2, "\ud83d\ude80 Generate Procedural Terrain"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 55
    const-string v2, "#0288D1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method private createGenButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 6

    .line 63
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 66
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 67
    const/16 v1, 0x10

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 69
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 70
    const/16 v2, 0x30

    const/16 v3, 0x3c

    const/16 v4, 0xa0

    const/16 v5, 0x28

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 71
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    const/4 p1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->scrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method
