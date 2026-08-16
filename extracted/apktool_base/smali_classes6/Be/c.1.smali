.class public abstract LBe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(LBe/g;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/g;

    invoke-direct {v0, p0}, LKe/g;-><init>(LBe/g;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/util/concurrent/Callable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "completableSupplier"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/h;

    invoke-direct {v0, p0}, LKe/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/lang/Throwable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "error is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/o;

    invoke-direct {v0, p0}, LKe/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/concurrent/Callable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/p;

    invoke-direct {v0, p0}, LKe/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static T(LFe/a;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/q;

    invoke-direct {v0, p0}, LKe/q;-><init>(LFe/a;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/util/concurrent/Callable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/r;

    invoke-direct {v0, p0}, LKe/r;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/util/concurrent/Future;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LHe/a;->j(Ljava/util/concurrent/Future;)LFe/a;

    move-result-object p0

    invoke-static {p0}, LBe/c;->T(LFe/a;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static V0(JLjava/util/concurrent/TimeUnit;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LBe/c;->W0(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static W(LBe/y;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "TT;>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "maybe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/Q;

    invoke-direct {v0, p0}, LMe/Q;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static W0(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/N;

    invoke-direct {v0, p0, p1, p2, p3}, LKe/N;-><init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static X(LBe/G;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "observable is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/s;

    invoke-direct {v0, p0}, LKe/s;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Lhn/b;)LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT;>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/t;

    invoke-direct {v0, p0}, LKe/t;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/Runnable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/u;

    invoke-direct {v0, p0}, LKe/u;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static a0(LBe/Q;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/Q<",
            "TT;>;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "single is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/v;

    invoke-direct {v0, p0}, LKe/v;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static e0(Lhn/b;)LBe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LBe/c;->h0(Lhn/b;IZ)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static e1(LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/c;

    if-nez v0, :cond_0

    new-instance v0, LKe/w;

    invoke-direct {v0, p0}, LKe/w;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f0(Lhn/b;I)LBe/c;
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
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;I)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LBe/c;->h0(Lhn/b;IZ)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LKe/a;-><init>([LBe/i;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/Iterable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/E;

    invoke-direct {v0, p0}, LKe/E;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/o<",
            "-TR;+",
            "LBe/i;",
            ">;",
            "LFe/g<",
            "-TR;>;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LBe/c;->h1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/c;->u()LBe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/c;->i1(LBe/i;)LBe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LKe/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LKe/a;-><init>([LBe/i;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Lhn/b;IZ)LBe/c;
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
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;IZ)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LKe/A;

    invoke-direct {v0, p0, p1, p2}, LKe/A;-><init>(Lhn/b;IZ)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/o<",
            "-TR;+",
            "LBe/i;",
            ">;",
            "LFe/g<",
            "-TR;>;Z)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/S;

    invoke-direct {v0, p0, p1, p2, p3}, LKe/S;-><init>(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i0([LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/c;->u()LBe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/c;->i1(LBe/i;)LBe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LKe/B;

    invoke-direct {v0, p0}, LKe/B;-><init>([LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static i1(LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/c;

    if-eqz v0, :cond_0

    check-cast p0, LBe/c;

    invoke-static {p0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LKe/w;

    invoke-direct {v0, p0}, LKe/w;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j0([LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/C;

    invoke-direct {v0, p0}, LKe/C;-><init>([LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Lhn/b;)LBe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LBe/c;->h0(Lhn/b;IZ)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Lhn/b;I)LBe/c;
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
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;I)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LBe/c;->h0(Lhn/b;IZ)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/Iterable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/D;

    invoke-direct {v0, p0}, LKe/D;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static o0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    sget-object v0, LKe/F;->b:LBe/c;

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public static u()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    sget-object v0, LKe/n;->b:LBe/c;

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public static w(Lhn/b;)LBe/c;
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
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LBe/c;->x(Lhn/b;I)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lhn/b;I)LBe/c;
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
            "(",
            "Lhn/b<",
            "+",
            "LBe/i;",
            ">;I)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LKe/d;

    invoke-direct {v0, p0, p1}, LKe/d;-><init>(Lhn/b;I)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/f;

    invoke-direct {v0, p0}, LKe/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/c;->u()LBe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/c;->i1(LBe/i;)LBe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LKe/e;

    invoke-direct {v0, p0}, LKe/e;-><init>([LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/b;

    invoke-direct {v0, p0, p1}, LKe/b;-><init>(LBe/i;LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final A0(JLFe/r;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final B0(LFe/d;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->s5(LFe/d;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final C0(LFe/r;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->t5(LFe/r;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final D(JLjava/util/concurrent/TimeUnit;)LBe/c;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/c;->F(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final D0(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lhn/b<",
            "*>;>;)",
            "LBe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->v5(LFe/o;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/c;->F(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final E0(LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/c;->z([LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/c;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/i;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LKe/i;-><init>(LBe/i;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F0(Lhn/b;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->c6(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/c;->H(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G0(LBe/B;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/B<",
            "TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/c;->b1()LBe/B;

    move-result-object v0

    invoke-virtual {p1, v0}, LBe/B;->o1(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/c;->W0(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LBe/c;->j(LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H0()LDe/c;
    .locals 1
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LJe/o;

    invoke-direct {v0}, LJe/o;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    return-object v0
.end method

.method public final I(LFe/a;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final I0(LFe/a;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/j;

    invoke-direct {v0, p1}, LJe/j;-><init>(LFe/a;)V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    return-object v0
.end method

.method public final J(LFe/a;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/l;

    invoke-direct {v0, p0, p1}, LKe/l;-><init>(LBe/i;LFe/a;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final J0(LFe/a;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/j;

    invoke-direct {v0, p2, p1}, LJe/j;-><init>(LFe/g;LFe/a;)V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    return-object v0
.end method

.method public final K(LFe/a;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract K0(LBe/f;)V
.end method

.method public final L(LFe/a;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v5, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final L0(LBe/J;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/K;

    invoke-direct {v0, p0, p1}, LKe/K;-><init>(LBe/i;LBe/J;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final M(LFe/g;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final M0(LBe/f;)LBe/f;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LBe/f;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/c;->b(LBe/f;)V

    return-object p1
.end method

.method public final N(LFe/g;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/m;

    invoke-direct {v0, p0, p1}, LKe/m;-><init>(LBe/i;LFe/g;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final N0(LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/L;

    invoke-direct {v0, p0, p1}, LKe/L;-><init>(LBe/c;LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            "LFe/a;",
            "LFe/a;",
            ")",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/I;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, LKe/I;-><init>(LBe/i;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final O0()LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWe/n<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    return-object v0
.end method

.method public final P(LFe/g;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Z)LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LWe/n<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LWe/n;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    return-object v0
.end method

.method public final Q(LFe/a;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LBe/c;->O(LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(JLjava/util/concurrent/TimeUnit;)LBe/c;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/c;->U0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R0(JLjava/util/concurrent/TimeUnit;LBe/i;)LBe/c;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LBe/c;->U0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final S0(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/c;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/c;->U0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final T0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p5}, LBe/c;->U0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final U0(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)LBe/c;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/M;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LKe/M;-><init>(LBe/i;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LFe/o;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/c;",
            "TU;>;)TU;"
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

.method public final Y0()LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LIe/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/b;

    invoke-interface {v0}, LIe/b;->f()LBe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LKe/O;

    invoke-direct {v0, p0}, LKe/O;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final Z0()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LIe/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/c;

    invoke-interface {v0}, LIe/c;->d()LBe/s;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LMe/K;

    invoke-direct {v0, p0}, LMe/K;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final b(LBe/f;)V
    .locals 1
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, LYe/a;->d0(LBe/c;LBe/f;)LBe/f;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LBe/c;->K0(LBe/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    invoke-static {p1}, LBe/c;->a1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method

.method public final b0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LKe/x;

    invoke-direct {v0, p0}, LKe/x;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final b1()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LIe/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/d;

    invoke-interface {v0}, LIe/d;->c()LBe/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LKe/P;

    invoke-direct {v0, p0}, LKe/P;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final c0(LBe/h;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/y;

    invoke-direct {v0, p0, p1}, LKe/y;-><init>(LBe/i;LBe/h;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValueSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LKe/Q;-><init>(LBe/i;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d0()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/K<",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LKe/z;

    invoke-direct {v0, p0}, LKe/z;-><init>(LBe/c;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final d1(Ljava/lang/Object;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, LKe/Q;-><init>(LBe/i;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LBe/J;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/k;

    invoke-direct {v0, p0, p1}, LKe/k;-><init>(LBe/i;LBe/J;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final i(LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/c;->h([LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final j(LBe/i;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/b;

    invoke-direct {v0, p0, p1}, LKe/b;-><init>(LBe/i;LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lhn/b;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/b;

    invoke-direct {v0, p0, p1}, LNe/b;-><init>(LBe/i;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l(LBe/y;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/o;

    invoke-direct {v0, p1, p0}, LMe/o;-><init>(LBe/y;LBe/i;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final m(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/a;

    invoke-direct {v0, p0, p1}, LNe/a;-><init>(LBe/i;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n(LBe/Q;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/Q<",
            "TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/g;

    invoke-direct {v0, p1, p0}, LQe/g;-><init>(LBe/Q;LBe/i;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n0(LBe/i;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/c;->i0([LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final o(LBe/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBe/d;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/d<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/d;

    invoke-interface {p1, p0}, LBe/d;->a(LBe/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 1
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    invoke-virtual {v0}, LJe/h;->d()Ljava/lang/Object;

    return-void
.end method

.method public final p0(LBe/J;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/G;

    invoke-direct {v0, p0, p1}, LKe/G;-><init>(LBe/i;LBe/J;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    invoke-virtual {v0, p1, p2, p3}, LJe/h;->c(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final q0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/c;->r0(LFe/r;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/g;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    invoke-virtual {v0}, LJe/h;->g()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final r0(LFe/r;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/H;

    invoke-direct {v0, p0, p1}, LKe/H;-><init>(LBe/i;LFe/r;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final s(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/g;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/c;->b(LBe/f;)V

    invoke-virtual {v0, p1, p2, p3}, LJe/h;->h(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final s0(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "errorMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/J;

    invoke-direct {v0, p0, p1}, LKe/J;-><init>(LBe/i;LFe/o;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final t()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LKe/c;

    invoke-direct {v0, p0}, LKe/c;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final t0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LKe/j;

    invoke-direct {v0, p0}, LKe/j;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final u0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0}, LBe/l;->V4()LBe/l;

    move-result-object v0

    invoke-static {v0}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final v(LBe/j;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/j;

    invoke-interface {p1, p0}, LBe/j;->a(LBe/c;)LBe/i;

    move-result-object p1

    invoke-static {p1}, LBe/c;->i1(LBe/i;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final v0(J)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LBe/l;->W4(J)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final w0(LFe/e;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->X4(LFe/e;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final x0(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "Lhn/b<",
            "*>;>;)",
            "LBe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->Y4(LFe/o;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final y0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0}, LBe/l;->p5()LBe/l;

    move-result-object v0

    invoke-static {v0}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final z0(J)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LBe/c;->Y0()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LBe/l;->q5(J)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/c;->Y(Lhn/b;)LBe/c;

    move-result-object p1

    return-object p1
.end method
