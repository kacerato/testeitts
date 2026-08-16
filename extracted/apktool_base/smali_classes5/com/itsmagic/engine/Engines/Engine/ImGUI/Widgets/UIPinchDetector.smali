.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# static fields
.field public static final F1:F = 5.0f

.field public static final H1:Ljava/lang/String; = "UIPinchDetector"

.field public static final L1:Ljava/lang/Class;


# instance fields
.field public D0:Ltc/h;

.field public P:Z

.field public Q:F

.field public R:Z

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public b1:Z

.field public i1:Z

.field public m1:F

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public q1:F

.field public v0:Ltc/h;

.field public v1:F

.field public y1:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->L1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIPinchDetector"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->m1:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q1:F

    return-void
.end method

.method private calculate(Ltc/h;Ltc/h;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t0",
            "t1"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v0}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->calculateTouchSlide(Ltc/h;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v12, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->calculateTouchSlide(Ltc/h;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v1

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    invoke-static {}, LK8/c;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    invoke-static {}, LK8/c;->a()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    invoke-static {}, LK8/c;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    invoke-static {}, LK8/c;->a()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v1:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    sub-float p2, p1, p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Q:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Q:F

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v1:F

    return-void
.end method

.method private calculateTouchSlide(Ltc/h;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "firstTouch",
            "axisValue",
            "currentPos",
            "lastPos"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getTouchPosXOnUI(Ltc/h;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getTouchPosYOnUI(Ltc/h;)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, LNc/b;->S0(FF)F

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v0:Ltc/h;

    if-eq p2, p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v0:Ltc/h;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->b1:Z

    :cond_0
    invoke-virtual {p4, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->b1:Z

    if-nez p2, :cond_1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->b1:Z

    invoke-virtual {p5, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    invoke-virtual {p3, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void

    :cond_1
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    sub-float p2, v0, p2

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    sub-float p2, v1, p2

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {p5, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->D0:Ltc/h;

    if-eq p2, p1, :cond_3

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->D0:Ltc/h;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->i1:Z

    :cond_3
    invoke-virtual {p4, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->i1:Z

    if-nez p2, :cond_4

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->i1:Z

    invoke-virtual {p5, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    invoke-virtual {p3, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void

    :cond_4
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    sub-float p2, v0, p2

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    sub-float p2, v1, p2

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {p5, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_0
    invoke-virtual {p1}, Ltc/h;->s()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p3, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void

    :cond_5
    cmpl-float p1, v2, v5

    if-lez p1, :cond_7

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr p1, v2

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr p1, v2

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/d;->e()F

    move-result p1

    cmpl-float p2, p1, v5

    if-lez p2, :cond_6

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr p2, p1

    iput p2, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr p4, p1

    iput p4, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/high16 p1, -0x3f600000    # -5.0f

    const/high16 p4, 0x40a00000    # 5.0f

    invoke-static {p1, p2, p4}, LNc/b;->E(FFF)F

    move-result p2

    iput p2, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {p1, p2, p4}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->m1:F

    invoke-static {p1, p2}, LNc/b;->j0(FF)F

    move-result p1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->m1:F

    invoke-static {p1, p2}, LNc/b;->j0(FF)F

    move-result p1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q1:F

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Z(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void

    :cond_6
    invoke-virtual {p3, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void

    :cond_7
    invoke-virtual {p3, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void
.end method

.method private getTouchAt(I)Ltc/h;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouchCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouchAt(I)Ltc/h;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
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

.method private resetPinch()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->P:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->R:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Q:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v0:Ltc/h;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->D0:Ltc/h;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->b1:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->i1:Z

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->v1:F

    return-void
.end method


# virtual methods
.method public afterTouchUpdate()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

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
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;-><init>()V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDeadzone()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->m1:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022f

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getIntensityMultiplier()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q1:F

    return v0
.end method

.method public getSlide()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PinchDetector"

    return-object v0
.end method

.method public getValue()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Q:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isPinchingIn()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->R:Z

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

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->resetPinch()V

    return-void

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->setMultiTouch(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouchCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getTouchAt(I)Ltc/h;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getTouchAt(I)Ltc/h;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq v0, v1, :cond_5

    invoke-virtual {v0}, Ltc/h;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->calculate(Ltc/h;Ltc/h;)V

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->P:Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->R:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->resetPinch()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->resetPinch()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->resetPinch()V

    :goto_1
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->m1:F

    return-void
.end method

.method public setIntensityMultiplier(F)V
    .locals 0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->q1:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->y1:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->y1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIPinchDetector;

    invoke-direct {v0, p0}, LJAVARuntime/UIPinchDetector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->y1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
