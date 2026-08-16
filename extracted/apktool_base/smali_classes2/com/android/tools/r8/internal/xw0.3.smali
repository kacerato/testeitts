.class public Lcom/android/tools/r8/internal/xw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/tools/r8/internal/GE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/xw0;",
        ">;",
        "Lcom/android/tools/r8/internal/GE;"
    }
.end annotation


# static fields
.field public static final n:Lcom/android/tools/r8/internal/xw0;

.field public static final synthetic o:Z = true


# instance fields
.field public final b:I

.field public c:Lcom/android/tools/r8/internal/zE;

.field public d:Ljava/util/LinkedList;

.field public e:Lcom/android/tools/r8/internal/QC;

.field public f:Ljava/util/LinkedList;

.field public g:Lcom/android/tools/r8/internal/QC;

.field public h:Lcom/android/tools/r8/internal/FT;

.field public i:I

.field public j:Z

.field public k:Lcom/android/tools/r8/internal/kU;

.field public l:Lcom/android/tools/r8/internal/vw0;

.field public m:Lcom/android/tools/r8/internal/pu0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    sput-object v0, Lcom/android/tools/r8/internal/xw0;->n:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/xw0;->j:Z

    sget-boolean v1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/vw0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/vw0;-><init>(Lcom/android/tools/r8/graph/j0;)V

    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 95
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/e2;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/f60;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    instance-of v0, p1, Lcom/android/tools/r8/internal/t2;

    if-nez v0, :cond_3

    .line 148
    instance-of v0, p1, Lcom/android/tools/r8/internal/A40;

    if-nez v0, :cond_3

    .line 149
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ol0;

    if-nez v0, :cond_0

    .line 150
    instance-of v0, p1, Lcom/android/tools/r8/internal/Sl0;

    if-nez v0, :cond_0

    .line 151
    instance-of v0, p1, Lcom/android/tools/r8/internal/mw0;

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p0, v0, :cond_3

    .line 153
    :cond_1
    instance-of p0, p1, Lcom/android/tools/r8/internal/fy0;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 2
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->q1()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/q01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q01;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final C()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->k:Lcom/android/tools/r8/internal/kU;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public H()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public K()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/uq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Sy1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sy1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final P()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public Q()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ko0;

    return v0
.end method

.method public final R()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public S()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public T()Z
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v0

    const/16 v3, 0x64

    if-gt v0, v3, :cond_8

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4, p0}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    if-ne v0, v3, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    if-lez v0, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method public U()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final V()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final W()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final X()Z
    .locals 3

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->X()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->X()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public Y()Lcom/android/tools/r8/internal/Kw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Lcom/android/tools/r8/internal/zE;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/xw0;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 158
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    sget-boolean p1, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 164
    :cond_4
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 192
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 194
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object p1, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    sget-object v0, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, p3, :cond_3

    :goto_1
    move-object p3, p1

    goto :goto_2

    .line 199
    :cond_3
    sget-object p3, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    .line 200
    :goto_2
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 202
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    return-object v1

    .line 203
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 204
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 206
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 207
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_8

    .line 208
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    if-eq p3, v0, :cond_6

    goto :goto_3

    .line 210
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 211
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1

    .line 212
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Wy1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Wy1;-><init>()V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 214
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    .line 216
    iget-object p1, p1, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 217
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 219
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    .line 220
    iget-object v0, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    sget-object v1, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne p2, v1, :cond_b

    goto :goto_4

    :cond_b
    if-ne v0, p2, :cond_c

    :goto_4
    move-object p2, v0

    goto :goto_5

    .line 223
    :cond_c
    sget-object p2, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    .line 224
    :goto_5
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 225
    sget-boolean p2, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p2, :cond_e

    .line 226
    iget-object p2, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 227
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    if-ne p2, p3, :cond_d

    return-object p1

    .line 228
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    return-object p1

    :cond_f
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->f:Lcom/android/tools/r8/internal/Mw0;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    .line 23
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected constraint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of p1, p1, Lcom/android/tools/r8/internal/tU;

    if-nez p1, :cond_12

    .line 26
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p1

    return-object p1

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of p1, p1, Lcom/android/tools/r8/internal/kt;

    if-nez p1, :cond_12

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p1

    return-object p1

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz p1, :cond_5

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->o()Lcom/android/tools/r8/internal/Km0;

    move-result-object p1

    return-object p1

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    if-nez p1, :cond_7

    .line 37
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    instance-of p1, p1, Lcom/android/tools/r8/internal/uI;

    if-nez p1, :cond_12

    .line 39
    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p1

    return-object p1

    .line 40
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    if-nez p1, :cond_9

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of p1, p1, Lcom/android/tools/r8/internal/Fx;

    if-nez p1, :cond_12

    .line 44
    :cond_9
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1

    .line 45
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of p1, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz p1, :cond_e

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 48
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_c
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1

    .line 50
    :cond_d
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object p1

    return-object p1

    .line 51
    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    .line 53
    :cond_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    instance-of p1, p1, Lcom/android/tools/r8/internal/z7;

    if-eqz p1, :cond_12

    .line 55
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p1, :cond_11

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    instance-of p1, p1, Lcom/android/tools/r8/internal/ej;

    if-nez p1, :cond_11

    .line 58
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object p1

    .line 61
    iget-object p1, p1, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    .line 62
    sget-object v0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_10

    goto :goto_1

    .line 63
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_11
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;
    .locals 4

    .line 69
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    move-object v1, p0

    .line 71
    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 72
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return-object v1

    .line 73
    :cond_3
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 74
    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/e2;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/e2;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 76
    sget-boolean v3, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    move-object v2, v1

    :cond_6
    :goto_3
    if-ne v2, v1, :cond_9

    .line 77
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p1, :cond_8

    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    instance-of p1, p1, Lcom/android/tools/r8/internal/C4;

    if-nez p1, :cond_7

    goto :goto_4

    .line 79
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    return-object v2

    :cond_9
    move-object v1, v2

    goto :goto_1
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 17
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/ir/optimize/a;
    .locals 5

    .line 100
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 101
    new-instance v1, Lcom/android/tools/r8/internal/Uy1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Uy1;-><init>(Lcom/android/tools/r8/ir/optimize/a;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 103
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/j0;)V
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/vw0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vw0;-><init>(Lcom/android/tools/r8/graph/j0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/pu0;)V
    .locals 4

    .line 185
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->u0:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, p3, p1}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 189
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->e0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During NARROWING, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " at "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (context: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)V
    .locals 4

    .line 179
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->u0:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 183
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->e0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During WIDENING, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 184
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Kw0;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object p1

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot constrain type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by constraint: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 9
    new-instance v2, Lcom/android/tools/r8/position/MethodPosition;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 12
    iget-object p1, p3, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/Ry1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ry1;-><init>(Lcom/android/tools/r8/internal/f60;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;)V
    .locals 1

    .line 177
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 178
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 2

    if-ne p0, p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 112
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 114
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz p2, :cond_4

    .line 116
    iget-object p2, p2, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 117
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/zE;->e(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->d()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 8

    if-ne p0, p1, :cond_0

    goto/16 :goto_4

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 121
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 123
    invoke-virtual {v1, p0, p1, p4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 126
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Ty1;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/Ty1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    .line 128
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/TH;

    .line 129
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v3, v3, v6

    if-nez v3, :cond_4

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/f60;)V

    .line 131
    :cond_4
    invoke-interface {v5}, Lcom/android/tools/r8/internal/TH;->iterator()Lcom/android/tools/r8/internal/UH;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    sget-boolean v5, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v5, :cond_6

    .line 133
    iget-object v5, v2, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    if-ne v5, p0, :cond_5

    goto :goto_2

    .line 134
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_6
    :goto_2
    invoke-virtual {v2, v4, p1, p4}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_1

    .line 136
    :cond_7
    iget-object p3, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz p3, :cond_9

    .line 137
    iget-object p3, p3, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 138
    :cond_8
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 139
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/zE;

    .line 140
    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-virtual {p4, p0, p1}, Lcom/android/tools/r8/internal/zE;->e(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 142
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 88
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 89
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    .line 90
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 3

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/XE0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/XE0;-><init>(Ljava/util/Set;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 108
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 144
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 93
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-eq v2, p1, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    if-nez p1, :cond_1

    .line 169
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    .line 170
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 171
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 173
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    return v1

    :cond_4
    return v3

    .line 175
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 176
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->a(Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public final a0()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Vy1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vy1;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/Yy1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Yy1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public b0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/ix;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final c(Ljava/util/function/Predicate;)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/xw0;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;)Z"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz v1, :cond_0

    .line 6
    iput-object v0, v1, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public e(Lcom/android/tools/r8/internal/xw0;)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 8
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 10
    iput-object v2, p0, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->i:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 6
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 7
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->a(Z)V

    return-void
.end method

.method public f(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    return-void
.end method

.method public final g()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/xw0;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    return v0
.end method

.method public i()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/android/tools/r8/internal/lh;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a1()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    return v0
.end method

.method public final q()Lcom/android/tools/r8/graph/L2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/d61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/d61;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/zE;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/graph/j0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->a:Lcom/android/tools/r8/graph/j0;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/internal/xw0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/Xy1;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/Xy1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "0b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw0;->k:Lcom/android/tools/r8/internal/kU;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    return-object v0
.end method

.method public final v()Lcom/android/tools/r8/internal/kU;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/kU;

    invoke-direct {v1, v0, v0}, Lcom/android/tools/r8/internal/kU;-><init>(II)V

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v0

    new-instance v2, Lcom/android/tools/r8/internal/kU;

    invoke-direct {v2, v0, v1, v0, v1}, Lcom/android/tools/r8/internal/kU;-><init>(JJ)V

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->k:Lcom/android/tools/r8/internal/kU;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
