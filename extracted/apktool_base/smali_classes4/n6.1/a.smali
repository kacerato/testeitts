.class public Ln6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/a$d;
    }
.end annotation


# static fields
.field public static final r0:Ljava/lang/String; = "CPUProfiler"

.field public static final s0:Ljava/lang/Class;


# instance fields
.field public final X:Ljava/lang/Object;

.field public final Y:Ln6/b;

.field public final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ln6/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile a0:Z

.field public volatile b0:Z

.field public c0:Ljava/lang/Thread;

.field public volatile d0:Ln6/b$d;

.field public volatile e0:Z

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/GridLayout;

.field public h0:Landroid/widget/TextView;

.field public i0:Landroid/widget/GridLayout;

.field public j0:Landroid/widget/TextView;

.field public k0:Landroid/widget/TextView;

.field public l0:Landroid/widget/TextView;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/TextView;

.field public q0:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ln6/a;

    sput-object v0, Ln6/a;->s0:Ljava/lang/Class;

    new-instance v0, Ln6/a$a;

    invoke-direct {v0}, Ln6/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_TITLE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPUProfiler"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln6/a;->X:Ljava/lang/Object;

    .line 8
    new-instance v0, Ln6/b;

    invoke-direct {v0}, Ln6/b;-><init>()V

    iput-object v0, p0, Ln6/a;->Y:Ln6/b;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ln6/a;->Z:Ljava/util/Map;

    const/4 v0, 0x0

    .line 10
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln6/a;->X:Ljava/lang/Object;

    .line 3
    new-instance p1, Ln6/b;

    invoke-direct {p1}, Ln6/b;-><init>()V

    iput-object p1, p0, Ln6/a;->Y:Ln6/b;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ln6/a;->Z:Ljava/util/Map;

    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static D1()V
    .locals 3

    const/16 v0, 0x15e

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x1a4

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Ln6/a;

    invoke-direct {v2}, Ln6/a;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Ln6/a;)V
    .locals 0

    invoke-virtual {p0}, Ln6/a;->G1()V

    return-void
.end method

.method public static synthetic q1(Ln6/a;)V
    .locals 0

    invoke-virtual {p0}, Ln6/a;->H1()V

    return-void
.end method

.method public static synthetic r1(Ln6/a;)Z
    .locals 0

    iget-boolean p0, p0, Ln6/a;->a0:Z

    return p0
.end method

.method public static synthetic s1(Ln6/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln6/a;->X:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic t1(Ln6/a;)Z
    .locals 0

    iget-boolean p0, p0, Ln6/a;->b0:Z

    return p0
.end method

.method public static synthetic u1(Ln6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Ln6/a;->b0:Z

    return p1
.end method

.method public static synthetic v1(Ln6/a;Ln6/b$d;)Ln6/b$d;
    .locals 0

    iput-object p1, p0, Ln6/a;->d0:Ln6/b$d;

    return-object p1
.end method

.method public static synthetic w1(Ln6/a;)Ln6/b;
    .locals 0

    iget-object p0, p0, Ln6/a;->Y:Ln6/b;

    return-object p0
.end method

.method public static synthetic x1(Ln6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Ln6/a;->e0:Z

    return p1
.end method


# virtual methods
.method public final A1(Ln6/b$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snapshot"
        }
    .end annotation

    iget-object v0, p0, Ln6/a;->n0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p1, Ln6/b$d;->a:F

    invoke-static {v1}, Ln6/b;->f(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ln6/a;->o0:Landroid/widget/TextView;

    const-string v1, "-"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    iget-wide v4, p1, Ln6/b$d;->d:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    invoke-static {v4, v5}, Ln6/b;->e(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Ln6/a;->p0:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-wide v4, p1, Ln6/b$d;->e:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    invoke-static {v4, v5}, Ln6/b;->e(J)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Ln6/a;->q0:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object p1, p1, Ln6/b$d;->c:Ln6/b$f;

    iget p1, p1, Ln6/b$f;->b:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public final B1(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln6/b$c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6/b$c;

    iget-object v3, p0, Ln6/a;->Z:Ljava/util/Map;

    iget v4, v2, Ln6/b$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0062

    iget-object v5, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ln6/a$d;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ln6/a$d;-><init>(Landroid/view/View;Ln6/a$a;)V

    iget-object v5, p0, Ln6/a;->Z:Ljava/util/Map;

    iget v2, v2, Ln6/b$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->f0:Landroid/widget/TextView;

    const v1, 0x7f090171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    iput-object v1, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->h0:Landroid/widget/TextView;

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    iput-object v1, p0, Ln6/a;->i0:Landroid/widget/GridLayout;

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->j0:Landroid/widget/TextView;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->k0:Landroid/widget/TextView;

    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->l0:Landroid/widget/TextView;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->m0:Landroid/widget/TextView;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->n0:Landroid/widget/TextView;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->o0:Landroid/widget/TextView;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->p0:Landroid/widget/TextView;

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln6/a;->q0:Landroid/widget/TextView;

    invoke-virtual {p0}, Ln6/a;->z1()V

    new-instance v1, Ln6/a$b;

    invoke-direct {v1, p0}, Ln6/a$b;-><init>(Ln6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Ln6/a;->E1()V

    invoke-virtual {p0}, Ln6/a;->C1()V

    return-object v0
.end method

.method public final C1()V
    .locals 2

    iget-boolean v0, p0, Ln6/a;->a0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln6/a;->X:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ln6/a;->b0:Z

    iget-object v1, p0, Ln6/a;->X:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final E1()V
    .locals 4

    iget-boolean v0, p0, Ln6/a;->a0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln6/a;->a0:Z

    iput-boolean v0, p0, Ln6/a;->b0:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ln6/a$c;

    invoke-direct {v2, p0}, Ln6/a$c;-><init>(Ln6/a;)V

    const-string v3, "CPUProfilerWorker"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Ln6/a;->c0:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Ln6/a;->c0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final F1()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln6/a;->a0:Z

    iget-object v1, p0, Ln6/a;->X:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Ln6/a;->b0:Z

    iget-object v0, p0, Ln6/a;->X:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ln6/a;->c0:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln6/a;->c0:Ljava/lang/Thread;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public G0()V
    .locals 0

    invoke-virtual {p0}, Ln6/a;->F1()V

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public final G1()V
    .locals 10

    iget-object v0, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x42d00000    # 104.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Ln6/a;->Z:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    iget-object v3, p0, Ln6/a;->Z:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_3

    const/4 v3, 0x3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    iget-object v3, p0, Ln6/a;->Z:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v5}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/high16 v6, -0x80000000

    invoke-static {v6, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v6, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iput v1, v5, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v5, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v7

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v8

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v9

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    invoke-virtual {v1, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    return-void
.end method

.method public final H1()V
    .locals 10

    iget-object v0, p0, Ln6/a;->i0:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v2, v3

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    iget-object v3, p0, Ln6/a;->i0:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_3

    iget-object v3, p0, Ln6/a;->i0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v5}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/high16 v6, -0x80000000

    invoke-static {v6, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v6, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iput v0, v5, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v5, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v7

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v8

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v9

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ln6/a;->i0:Landroid/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ln6/a;

    invoke-direct {v0}, Ln6/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-boolean v0, p0, Ln6/a;->e0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln6/a;->e0:Z

    iget-object v0, p0, Ln6/a;->d0:Ln6/b$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ln6/a;->y1(Ln6/b$d;)V

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 0

    invoke-virtual {p0}, Ln6/a;->C1()V

    return-void
.end method

.method public final y1(Ln6/b$d;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snapshot"
        }
    .end annotation

    iget-object v0, p0, Ln6/a;->f0:Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_SUBTITLE_60_SECONDS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Ln6/b$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln6/a;->h0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ln6/a;->h0:Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_READ_FAILED:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Ln6/a;->A1(Ln6/b$d;)V

    return-void

    :cond_2
    iget-object v0, p0, Ln6/a;->h0:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Ln6/a;->g0:Landroid/widget/GridLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p1, Ln6/b$d;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Ln6/a;->B1(Ljava/util/List;)V

    move v0, v2

    :goto_0
    iget-object v3, p1, Ln6/b$d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p1, Ln6/b$d;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln6/b$c;

    iget-object v4, p0, Ln6/a;->Z:Ljava/util/Map;

    iget v5, v3, Ln6/b$c;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln6/a$d;

    if-nez v4, :cond_5

    goto/16 :goto_3

    :cond_5
    iget v5, p1, Ln6/b$d;->f:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const-string v6, " "

    if-lez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Ln6/b$d;->f:F

    invoke-static {v7}, Ln6/b;->h(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const-string v5, ""

    :goto_1
    invoke-static {v4}, Ln6/a$d;->d(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_CORE:LAc/b;

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Ln6/b$c;->a:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ln6/a$d;->e(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v5

    iget v7, v3, Ln6/b$c;->b:F

    invoke-static {v7}, Ln6/b;->f(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ln6/a$d;->a(Ln6/a$d;)Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;

    move-result-object v5

    iget-object v7, v3, Ln6/b$c;->e:[F

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->setHistory([F)V

    iget-wide v7, v3, Ln6/b$c;->c:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_7

    invoke-static {v4}, Ln6/a$d;->b(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Ln6/a$d;->b(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v5

    iget-wide v7, v3, Ln6/b$c;->c:J

    invoke-static {v7, v8}, Ln6/b;->e(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-static {v4}, Ln6/a$d;->b(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-wide v7, v3, Ln6/b$c;->d:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_8

    invoke-static {v4}, Ln6/a$d;->c(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Ln6/a$d;->c(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_MAX:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Ln6/b$c;->d:J

    invoke-static {v6, v7}, Ln6/b;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    invoke-static {v4}, Ln6/a$d;->c(Ln6/a$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Ln6/a;->A1(Ln6/b$d;)V

    invoke-virtual {p0}, Ln6/a;->G1()V

    invoke-virtual {p0}, Ln6/a;->H1()V

    return-void
.end method

.method public final z1()V
    .locals 2

    iget-object v0, p0, Ln6/a;->j0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_UTILIZATION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ln6/a;->k0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_SPEED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Ln6/a;->l0:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_BASE_SPEED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Ln6/a;->m0:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_LOGICAL_PROCESSORS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Ln6/a;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_SUBTITLE_60_SECONDS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
