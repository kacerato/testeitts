.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;
.super Ljava/lang/Object;
.source "TerrainViewportHUD.java"


# instance fields
.field private final container:Landroid/widget/FrameLayout;

.field private final context:Landroid/content/Context;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

.field private txtSize:Landroid/widget/TextView;

.field private txtStrength:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->container:Landroid/widget/FrameLayout;

    .line 31
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 32
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->buildHUD()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    return-object p0
.end method

.method private buildHUD()V
    .locals 11

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    const/16 v2, 0x18

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 41
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42
    const/16 v3, 0x1c

    const/16 v4, 0x23

    const/16 v5, 0xbe

    const/16 v6, 0x19

    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44
    const/16 v3, 0x46

    const/16 v4, 0x50

    const/16 v5, 0x64

    invoke-static {v5, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    const v3, 0x800033

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v3, "TERRAIN STUDIO 3D"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const-string v3, "#00E5FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getBrushRadius()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "m"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    const/16 v7, 0xc

    const/4 v8, 0x4

    invoke-virtual {v2, v4, v7, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 72
    const/16 v9, 0xc8

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getBrushRadius()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;

    invoke-direct {v9, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$1;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Strength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getBrushStrength()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v4

    const-string v10, "%.2f"

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->txtStrength:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 96
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getBrushStrength()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 97
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$2;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    invoke-virtual {v1, v4, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 114
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda0;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V

    const-string v3, "Wire"

    invoke-direct {p0, v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->createSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    .line 119
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda1;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V

    const-string v4, "Slope"

    invoke-direct {p0, v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->createSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    .line 124
    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD$$ExternalSyntheticLambda2;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;)V

    const-string v5, "Inv (Sub)"

    invoke-direct {p0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->createSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method private createSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 4

    .line 138
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 141
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    const/16 p1, 0xc

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 146
    const/16 p2, 0x34

    const/16 v1, 0x41

    const/16 v2, 0xc8

    const/16 v3, 0x2d

    invoke-static {v2, v3, p2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 147
    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method synthetic lambda$buildHUD$0$com-itsmagic-engine-Activities-Editor-Panels-TerrainStudio-TerrainViewportHUD(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getOverlayMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->WIREFRAME:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->NORMAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->WIREFRAME:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setOverlayMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;)V

    .line 117
    return-void
.end method

.method synthetic lambda$buildHUD$1$com-itsmagic-engine-Activities-Editor-Panels-TerrainStudio-TerrainViewportHUD(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getOverlayMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->SLOPE_HEATMAP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->NORMAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->SLOPE_HEATMAP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setOverlayMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;)V

    .line 122
    return-void
.end method

.method synthetic lambda$buildHUD$2$com-itsmagic-engine-Activities-Editor-Panels-TerrainStudio-TerrainViewportHUD(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->isInvertAction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->setInvertAction(Z)V

    .line 126
    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->isInvertAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Inv [ON]"

    goto :goto_0

    :cond_0
    const-string v0, "Inv [OFF]"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method
