.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public a:Landroid/view/LayoutInflater;

.field public final b:Li4/a;

.field public c:Landroid/widget/FrameLayout;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public f:Landroid/app/Activity;

.field public g:Landroid/content/Context;

.field public h:Z

.field public i:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

.field public final j:Landroid/graphics/Point;

.field public final k:Li4/e;

.field public final l:Lk4/d;

.field public final m:Lk4/b;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public v:Z

.field public final w:Lo4/b;

.field public final x:Lk4/c;

.field public y:I

.field public z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    new-instance v0, Li4/a;

    invoke-direct {v0}, Li4/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j:Landroid/graphics/Point;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->l:Lk4/d;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m:Lk4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$n;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q(Lv3/i;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lo4/b;

    invoke-direct {v0}, Lo4/b;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w:Lo4/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x:Lk4/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a0(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lk4/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x:Lk4/c;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-void
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    return-object p0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    return-object p1
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    return-object p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    return-object p0
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    return p1
.end method


# virtual methods
.method public A()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public A0(LK8/c$a;ZLjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "orientation",
            "isAreaMode",
            "postRunnable"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;ZLK8/c$a;Ljava/lang/Runnable;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public B0(Ln4/f;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->B(Ln4/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->w0(Ln4/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p0}, Li4/b;->a(Ln4/f;Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Li4/d;

    if-eqz p1, :cond_4

    sget-object p1, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H0()V

    return v1

    :cond_4
    return v0
.end method

.method public C(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oglContext"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp6/d;->y1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[E] panels update"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w:Lo4/b;

    iput-object p1, v1, Lo4/b;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iput-object p1, v1, Lo4/b;->b:Li4/a;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->p(Lo4/b;Li4/e;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w:Lo4/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D(Lo4/b;Li4/e;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->j(Lo4/b;Li4/e;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w:Lo4/b;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D(Lo4/b;Li4/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public C0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    return-void
.end method

.method public D(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return-void
.end method

.method public final E(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "area",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;",
            ">(",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->F(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->E(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->E(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public E0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H0()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->K()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, ""

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, LE6/a;

    invoke-direct {v1, p1}, LE6/a;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public final F(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "panelArea",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;",
            ">(",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public F0(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->E(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p0, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->F(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public G0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->T()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H0()V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return v1
.end method

.method public H(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public H0()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "area",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;)",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->J(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final I0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_1
    return-void
.end method

.method public final J(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "panelArea",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;)",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v2, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public J0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;I)I
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "frameID"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lu6/l;->E1()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Panel appends"

    invoke-static {v0}, Lu6/l;->L1(Ljava/lang/String;)Lu6/e;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_2

    move v6, v5

    :goto_1
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    monitor-enter v6

    :try_start_3
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v5

    :goto_3
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v3}, Lu6/l;->J1(Lu6/e;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v0, Li4/a;->a:I

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v0, Li4/a;->b:I

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e:Landroid/graphics/Rect;

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :try_start_6
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->A()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->A()V

    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->X()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Z()V

    :cond_7
    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    monitor-enter v4

    :try_start_7
    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v0, v5

    :goto_6
    :try_start_8
    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->b()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_8
    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->a()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v9, :cond_9

    check-cast v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->D(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/lit8 v7, v0, 0x1

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->X()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    move v0, v6

    goto :goto_8

    :cond_c
    move v0, v7

    :goto_8
    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lu6/l;->E1()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "Panels update"

    invoke-static {v4}, Lu6/l;->L1(Ljava/lang/String;)Lu6/e;

    move-result-object v4

    goto :goto_9

    :cond_d
    move-object v4, v2

    :goto_9
    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/16 v15, 0x8

    if-eqz v6, :cond_12

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->q()V

    :cond_e
    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v7, 0x0

    iput v7, v6, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iput v7, v6, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iput v7, v6, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget-object v10, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v11, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iget-object v12, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    iget-object v13, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m:Lk4/b;

    const/4 v14, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v6 .. v14}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V

    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-static {}, Lrc/a;->q()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L0()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    goto :goto_b

    :cond_10
    :goto_a
    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_11
    :goto_b
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    goto :goto_d

    :cond_12
    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_14

    if-eqz v0, :cond_13

    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_13
    invoke-static {}, LN7/c;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_c
    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v6, :cond_15

    iget-object v10, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v15, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    iget-object v14, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->l:Lk4/d;

    const/16 v18, 0x0

    iget-boolean v13, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v19, v13

    move/from16 v13, v16

    move-object/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v20

    invoke-virtual/range {v6 .. v19}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    :cond_15
    :goto_d
    invoke-static {v4}, Lu6/l;->J1(Lu6/e;)V

    invoke-static {}, Lu6/l;->E1()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Floating update"

    invoke-static {v0}, Lu6/l;->L1(Ljava/lang/String;)Lu6/e;

    move-result-object v2

    :cond_16
    move v4, v5

    :goto_e
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_18

    :try_start_a
    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eq v6, v0, :cond_17

    iget-object v10, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v11, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iget-object v12, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v6 .. v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->R1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    invoke-static {v2}, Lu6/l;->J1(Lu6/e;)V

    iput-boolean v5, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h:Z

    return v5

    :catchall_3
    move-exception v0

    goto :goto_11

    :goto_10
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0

    :goto_11
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :goto_12
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :goto_13
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0
.end method

.method public K(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;)",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p0, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->J(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public L(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v2, :cond_1

    move v3, v0

    :goto_1
    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public M()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public N()Li4/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    return-object v0
.end method

.method public O(I)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public P()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public Q()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public S()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v3, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f:Landroid/app/Activity;

    iput-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g:Landroid/content/Context;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, v1, Li4/a;->a:I

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v1, Li4/a;->b:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Z()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    iget-object v5, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a:Landroid/view/LayoutInflater;

    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b:Li4/a;

    iget-object v11, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    iget-object v12, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->l:Lk4/d;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v14}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->L(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;Lk4/d;IZ)V

    :cond_0
    return-void
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public W(Ltc/h;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->u1()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b0(Ltc/h;)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b0(Ltc/h;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->e0(Ltc/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Touch can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X()Z
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    if-eqz v4, :cond_3

    move v4, v1

    :goto_1
    iget-object v5, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v5

    instance-of v5, v5, Lf6/a;

    if-nez v5, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public Y(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-interface {p1}, Li4/e;->j()V

    return-void
.end method

.method public final Z()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->a0(Z)V

    return-void
.end method

.method public final a0(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removeViews"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, LJ5/a;->q1()V

    return-void

    :cond_1
    sget-object p1, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    const/4 v1, 0x1

    if-gtz v0, :cond_a

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    const-string v3, ""

    if-nez v0, :cond_5

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    sget-object v5, LK8/c;->e:LK8/c$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_4

    if-eq v4, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {v3}, LD8/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/editor_panels.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {v3}, LD8/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/editor_panels_portrait.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    sget-object v5, LK8/c;->e:LK8/c$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_7

    if-eq v4, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {v3}, LD8/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/editor_panels_area.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {v3}, LD8/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/editor_panels_portrait_area.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LX7/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    :try_start_0
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->totalArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v:Z

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->l()Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->floatingPanels:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_9
    :goto_4
    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-nez p1, :cond_b

    sget-object p1, LK8/c;->e:LK8/c$a;

    invoke-static {p1}, Ln/a;->a(LK8/c$a;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_b
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b0()V

    :cond_c
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->J()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q0()V

    :cond_d
    return-void
.end method

.method public final b0()V
    .locals 14

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x2

    const v6, 0x3f333333    # 0.7f

    if-nez v0, :cond_3

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    sget-object v8, LK8/c;->e:LK8/c$a;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v1, :cond_2

    if-eq v7, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v2, Lj4/b;->Horizontal:Lj4/b;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v5, Lj4/b;->Vertical:Lj4/b;

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v9

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lz5/a;

    invoke-direct {v11}, Lz5/a;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v7, v4, v2, v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v9, LJ4/d;

    invoke-direct {v9}, LJ4/d;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    const v8, 0x3f266666    # 0.65f

    invoke-direct {v3, v8, v5, v7, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    sget-object v4, Lj4/a;->CloseDown:Lj4/a;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->p0(Lj4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v7, LA5/a;

    invoke-direct {v7}, LA5/a;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    new-instance v7, LZ5/f;

    invoke-direct {v7}, LZ5/f;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v4, Lj4/b;->Vertical:Lj4/b;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lz5/a;

    invoke-direct {v9}, Lz5/a;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v9, Lj4/b;->Horizontal:Lj4/b;

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v13, LA5/a;

    invoke-direct {v13}, LA5/a;-><init>()V

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    invoke-direct {v5, v3, v4, v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    new-instance v7, LZ5/f;

    invoke-direct {v7}, LZ5/f;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    new-instance v7, LJ4/d;

    invoke-direct {v7}, LJ4/d;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto/16 :goto_1

    :cond_3
    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    sget-object v8, LK8/c;->e:LK8/c$a;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v1, :cond_5

    if-eq v7, v5, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v2, Lj4/b;->Horizontal:Lj4/b;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v3, v4, v2, v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v7, LA5/a;

    invoke-direct {v7}, LA5/a;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    new-instance v7, LZ5/f;

    invoke-direct {v7}, LZ5/f;-><init>()V

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto/16 :goto_1

    :cond_5
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v4, Lj4/b;->Vertical:Lj4/b;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lz5/a;

    invoke-direct {v9}, Lz5/a;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {v9}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;-><init>()V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    sget-object v9, Lj4/b;->Horizontal:Lj4/b;

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v12, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v13, LA5/a;

    invoke-direct {v13}, LA5/a;-><init>()V

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    invoke-direct {v5, v3, v4, v7, v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    new-instance v7, LZ5/f;

    invoke-direct {v7}, LZ5/f;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    new-instance v7, LJ4/d;

    invoke-direct {v7}, LJ4/d;-><init>()V

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;-><init>(FLj4/b;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :goto_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v:Z

    return-void
.end method

.method public c0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w()V

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea1:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->splitArea2:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    :cond_3
    return-void
.end method

.method public final g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->q0()V

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m0()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->m0()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public h0(LK8/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldOrientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-static {}, LN7/c;->e()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y()V

    new-instance v0, Lo4/e;

    invoke-direct {v0}, Lo4/e;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->e(Lo4/e;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n(Lo4/e;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v:Z

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lo4/e;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LK8/c$a;ZLjava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public i0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->s()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public j0()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y0()V

    return-void
.end method

.method public k0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Z()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->u()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->v()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public m0()V
    .locals 0

    return-void
.end method

.method public n0()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I0()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/World/World;->isArea:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x:Lk4/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->x(Lk4/c;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p0()V

    return-void
.end method

.method public r0()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->I0()V

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->y:I

    return-void
.end method

.method public s0(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-interface {p1}, Li4/e;->r()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public t0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->y(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->f(Landroid/widget/FrameLayout;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-ne v1, p1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A(Landroid/widget/FrameLayout;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-interface {p1}, Li4/e;->j()V

    return-void
.end method

.method public u(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;

    invoke-direct {v2, p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Ljava/lang/Object;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b(Lo4/a;)V

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$s;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k:Li4/e;

    invoke-interface {p1}, Li4/e;->j()V

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return-void
.end method

.method public v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public w0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return-void
.end method

.method public x(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public x0()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->y1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public y0()V
    .locals 2

    sget-object v0, LK8/c;->e:LK8/c$a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v:Z

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->z0(LK8/c$a;Z)V

    return-void
.end method

.method public z()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public z0(LK8/c$a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "isAreaMode"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LK8/c$a;ZLjava/lang/Runnable;)V

    return-void
.end method
