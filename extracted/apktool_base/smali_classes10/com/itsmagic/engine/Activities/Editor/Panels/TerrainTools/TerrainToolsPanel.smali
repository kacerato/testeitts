.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "TerrainToolsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$Factory;
    }
.end annotation


# static fields
.field public static final PANEL_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PANEL_ID:Ljava/lang/String; = "TerrainToolsPanel"


# instance fields
.field private contentFrame:Landroid/widget/FrameLayout;

.field private erosionSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

.field private foliageSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

.field private holesSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;

.field private paintSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;

.field private proceduralSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;

.field private rootLayout:Landroid/widget/LinearLayout;

.field private sculptSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

.field private settingsSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->PANEL_CLASS:Ljava/lang/Class;

    .line 46
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$Factory;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    const-string v0, "Terrain Tools"

    const-string v1, "TerrainToolsPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    const-string p1, "Terrain Tools"

    const-string v0, "TerrainToolsPanel"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;
    .locals 4

    .line 111
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 114
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    const/16 p1, 0x10

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 117
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 118
    const/16 p2, 0x30

    const/16 v1, 0x3c

    const/16 v2, 0xa0

    const/16 v3, 0x28

    invoke-static {v2, v3, p2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$$ExternalSyntheticLambda0;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-object v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 6

    .line 59
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->M()Landroid/content/Context;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    .line 62
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    const-string v2, "#171A21"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->sculptSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    .line 67
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->paintSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;

    .line 68
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->foliageSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

    .line 69
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->proceduralSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;

    .line 70
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->erosionSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

    .line 71
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->holesSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;

    .line 72
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->settingsSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;

    .line 75
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    const-string v3, "#0F1116"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 79
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const/16 v4, 0x8

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->sculptSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Sculpt"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->paintSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainPaintSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Paint (PBR)"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->foliageSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainFoliageSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Foliage"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->proceduralSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainProceduralSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Procedural"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->erosionSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainErosionSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Erosion"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->holesSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainHolesSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Holes"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->settingsSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSettingsSubTab;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "Settings"

    invoke-direct {p0, v0, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->createTabButton(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 92
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    .line 96
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->sculptSubTab:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainSculptSubTab;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->rootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method synthetic lambda$createTabButton$0$com-itsmagic-engine-Activities-Editor-Panels-TerrainTools-TerrainToolsPanel(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 131
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method
