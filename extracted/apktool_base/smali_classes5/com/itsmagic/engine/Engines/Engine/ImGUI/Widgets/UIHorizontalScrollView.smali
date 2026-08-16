.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final X:Ljava/lang/String; = "UIHorizontalScrollView"

.field public static final Y:Ljava/lang/Class;


# instance fields
.field public P:F

.field public Q:I

.field public R:F

.field public S:F

.field public T:Ltc/h;

.field public U:Z

.field public V:F

.field public W:LJAVARuntime/Component;

.field public scroll:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private sensitivity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Y:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIHorizontalScrollView"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->P:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    return p0
.end method

.method private getTouchAxisOnUI(Ltc/h;)F
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


# virtual methods
.method public afterTouchUpdate()V
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, LNc/b;->H(I)I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    invoke-static {v2}, LNc/b;->H(I)I

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float v2, v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->T:Ltc/h;

    if-eq v4, v2, :cond_5

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->T:Ltc/h;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->U:Z

    :cond_5
    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->getTouchAxisOnUI(Ltc/h;)F

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->U:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->U:Z

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->V:F

    :cond_6
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->V:F

    sub-float v4, v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->V:F

    iget-boolean v2, v2, Ltc/h;->e:Z

    if-eqz v2, :cond_8

    invoke-static {}, LK8/d;->e()F

    move-result v2

    if-lez v1, :cond_a

    cmpl-float v3, v2, v5

    if-lez v3, :cond_a

    neg-float v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    div-float/2addr v3, v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->P:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    mul-float/2addr v3, v1

    mul-float/2addr v3, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    goto :goto_2

    :cond_7
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->T:Ltc/h;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->U:Z

    :cond_8
    invoke-static {}, LK8/d;->e()F

    move-result v2

    cmpl-float v3, v2, v5

    if-lez v3, :cond_9

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->P:F

    mul-float v4, v3, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->P:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    int-to-float v1, v1

    mul-float/2addr v3, v1

    mul-float/2addr v3, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    goto :goto_2

    :cond_9
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->P:F

    :cond_a
    :goto_2
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    int-to-float v2, v2

    invoke-static {v5, v1, v2}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    float-to-int v1, v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    :cond_b
    return-void

    :goto_3
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    if-eq v0, v2, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    :cond_c
    throw v1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070216

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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "scroll"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;)V

    const-string v2, "Sensitivity"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getScroll()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    return v0
.end method

.method public getSensitivity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "HorizontalScrollView"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIHorizontalScrollView:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "child"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->R:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    return-void
.end method

.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->Q:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, LNc/b;->E(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    float-to-int v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->R:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->W:LJAVARuntime/Component;

    return-void
.end method

.method public setScroll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scroll"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->scroll:I

    int-to-float p1, p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->S:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setSensitivity(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, LNc/b;->G(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->sensitivity:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
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

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->W:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIHorizontalScrollView;

    invoke-direct {v0, p0}, LJAVARuntime/UIHorizontalScrollView;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIHorizontalScrollView;->W:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
