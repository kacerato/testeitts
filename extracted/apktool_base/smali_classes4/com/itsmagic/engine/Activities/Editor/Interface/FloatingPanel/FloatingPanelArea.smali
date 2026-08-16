.class public Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$j;
    }
.end annotation


# instance fields
.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Lm4/c;

.field public U:Li4/a;

.field public V:Landroid/content/Context;

.field public W:Lm4/a;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:F

.field public b0:Z

.field public c0:Z

.field public d0:Lq4/c;

.field public final e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/a;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Z

.field public floatingH:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public floatingW:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public floatingX:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public floatingY:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public g0:F

.field public h0:Z

.field public i0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

.field public final j0:Lk4/b;

.field public k0:Li4/e;

.field public l0:Landroid/view/View;

.field public m0:Landroid/view/View;

.field public n0:Landroid/view/View;

.field public o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

.field public p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

.field public q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->P:I

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q:I

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    .line 7
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Y:Z

    .line 8
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Z:Z

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    .line 11
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->j0:Lk4/b;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>(FFFF)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->P:I

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q:I

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    .line 20
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Y:Z

    .line 21
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Z:Z

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    .line 24
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->j0:Lk4/b;

    .line 27
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->z0(F)V

    .line 28
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G0(F)V

    .line 29
    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    .line 30
    invoke-static {p2}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    .line 31
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    .line 32
    invoke-static {p4}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    return-void
.end method

.method public static synthetic V0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q1()V

    return-void
.end method

.method public static synthetic W0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->z1()V

    return-void
.end method

.method public static synthetic X0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    return p1
.end method

.method public static synthetic Y0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lm4/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    return-object p0
.end method

.method public static synthetic Z0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lm4/a;)Lm4/a;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    return-object p1
.end method

.method public static synthetic a1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    return-object p1
.end method

.method public static synthetic b1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    return-object p1
.end method

.method public static synthetic c1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    return-object p1
.end method

.method public static g1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x(Ljava/lang/String;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method


# virtual methods
.method public A1(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public B1()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public C1(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public D(Lo4/b;Li4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engineUpdateData",
            "panelsControllerListener"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D(Lo4/b;Li4/e;)V

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->a0:F

    invoke-static {}, LK8/d;->e()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->a0:F

    return-void
.end method

.method public D1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowCloseX"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d0:Lq4/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq4/c;->h(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    return-void
.end method

.method public E1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureTouchWhenClickOutside"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Z:Z

    return-void
.end method

.method public F1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeWhenClickOutside"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Y:Z

    return-void
.end method

.method public G1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeWhenPressBack"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    return-void
.end method

.method public H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDragView"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->i0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method

.method public I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "mode"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->P:I

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->P:I

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    :goto_0
    return-object p0
.end method

.method public J1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingH"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    return-void
.end method

.method public K1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingW"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    return-void
.end method

.method public L1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingX"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    return-void
.end method

.method public M1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingY"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    return-void
.end method

.method public N1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    return-void
.end method

.method public O1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleton"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->h0:Z

    return-void
.end method

.method public P1(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "dragCallBack"
        }
    .end annotation

    sget-object p1, Lrc/a;->l:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/b;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int p2, p2

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    iput p2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->a:I

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->c:F

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->d:F

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->e:F

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->f:F

    invoke-interface {p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$j;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;)V

    :cond_0
    return-void
.end method

.method public final Q1()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->z1()V

    :goto_0
    return-void
.end method

.method public R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    iput-object v0, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->V:Landroid/content/Context;

    iput-object v6, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->U:Li4/a;

    iput-object v7, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->k0:Li4/e;

    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    invoke-static {}, LK8/d;->d()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->i0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->e()V

    :cond_0
    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    move v0, v4

    :goto_0
    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    invoke-interface {v7, p0}, Li4/e;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iput-boolean v4, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo4/a;

    invoke-interface {v2}, Lo4/a;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    iput v2, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    goto :goto_4

    :cond_4
    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->X()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0600b3

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v5, v6, Li4/a;->b:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    add-float/2addr v5, v1

    iput v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    goto :goto_3

    :cond_5
    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5, p3}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget v8, v6, Li4/a;->b:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    add-float/2addr v1, v5

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    :goto_3
    invoke-virtual {p0, p3, v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q1(Landroid/content/Context;Li4/a;)F

    move-result v1

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    invoke-static {v1, v5, v3}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p3, v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q1(Landroid/content/Context;Li4/a;)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    :goto_4
    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    if-eqz v1, :cond_8

    sget-object v1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/b;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ltc/b;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->a:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-static {}, LK8/c;->b()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->c:F

    add-float/2addr v8, v1

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v8

    iput v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->d:F

    sub-float/2addr v8, v1

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    goto :goto_5

    :cond_7
    iput-object v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    :cond_8
    :goto_5
    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    if-eqz v1, :cond_a

    sget-object v1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/b;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ltc/b;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->a:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-static {}, LK8/c;->b()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->d:F

    add-float/2addr v8, v1

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    goto :goto_6

    :cond_9
    iput-object v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    :cond_a
    :goto_6
    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    if-eqz v1, :cond_c

    sget-object v1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/b;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ltc/b;->c()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v1, v1

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->b:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-static {}, LK8/c;->a()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    iget v8, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;->f:F

    add-float/2addr v8, v1

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    goto :goto_7

    :cond_b
    iput-object v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$k;

    :cond_c
    :goto_7
    iget-object v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    if-eqz v1, :cond_e

    sget-object v1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/b;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ltc/b;->c()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v5, v5

    invoke-virtual {v1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v1, v1

    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    iget v9, v8, Lm4/a;->a:I

    sub-int/2addr v5, v9

    iget v9, v8, Lm4/a;->b:I

    sub-int/2addr v1, v9

    int-to-float v5, v5

    iget v9, v6, Li4/a;->a:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    iget v8, v8, Lm4/a;->c:F

    add-float/2addr v8, v5

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v5

    iput v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    int-to-float v1, v1

    iget v5, v6, Li4/a;->b:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iget-object v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    iget v5, v5, Lm4/a;->d:F

    add-float/2addr v5, v1

    invoke-static {v5}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    goto :goto_8

    :cond_d
    iput-object v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W:Lm4/a;

    :cond_e
    :goto_8
    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->P:I

    if-ltz v1, :cond_10

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    iget-boolean v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    if-eqz v5, :cond_f

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    invoke-static {v1, v5}, LNc/b;->M(FF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    goto :goto_9

    :cond_f
    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    :cond_10
    :goto_9
    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Q:I

    if-ltz v1, :cond_12

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    iget-boolean v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    if-eqz v5, :cond_11

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    invoke-static {v1, v5}, LNc/b;->M(FF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    goto :goto_a

    :cond_11
    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    :cond_12
    :goto_a
    invoke-virtual {p0, p3, v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->r1(Landroid/content/Context;Li4/a;)F

    move-result v1

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    invoke-static {v1, v5, v3}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    sub-float v1, v3, v1

    invoke-static {v2, v5, v1}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    iget v5, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    sub-float v5, v3, v5

    invoke-static {v2, v1, v5}, LNc/b;->E(FFF)F

    move-result v1

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    iput v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    const/4 v2, 0x1

    if-nez v1, :cond_13

    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v1

    if-nez v1, :cond_13

    iput-boolean v2, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X:Z

    return-void

    :cond_13
    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Y:Z

    if-eqz v1, :cond_1a

    iget v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1a

    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->b0:Z

    if-nez v1, :cond_16

    iput-boolean v2, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->b0:Z

    move v1, v4

    :goto_b
    invoke-static {}, Lrc/a;->L()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v2

    invoke-virtual {v2}, Ltc/h;->k()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    :goto_c
    iput-boolean v4, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->b0:Z

    :cond_16
    iget-boolean v1, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->b0:Z

    if-eqz v1, :cond_1a

    :goto_d
    invoke-static {}, Lrc/a;->L()I

    move-result v1

    if-ge v4, v1, :cond_1a

    invoke-static {v4}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    iget-boolean v2, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Z:Z

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    iget-boolean v2, v1, Ltc/h;->e:Z

    if-nez v2, :cond_19

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c0(Ltc/h;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    goto :goto_e

    :cond_18
    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v1, Ltc/h;->e:Z

    if-nez v2, :cond_19

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c0(Ltc/h;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    goto :goto_e

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    :goto_e
    iget-object v8, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->j0:Lk4/b;

    iget-boolean v9, v10, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V

    return-void
.end method

.method public U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->s1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lq4/c;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    const p5, 0x7f0700b8

    invoke-direct {p2, p5, p4}, Lq4/c;-><init>(ILq4/d;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d0:Lq4/c;

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->j(Lq4/c;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d0:Lq4/c;

    iget-boolean p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    invoke-virtual {p2, p4}, Lq4/c;->h(Z)V

    new-instance p2, Lq4/c;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$c;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    const p5, 0x7f070221

    invoke-direct {p2, p5, p4}, Lq4/c;-><init>(ILq4/d;)V

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->j(Lq4/c;Landroid/content/Context;)V

    const p2, 0x7f0902bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->l0:Landroid/view/View;

    const p2, 0x7f0900e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->m0:Landroid/view/View;

    const p2, 0x7f090405

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n0:Landroid/view/View;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->l0:Landroid/view/View;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$d;

    invoke-direct {p4, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->m0:Landroid/view/View;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$e;

    invoke-direct {p4, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n0:Landroid/view/View;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$f;

    invoke-direct {p4, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public a0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    return v0
.end method

.method public d1(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->e0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->V:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->U:Li4/a;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->q1(Landroid/content/Context;Li4/a;)F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    :cond_0
    return-void
.end method

.method public f1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    return-void
.end method

.method public h1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d1(Lo4/a;)V

    return-void
.end method

.method public i1(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b(Lo4/a;)V

    return-void
.end method

.method public j1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->a0:F

    return v0
.end method

.method public k(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->T:Lm4/c;

    if-eqz v0, :cond_0

    iget v0, v0, Lm4/c;->a:F

    float-to-int v0, v0

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->T:Lm4/c;

    iget v0, v0, Lm4/c;->b:F

    float-to-int v0, v0

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->T:Lm4/c;

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k(Lo4/e;)V

    return-void
.end method

.method public k1()Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->i0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    return-object v0
.end method

.method public l1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    return v0
.end method

.method public m1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    return v0
.end method

.method public n(Lo4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    new-instance v0, Lm4/c;

    invoke-direct {v0}, Lm4/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->T:Lm4/c;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    invoke-static {v1}, LN7/c;->k(F)F

    move-result v1

    iput v1, v0, Lm4/c;->a:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->T:Lm4/c;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g:F

    invoke-static {v1}, LN7/c;->k(F)F

    move-result v1

    iput v1, v0, Lm4/c;->b:F

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n(Lo4/e;)V

    return-void
.end method

.method public n1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    return v0
.end method

.method public o1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    return v0
.end method

.method public p1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->g0:F

    return v0
.end method

.method public final q1(Landroid/content/Context;Li4/a;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->X()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p2, Li4/a;->b:I

    :goto_1
    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p2, Li4/a;->b:I

    goto :goto_1
.end method

.method public final r1(Landroid/content/Context;Li4/a;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "editor3DScreen"
        }
    .end annotation

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Li4/a;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method public s1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    const v6, 0x7f0c007e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public t1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->c0:Z

    return v0
.end method

.method public u1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Z:Z

    return v0
.end method

.method public v1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->Y:Z

    return v0
.end method

.method public w0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Li4/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public w1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f0:Z

    return v0
.end method

.method public x1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->S:Z

    return v0
.end method

.method public y1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->h0:Z

    return v0
.end method

.method public final z1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R:Z

    return-void
.end method
