.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;
.super Ljava/lang/Object;
.source "TerrainSculptSubTab.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final scrollContainer:Landroid/widget/ScrollView;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 27
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->scrollContainer:Landroid/widget/ScrollView;

    .line 28
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->buildUI()V

    .line 29
    return-void
.end method

.method private buildUI()V
    .locals 7

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

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

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v5, "SCULPT & SHAPE TOOLS"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const-string v5, "#00E5FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    const-string v2, "\u25b2 Raise / Lower (Smooth Add/Sub)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->RAISE_LOWER:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    const-string v2, "\u25a0 Paint Height (Target Altitude)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->PAINT_HEIGHT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    const-string v2, "\u2248 Smooth (Laplacian / Gaussian)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->SMOOTH:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    const-string v2, "\u2014 Flatten (Plateau Level)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->FLATTEN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    const-string v2, "\u2621 Ramp / Road Path Tool"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->RAMP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const-string v2, "\u2726 Stamp Heightmap (Alpha Brush)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->STAMP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    const-string v2, "\u2756 Pinch / Inflate (Cliffs)"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->PINCH:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-direct {p0, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v4, "BRUSH FALLOFF CURVE"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    const/16 v1, 0xa

    invoke-virtual {v2, v6, v3, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    const-string v2, "SmoothStep"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createCurveButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const-string v2, "Linear"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->LINEAR:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createCurveButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    const-string v2, "Gaussian"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->GAUSSIAN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createCurveButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    const-string v2, "Spike"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SPIKE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->createCurveButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private createCurveButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)Landroid/widget/Button;
    .locals 5

    .line 106
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 109
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 110
    const/16 p1, 0xa

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 112
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 113
    const/16 v1, 0x3c

    const/16 v2, 0x4b

    const/16 v3, 0xb4

    const/16 v4, 0x32

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 114
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 122
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda1;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object v0
.end method

.method private createToolButton(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)Landroid/widget/Button;
    .locals 6

    .line 78
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 81
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    const/16 v1, 0x14

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 84
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getActiveTool()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    move-result-object v2

    if-ne v2, p2, :cond_0

    const-string v2, "#00838F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    const/16 v3, 0x3c

    const/16 v4, 0xa0

    const/16 v5, 0x28

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 86
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    const/16 v2, 0x50

    const/16 v3, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    const/4 p1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab$$ExternalSyntheticLambda0;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;Landroid/widget/Button;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->scrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method

.method synthetic lambda$createCurveButton$1$com-itsmagic-engine-Activities-Editor-Panels-TerrainTools-TerrainSculptSubTab(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getFalloffCurve()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->setType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V

    .line 127
    return-void
.end method

.method synthetic lambda$createToolButton$0$com-itsmagic-engine-Activities-Editor-Panels-TerrainTools-TerrainSculptSubTab(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setActiveTool(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)V

    .line 99
    const-string p1, "#00838F"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 100
    return-void
.end method
