.class public Lcom/android/tools/r8/internal/o40;
.super Lcom/android/tools/r8/internal/k40;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/o40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/o40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/k40;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VY;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget p0, v0, Lcom/android/tools/r8/internal/VY;->b:I

    or-int/lit8 p0, p0, 0x1

    .line 9
    iput p0, v0, Lcom/android/tools/r8/internal/VY;->b:I

    return-void

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 52
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 53
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    :cond_1
    return-void
.end method

.method public static b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static j(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/po1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/po1;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/tools/r8/internal/lo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Au;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/Au;)Lcom/android/tools/r8/internal/WY;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/S7;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 38
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 47
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Zc;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->a(Ljava/util/BitSet;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;I)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V
    .locals 2

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/o40;->c:Z

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/G5;

    move-result-object v0

    .line 19
    sget-boolean v1, Lcom/android/tools/r8/internal/k40;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/F0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F0;->J()Z

    .line 21
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p2, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    monitor-enter p1

    .line 24
    :try_start_0
    iget-object p2, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/VY;

    .line 25
    iput-object p2, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/VY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    return-void

    :catchall_0
    move-exception p2

    .line 28
    monitor-exit p1

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V
    .locals 1

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VY;

    .line 13
    iput-object v0, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iput-object p2, v0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void

    :catchall_0
    move-exception p2

    .line 16
    monitor-exit p1

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 34
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x9

    .line 35
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;I)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/Yf;)V
    .locals 0

    .line 31
    sget-boolean p1, Lcom/android/tools/r8/internal/o40;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/gE;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 43
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V
    .locals 0

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/ir/optimize/O;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 45
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V
    .locals 1

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 5
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x20

    .line 6
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 10
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 16
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x4

    .line 3
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 8
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/go1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/go1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/wo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x2

    .line 3
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/xo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/fo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/io1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/io1;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/to1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/to1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ko1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ko1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/eo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/oo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ro1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ro1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/uo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ho1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ho1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/so1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/so1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/mo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/jo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/no1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/no1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/vo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vo1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/o40;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
