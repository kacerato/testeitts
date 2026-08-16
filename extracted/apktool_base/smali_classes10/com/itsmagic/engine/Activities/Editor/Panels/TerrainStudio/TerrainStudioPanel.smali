.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "TerrainStudioPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$Factory;
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

.field public static final PANEL_ID:Ljava/lang/String; = "TerrainStudioPanel"


# instance fields
.field private final brushGizmo:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private final terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

.field private viewportHUD:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->PANEL_CLASS:Ljava/lang/Class;

    .line 40
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$Factory;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    const-string v0, "Terrain Studio"

    const-string v1, "TerrainStudioPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->brushGizmo:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    .line 25
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    const-string p1, "Terrain Studio"

    const-string v0, "TerrainStudioPanel"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->brushGizmo:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    .line 25
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 49
    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->M()Landroid/content/Context;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    .line 56
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    const-string v2, "#12141A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 59
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$$ExternalSyntheticLambda0;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->viewportHUD:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->rootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getBrushGizmo()Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->brushGizmo:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    return-object v0
.end method

.method public getViewportHUD()Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->viewportHUD:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainViewportHUD;

    return-object v0
.end method

.method synthetic lambda$C0$0$com-itsmagic-engine-Activities-Editor-Panels-TerrainStudio-TerrainStudioPanel(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 83
    const/4 p1, 0x0

    return p1

    .line 80
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 81
    return v2

    .line 72
    :pswitch_1
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->brushGizmo:Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->setVisible(Z)V

    .line 74
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->terrainManager:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    const v3, 0x3c83126f    # 0.016f

    invoke-virtual {p2, v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->applySculptStroke(FFF)V

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 76
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
