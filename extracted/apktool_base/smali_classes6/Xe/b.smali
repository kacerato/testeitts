.class public abstract LXe/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lhn/b;II)LXe/b;
    .locals 1
    .param p0    # Lhn/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;II)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/h;

    invoke-direct {v0, p0, p1, p2}, LPe/h;-><init>(Lhn/b;II)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B([Lhn/b;)LXe/b;
    .locals 1
    .param p0    # [Lhn/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "TT;>;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, LPe/g;

    invoke-direct {v0, p0}, LPe/g;-><init>([Lhn/b;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Lhn/b;)LXe/b;
    .locals 2
    .param p0    # Lhn/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, LXe/b;->A(Lhn/b;II)LXe/b;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lhn/b;I)LXe/b;
    .locals 1
    .param p0    # Lhn/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;I)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LXe/b;->A(Lhn/b;II)LXe/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(LFe/o;)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TR;>;)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/j;

    invoke-direct {v0, p0, p1}, LPe/j;-><init>(LXe/b;LFe/o;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final D(LFe/o;LFe/c;)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LFe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TR;>;",
            "LFe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "LXe/a;",
            ">;)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/k;

    invoke-direct {v0, p0, p1, p2}, LPe/k;-><init>(LXe/b;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final E(LFe/o;LXe/a;)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LXe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TR;>;",
            "LXe/a;",
            ")",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/k;

    invoke-direct {v0, p0, p1, p2}, LPe/k;-><init>(LXe/b;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract F()I
.end method

.method public final G(LFe/c;)LBe/l;
    .locals 1
    .param p1    # LFe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/c<",
            "TT;TT;TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/n;

    invoke-direct {v0, p0, p1}, LPe/n;-><init>(LXe/b;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/util/concurrent/Callable;LFe/c;)LXe/b;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LFe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialSupplier"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/m;

    invoke-direct {v0, p0, p1, p2}, LPe/m;-><init>(LXe/b;Ljava/util/concurrent/Callable;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final I(LBe/J;)LXe/b;
    .locals 1
    .param p1    # LBe/J;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LXe/b;->J(LBe/J;I)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final J(LBe/J;I)LXe/b;
    .locals 1
    .param p1    # LBe/J;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "I)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/o;

    invoke-direct {v0, p0, p1, p2}, LPe/o;-><init>(LXe/b;LBe/J;I)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final K()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LXe/b;->L(I)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final L(I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LPe/i;-><init>(LXe/b;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LXe/b;->N(I)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N(I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LPe/i;-><init>(LXe/b;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O(Ljava/util/Comparator;)LBe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, LXe/b;->P(Ljava/util/Comparator;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/util/Comparator;I)LBe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0}, LXe/b;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/n;->b()LFe/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, LXe/b;->H(Ljava/util/concurrent/Callable;LFe/c;)LXe/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/v;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/v;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, LXe/b;->C(LFe/o;)LXe/b;

    move-result-object p2

    new-instance v0, LPe/p;

    invoke-direct {v0, p2, p1}, LPe/p;-><init>(LXe/b;Ljava/util/Comparator;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public abstract Q([Lhn/c;)V
    .param p1    # [Lhn/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final R(LFe/o;)Ljava/lang/Object;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LXe/b<",
            "TT;>;TU;>;)TU;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/o;

    invoke-interface {p1, p0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final S(Ljava/util/Comparator;)LBe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, LXe/b;->T(Ljava/util/Comparator;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T(Ljava/util/Comparator;I)LBe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0}, LXe/b;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/n;->b()LFe/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, LXe/b;->H(Ljava/util/concurrent/Callable;LFe/c;)LXe/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/v;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/v;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, LXe/b;->C(LFe/o;)LXe/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/o;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/o;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, LXe/b;->G(LFe/c;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U([Lhn/c;)Z
    .locals 5
    .param p1    # [Lhn/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LXe/b;->F()I

    move-result v0

    array-length v1, p1

    if-eq v1, v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelism = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    invoke-static {v1, v4}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(LXe/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # LXe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/c<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/c;

    invoke-interface {p1, p0}, LXe/c;->a(LXe/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/concurrent/Callable;LFe/b;)LXe/b;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LFe/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "LFe/b<",
            "-TC;-TT;>;)",
            "LXe/b<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/a;

    invoke-direct {v0, p0, p1, p2}, LPe/a;-><init>(LXe/b;Ljava/util/concurrent/Callable;LFe/b;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(LXe/d;)LXe/b;
    .locals 1
    .param p1    # LXe/d;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/d<",
            "TT;TU;>;)",
            "LXe/b<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/d;

    invoke-interface {p1, p0}, LXe/d;->a(LXe/b;)LXe/b;

    move-result-object p1

    invoke-static {p1}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final d(LFe/o;)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LXe/b;->e(LFe/o;I)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final e(LFe/o;I)LXe/b;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/b;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, LPe/b;-><init>(LXe/b;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(LFe/o;IZ)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/b;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LPe/b;-><init>(LXe/b;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final g(LFe/o;Z)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;Z)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, LXe/b;->f(LFe/o;IZ)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final h(LFe/g;)LXe/b;
    .locals 11
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final i(LFe/a;)LXe/b;
    .locals 11
    .param p1    # LFe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final j(LFe/a;)LXe/b;
    .locals 11
    .param p1    # LFe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onCancel is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v7, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final k(LFe/a;)LXe/b;
    .locals 11
    .param p1    # LFe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final l(LFe/g;)LXe/b;
    .locals 11
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "Ljava/lang/Throwable;",
            ">;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final m(LFe/g;)LXe/b;
    .locals 11
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final n(LFe/g;LFe/c;)LXe/b;
    .locals 1
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LFe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "LXe/a;",
            ">;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/c;

    invoke-direct {v0, p0, p1, p2}, LPe/c;-><init>(LXe/b;LFe/g;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final o(LFe/g;LXe/a;)LXe/b;
    .locals 1
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LXe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LXe/a;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/c;

    invoke-direct {v0, p0, p1, p2}, LPe/c;-><init>(LXe/b;LFe/g;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final p(LFe/q;)LXe/b;
    .locals 11
    .param p1    # LFe/q;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/q;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onRequest is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final q(LFe/g;)LXe/b;
    .locals 11
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/l;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v5

    sget-object v10, LHe/a;->c:LFe/a;

    sget-object v9, LHe/a;->g:LFe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, LPe/l;-><init>(LXe/b;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final r(LFe/r;)LXe/b;
    .locals 1
    .param p1    # LFe/r;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/d;

    invoke-direct {v0, p0, p1}, LPe/d;-><init>(LXe/b;LFe/r;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final s(LFe/r;LFe/c;)LXe/b;
    .locals 1
    .param p1    # LFe/r;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LFe/c;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LFe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "LXe/a;",
            ">;)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/e;

    invoke-direct {v0, p0, p1, p2}, LPe/e;-><init>(LXe/b;LFe/r;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final t(LFe/r;LXe/a;)LXe/b;
    .locals 1
    .param p1    # LFe/r;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # LXe/a;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LXe/a;",
            ")",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LPe/e;

    invoke-direct {v0, p0, p1, p2}, LPe/e;-><init>(LXe/b;LFe/r;LFe/c;)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final u(LFe/o;)LXe/b;
    .locals 3
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, LXe/b;->x(LFe/o;ZII)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final v(LFe/o;Z)LXe/b;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;Z)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LXe/b;->x(LFe/o;ZII)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final w(LFe/o;ZI)LXe/b;
    .locals 1
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;ZI)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LXe/b;->x(LFe/o;ZII)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final x(LFe/o;ZII)LXe/b;
    .locals 7
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;ZII)",
            "LXe/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LPe/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, LPe/f;-><init>(LXe/b;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->V(LXe/b;)LXe/b;

    move-result-object p1

    return-object p1
.end method
