.class public abstract Lh7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/b$i;,
        Lh7/b$j;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public B:Z

.field public C:Z

.field public final D:Lh7/b$i;

.field public volatile E:Ljava/lang/String;

.field public F:Z

.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final j:Landroid/content/Context;

.field public final k:Landroid/app/Activity;

.field public final l:Landroid/view/LayoutInflater;

.field public final m:Ln7/e;

.field public final n:Ln7/d;

.field public volatile o:Ljava/lang/String;

.field public volatile p:Ljava/io/File;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Li7/a;

.field public w:Landroid/view/ScaleGestureDetector;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ln7/e;Ln7/d;Lh7/b$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "explorerDataProvider",
            "filter",
            "gridZoomListener"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lh7/b;->p:Ljava/io/File;

    .line 6
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lh7/b;->x:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lh7/b;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lh7/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lh7/b;->B:Z

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lh7/b;->C:Z

    .line 12
    iput-object v0, p0, Lh7/b;->E:Ljava/lang/String;

    .line 13
    iput-boolean v2, p0, Lh7/b;->F:Z

    .line 14
    iput-object p1, p0, Lh7/b;->j:Landroid/content/Context;

    .line 15
    iput-object p1, p0, Lh7/b;->k:Landroid/app/Activity;

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lh7/b;->l:Landroid/view/LayoutInflater;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lh7/b;->b:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lh7/b;->c:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 19
    invoke-static {v2, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lh7/b;->d:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lh7/b;->e:I

    .line 21
    iput v2, p0, Lh7/b;->f:I

    .line 22
    iput v0, p0, Lh7/b;->a:I

    const/high16 v2, 0x42800000    # 64.0f

    .line 23
    invoke-static {v2, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float v2, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lh7/b;->g:I

    add-int/2addr p1, v1

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 24
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lh7/b;->h:I

    .line 25
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object p1, p0, Lh7/b;->i:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 26
    iput-object p2, p0, Lh7/b;->m:Ln7/e;

    .line 27
    iput-object p3, p0, Lh7/b;->n:Ln7/d;

    .line 28
    iput-object p4, p0, Lh7/b;->D:Lh7/b$i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ln7/e;Ln7/d;ZLh7/b$i;)V
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
            "activity",
            "explorerDataProvider",
            "filter",
            "startSearching",
            "gridZoomListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lh7/b;-><init>(Landroid/app/Activity;Ln7/e;Ln7/d;Lh7/b$i;)V

    .line 2
    iput-boolean p4, p0, Lh7/b;->F:Z

    return-void
.end method

.method public static synthetic a(Lh7/b;Lj7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->O(Lj7/b;)V

    return-void
.end method

.method public static synthetic b(Lh7/b;)V
    .locals 0

    invoke-virtual {p0}, Lh7/b;->P()V

    return-void
.end method

.method public static synthetic c(Lh7/b;Landroid/view/View;Lj7/b;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lh7/b;->U(Landroid/view/View;Lj7/b;Z)V

    return-void
.end method

.method public static synthetic d(Lh7/b;)Li7/a;
    .locals 0

    iget-object p0, p0, Lh7/b;->v:Li7/a;

    return-object p0
.end method

.method public static synthetic e(Lh7/b;)Ln7/e;
    .locals 0

    iget-object p0, p0, Lh7/b;->m:Ln7/e;

    return-object p0
.end method

.method public static synthetic f(Lh7/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lh7/b;->k:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic g(Lh7/b;)Ln7/d;
    .locals 0

    iget-object p0, p0, Lh7/b;->n:Ln7/d;

    return-object p0
.end method

.method public static synthetic h(Lh7/b;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lh7/b;->A(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Lh7/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lh7/b;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->b0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lh7/b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lh7/b;->p:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic l(Lh7/b;)V
    .locals 0

    invoke-virtual {p0}, Lh7/b;->e0()V

    return-void
.end method

.method public static synthetic m(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lh7/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic n(Lh7/b;Landroid/view/View;Lj7/b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lh7/b;->T(Landroid/view/View;Lj7/b;)V

    return-void
.end method

.method public static synthetic o(Lh7/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lh7/b;->r:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic p(Lh7/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lh7/b;->s:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic q(Lh7/b;Lj7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->y(Lj7/b;)V

    return-void
.end method

.method public static synthetic r(Lh7/b;)Z
    .locals 0

    iget-boolean p0, p0, Lh7/b;->C:Z

    return p0
.end method

.method public static synthetic s(Lh7/b;)I
    .locals 0

    iget p0, p0, Lh7/b;->a:I

    return p0
.end method

.method public static synthetic t(Lh7/b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->V(I)V

    return-void
.end method

.method public static synthetic u(Lh7/b;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lh7/b;->w:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static synthetic v(Lh7/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh7/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w(Lh7/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh7/b;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lh7/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "onAdded"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v1}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lh7/b;->m:Ln7/e;

    iget-object v1, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1, p1, v6}, Ln7/e;->c(ZLjava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lh7/b;->k:Landroid/app/Activity;

    new-instance v1, Lh7/b$h;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lh7/b$h;-><init>(Lh7/b;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B()V
    .locals 4

    iget-object v0, p0, Lh7/b;->v:Li7/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lh7/b;->C:Z

    if-nez v1, :cond_2

    iget v1, p0, Lh7/b;->e:I

    iget v2, p0, Lh7/b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Li7/a;->w(ZII)V

    iget-object v0, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v1, v0}, Li7/a;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lh7/b;->c:I

    int-to-float v0, v0

    iget v1, p0, Lh7/b;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lh7/b;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lh7/b;->d:I

    int-to-float v2, v2

    iget v3, p0, Lh7/b;->a:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lh7/b;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v3, v1, v0, v2}, Li7/a;->w(ZII)V

    iget-object v0, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v1, v0}, Li7/a;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    return-void
.end method

.method public C()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lh7/b;->l:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/b;->q:Landroid/view/View;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lh7/b;->r:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lh7/b;->s:Landroid/view/View;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lh7/b;->s:Landroid/view/View;

    new-instance v3, Lh7/b$a;

    invoke-direct {v3, p0}, Lh7/b$a;-><init>(Lh7/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;

    iget-object v3, p0, Lh7/b;->k:Landroid/app/Activity;

    iget v4, p0, Lh7/b;->a:I

    invoke-direct {v1, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lh7/b;->t:Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;

    iget-object v3, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Li7/a;

    iget-object v3, p0, Lh7/b;->k:Landroid/app/Activity;

    new-instance v4, Lh7/b$b;

    invoke-direct {v4, p0}, Lh7/b$b;-><init>(Lh7/b;)V

    invoke-direct {v1, v3, v4}, Li7/a;-><init>(Landroid/content/Context;Li7/b;)V

    iput-object v1, p0, Lh7/b;->v:Li7/a;

    iget-object v3, p0, Lh7/b;->i:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v3}, Li7/a;->y(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lh7/b;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lh7/b;->x:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh7/b;->B()V

    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lh7/b;->j:Landroid/content/Context;

    new-instance v4, Lh7/b$c;

    invoke-direct {v4, p0}, Lh7/b$c;-><init>(Lh7/b;)V

    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lh7/b;->w:Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lh7/b$d;

    invoke-direct {v3, p0}, Lh7/b$d;-><init>(Lh7/b;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-boolean v2, p0, Lh7/b;->F:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lh7/b;->c0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lh7/b;->d0()V

    :goto_1
    iget-object v2, p0, Lh7/b;->r:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/b;->s:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v0}, Li7/a;->k()V

    return-void
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inThisThreadFolder"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v1}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public G()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh7/b;->q:Landroid/view/View;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh7/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lh7/b;->p:Ljava/io/File;

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lh7/b;->a:I

    return v0
.end method

.method public K()V
    .locals 3

    iget-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LTc/b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lh7/b;->L(Ljava/lang/String;)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFolder"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "Files/"

    :cond_1
    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v2}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v1, v0}, Ln7/e;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lh7/b;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lh7/b;->e0()V

    return-void

    :cond_2
    iget-object v1, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v1, v0}, Ln7/e;->h(Ljava/io/File;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-object p1, p0, Lh7/b;->o:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lh7/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lh7/b;->m:Ln7/e;

    invoke-virtual {v3}, Ln7/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh7/b;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lh7/b;->p:Ljava/io/File;

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lh7/b;->D()V

    :cond_6
    return-void
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lh7/b;->B:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lh7/b;->C:Z

    return v0
.end method

.method public final synthetic O(Lj7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/b;->y(Lj7/b;)V

    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lh7/b;->s:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lh7/b;->Q(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public abstract Q(Ljava/lang/String;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation
.end method

.method public abstract R(Landroid/view/View;Lj7/b;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "element",
            "fromUserAction"
        }
    .end annotation
.end method

.method public abstract S(Ljava/io/File;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation
.end method

.method public final T(Landroid/view/View;Lj7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "element"
        }
    .end annotation

    invoke-virtual {p2}, Lj7/b;->u()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lh7/b;->S(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public final U(Landroid/view/View;Lj7/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "element",
            "fromUserAction"
        }
    .end annotation

    invoke-virtual {p2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lh7/b;->p:Ljava/io/File;

    iget-object v0, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v0, p2}, Li7/a;->x(Lj7/b;)V

    new-instance v0, Lh7/b$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lh7/b$g;-><init>(Lh7/b;Landroid/view/View;Lj7/b;Z)V

    invoke-static {v0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    iget v0, p0, Lh7/b;->g:I

    iget v1, p0, Lh7/b;->h:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lh7/b;->a:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/b;->D:Lh7/b$i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lh7/b$i;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lh7/b;->a0(I)V

    :goto_0
    return-void
.end method

.method public W(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowAsyncUpdate"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/b;->B:Z

    return-void
.end method

.method public X(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grid"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/b;->C:Z

    invoke-virtual {p0}, Lh7/b;->B()V

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchText"
        }
    .end annotation

    iput-object p1, p0, Lh7/b;->E:Ljava/lang/String;

    iget-object v0, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lh7/b;->c0()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lh7/b;->d0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lh7/b;->p:Ljava/io/File;

    iget-object v0, p0, Lh7/b;->v:Li7/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Li7/a;->x(Lj7/b;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v2}, Li7/a;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v2, v0}, Li7/a;->m(I)Lj7/b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lj7/b;->u()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {p1, v2}, Li7/a;->x(Lj7/b;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {p1, v1}, Li7/a;->x(Lj7/b;)V

    return-void
.end method

.method public a0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewContentSize"
        }
    .end annotation

    iput p1, p0, Lh7/b;->a:I

    iget-object v0, p0, Lh7/b;->t:Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;->l(I)V

    :cond_0
    invoke-virtual {p0}, Lh7/b;->B()V

    return-void
.end method

.method public final b0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lw3/b;

    invoke-direct {v2}, Lw3/b;-><init>()V

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lw3/b;

    invoke-direct {v2}, Lw3/b;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final c0()V
    .locals 2

    iget-object v0, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d0()V
    .locals 2

    invoke-virtual {p0}, Lh7/b;->D()V

    iget-object v0, p0, Lh7/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final e0()V
    .locals 1

    new-instance v0, Lh7/b$f;

    invoke-direct {v0, p0}, Lh7/b$f;-><init>(Lh7/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f0()V
    .locals 3

    iget-object v0, p0, Lh7/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lh7/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lh7/b;->E:Ljava/lang/String;

    new-instance v2, Lh7/b$e;

    invoke-direct {v2, p0, v0, v1}, Lh7/b$e;-><init>(Lh7/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g0()V
    .locals 1

    iget-object v0, p0, Lh7/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lh7/b;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh7/b;->f0()V

    :cond_0
    return-void
.end method

.method public final y(Lj7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lh7/a;

    invoke-direct {v1, p0, p1}, Lh7/a;-><init>(Lh7/b;Lj7/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lh7/b;->v:Li7/a;

    invoke-virtual {v0, p1}, Li7/a;->h(Lj7/b;)V

    return-void
.end method

.method public z(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/b;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh7/b;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
