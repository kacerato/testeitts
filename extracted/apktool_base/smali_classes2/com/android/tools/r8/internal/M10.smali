.class public final Lcom/android/tools/r8/internal/M10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/K10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/K10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 3

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/lM0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/lM0;-><init>(Lcom/android/tools/r8/internal/M10;Ljava/util/List;)V

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 2
    new-instance v2, Lu/P0;

    invoke-direct {v2}, Lu/P0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/mM0;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/internal/mM0;-><init>(Lcom/android/tools/r8/internal/M10;Lcom/android/tools/r8/internal/O60;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/M10;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/O60;Ljava/util/List;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/O60;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/iM0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/iM0;-><init>(Lcom/android/tools/r8/internal/M10;)V

    new-instance v2, Lcom/android/tools/r8/internal/jM0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/jM0;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 14
    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/kM0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/kM0;-><init>(Lcom/android/tools/r8/internal/M10;Lcom/android/tools/r8/internal/O60;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/L10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M10;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/tools/r8/internal/L10;-><init>(Lcom/android/tools/r8/internal/M10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 19
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/M10;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
