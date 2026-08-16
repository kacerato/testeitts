.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;
.super Ljava/lang/Object;
.source "TerrainErosionSubTab.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final erosionSimulator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

.field private final scrollContainer:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getErosionSimulator()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->erosionSimulator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

    .line 27
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->scrollContainer:Landroid/widget/ScrollView;

    .line 28
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->buildUI()V

    .line 29
    return-void
.end method

.method private buildUI()V
    .locals 7

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    const/16 v2, 0x18

    const/16 v3, 0x14

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 37
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v3, "PHYSICAL EROSION SIMULATOR"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const-string v3, "#00E5FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    const/16 v1, 0xe

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v2, "Rain Droplets (Batch): 25,000"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v5, Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    const/16 v6, 0x19

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 55
    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;

    invoke-direct {v6, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab$1;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v5, "\ud83d\udca7 Run Hydraulic Erosion (Rain & Rivers)"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 70
    const-string v5, "#1565C0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v5, "\u26f0 Run Thermal Erosion (Talus Angle Avalanches)"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    const-string v2, "#E65100"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->scrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method
