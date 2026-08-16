.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# static fields
.field public static final V:Ljava/lang/String; = "UISlideArea"

.field public static final W:Ljava/lang/Class;

.field public static final X:F = 5.0f


# instance fields
.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public R:Ltc/h;

.field public S:Z

.field public T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

.field public U:LJAVARuntime/Component;

.field private deadzone:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private intensityMultiplier:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->W:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UISlideArea"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    return p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    return p1
.end method

.method private getAxisEventListener()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAxisEventListener:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;-><init>()V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->T:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    return-object v0
.end method

.method private getTouchPosXOnUI(Ltc/h;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v1, p1, LV9/r;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getTouchPosYOnUI(Ltc/h;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v1, p1, LV9/r;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method


# virtual methods
.method public afterTouchUpdate()V
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, LNc/b;->S0(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouchCount()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v5, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isPressed()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->R:Ltc/h;

    if-eq v3, v1, :cond_4

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->R:Ltc/h;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->S:Z

    :cond_4
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->getTouchPosXOnUI(Ltc/h;)F

    move-result v2

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->getTouchPosYOnUI(Ltc/h;)F

    move-result v3

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->S:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->S:Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v5, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v6

    sub-float v6, v2, v6

    iput v6, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v6

    sub-float v6, v3, v6

    iput v6, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v5, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_1
    iget-boolean v1, v1, Ltc/h;->e:Z

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    goto :goto_5

    :cond_6
    cmpl-float v1, v0, v4

    if-lez v1, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v3, v0

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    :goto_2
    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v2, v0

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :goto_3
    invoke-static {}, LK8/d;->e()F

    move-result v0

    cmpl-float v1, v0, v4

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v2, v0

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v2, v0

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    const/high16 v2, -0x3f600000    # -5.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v1, v3}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v2, v1, v3}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    invoke-static {v1, v2}, LNc/b;->j0(FF)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    invoke-static {v1, v2}, LNc/b;->j0(FF)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Z(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :goto_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->getAxisEventListener()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;->setValue(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_a
    return-void

    :cond_b
    :goto_6
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->R:Ltc/h;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->S:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->getAxisEventListener()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;->setValue(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_c
    return-void

    :cond_d
    :goto_7
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->R:Ltc/h;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->S:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->getAxisEventListener()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;->setValue(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_e
    return-void
.end method

.method public calculateInternalSizeEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public calculateInternalSizeStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    int-to-float v0, v0

    float-to-int v6, p1

    float-to-int v7, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->setInternalWidgetRect(IIIIII)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDeadzone()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022f

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Deadzone"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;)V

    const-string v3, "Intensity"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getIntensityMultiplier()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SlideArea"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UISlideArea:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getValue()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onGuiEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public onGuiStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public setDeadzone(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deadzone"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->deadzone:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setIntensityMultiplier(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intensityMultiplier"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, LNc/b;->G(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->intensityMultiplier:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->U:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->U:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UISlideArea;

    invoke-direct {v0, p0}, LJAVARuntime/UISlideArea;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideArea;->U:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
