.class public abstract LBe/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/y<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lhn/b;)LBe/l;
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
            ">(",
            "Lhn/b<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Iterable;)LBe/l;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/s;->I0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C0(LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/s;->I0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D0(LBe/y;LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/s;->I0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Lhn/b;)LBe/l;
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
            ">(",
            "Lhn/b<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {p0, v0}, LBe/s;->F0(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Lhn/b;I)LBe/l;
    .locals 7
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
            "+",
            "LBe/y<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/e0;

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, LLe/e0;-><init>(Lhn/b;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G(LBe/w;)LBe/s;
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
            "LBe/w<",
            "TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/j;

    invoke-direct {v0, p0}, LMe/j;-><init>(LBe/w;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/lang/Iterable;)LBe/l;
    .locals 0
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/s;->E0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static H0(LBe/y;)LBe/s;
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
            "LBe/y<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/H;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LMe/H;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/util/concurrent/Callable;)LBe/s;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "maybeSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/k;

    invoke-direct {v0, p0}, LMe/k;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I0([LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LMe/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, LMe/n0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LMe/Y;

    invoke-direct {v0, p0}, LMe/Y;-><init>([LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs J0([LBe/y;)LBe/l;
    .locals 3
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
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object v0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static K0(LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/s;->J0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static K1(JLjava/util/concurrent/TimeUnit;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/s<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LBe/s;->L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static L0(LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/s;->J0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/s<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/m0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, LMe/m0;-><init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static M0(LBe/y;LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/s;->J0([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Lhn/b;)LBe/l;
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
            ">(",
            "Lhn/b<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {p0, v0}, LBe/s;->O0(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Lhn/b;I)LBe/l;
    .locals 7
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
            "+",
            "LBe/y<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/e0;

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, LLe/e0;-><init>(Lhn/b;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P0(Ljava/lang/Iterable;)LBe/l;
    .locals 2
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LBe/l;->C2(LFe/o;Z)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static R0()LBe/s;
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

    sget-object v0, LMe/Z;->b:LMe/Z;

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public static R1(LBe/y;)LBe/s;
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

    instance-of v0, p0, LBe/s;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/r0;

    invoke-direct {v0, p0}, LMe/r0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;)LBe/s;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "LBe/y<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LBe/s;->U1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static U1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/s;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "LBe/y<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;Z)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/t0;

    invoke-direct {v0, p0, p1, p2, p3}, LMe/t0;-><init>(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static V1(LBe/y;)LBe/s;
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

    instance-of v0, p0, LBe/s;

    if-eqz v0, :cond_0

    check-cast p0, LBe/s;

    invoke-static {p0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/r0;

    invoke-direct {v0, p0}, LMe/r0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static W1(LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LFe/n;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LBe/y<",
            "+TT5;>;",
            "LBe/y<",
            "+TT6;>;",
            "LBe/y<",
            "+TT7;>;",
            "LBe/y<",
            "+TT8;>;",
            "LBe/y<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LHe/a;->E(LFe/n;)LFe/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static X1(LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LFe/m;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LBe/y<",
            "+TT5;>;",
            "LBe/y<",
            "+TT6;>;",
            "LBe/y<",
            "+TT7;>;",
            "LBe/y<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LHe/a;->D(LFe/m;)LFe/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static Y1(LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LFe/l;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LBe/y<",
            "+TT5;>;",
            "LBe/y<",
            "+TT6;>;",
            "LBe/y<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LHe/a;->C(LFe/l;)LFe/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static Z()LBe/s;
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

    sget-object v0, LMe/u;->b:LMe/u;

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public static Z1(LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LFe/k;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LBe/y<",
            "+TT5;>;",
            "LBe/y<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LHe/a;->B(LFe/k;)LFe/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/lang/Throwable;)LBe/s;
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
            "Ljava/lang/Throwable;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/w;

    invoke-direct {v0, p0}, LMe/w;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static a2(LBe/y;LBe/y;LBe/y;LBe/y;LBe/y;LFe/j;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LBe/y<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/util/concurrent/Callable;)LBe/s;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/x;

    invoke-direct {v0, p0}, LMe/x;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static b2(LBe/y;LBe/y;LBe/y;LBe/y;LFe/i;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LBe/y<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static c2(LBe/y;LBe/y;LBe/y;LFe/h;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LBe/y<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static d2(LBe/y;LBe/y;LFe/c;)LBe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT1;>;",
            "LBe/y<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LBe/s;->f2(LFe/o;[LBe/y;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static e2(Ljava/lang/Iterable;LFe/o;)LBe/s;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/v0;

    invoke-direct {v0, p0, p1}, LMe/v0;-><init>(Ljava/lang/Iterable;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f2(LFe/o;[LBe/y;)LBe/s;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    invoke-static {}, LBe/s;->Z()LBe/s;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/u0;

    invoke-direct {v0, p1, p0}, LMe/u0;-><init>([LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LBe/s;
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
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LMe/b;-><init>([LBe/y;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LBe/y;)LBe/s;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/s;->Z()LBe/s;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/s;->V1(LBe/y;)LBe/s;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LMe/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LMe/b;-><init>([LBe/y;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static n0(LFe/a;)LBe/s;
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
            "LFe/a;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/I;

    invoke-direct {v0, p0}, LMe/I;-><init>(LFe/a;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static n1(LBe/y;LBe/y;)LBe/K;
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
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-static {p0, p1, v0}, LBe/s;->o1(LBe/y;LBe/y;LFe/d;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/util/concurrent/Callable;)LBe/s;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build LCe/f;
        .end annotation
    .end param
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/J;

    invoke-direct {v0, p0}, LMe/J;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static o1(LBe/y;LBe/y;LFe/d;)LBe/K;
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
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/v;

    invoke-direct {v0, p0, p1, p2}, LMe/v;-><init>(LBe/y;LBe/y;LFe/d;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static p(LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/s;->v([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(LBe/i;)LBe/s;
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
            "LBe/i;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completableSource is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/K;

    invoke-direct {v0, p0}, LMe/K;-><init>(LBe/i;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static q(LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/s;->v([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/util/concurrent/Future;)LBe/s;
    .locals 4
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/L;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, LMe/L;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static r(LBe/y;LBe/y;LBe/y;LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/s;->v([LBe/y;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/s;
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/L;

    invoke-direct {v0, p0, p1, p2, p3}, LMe/L;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lhn/b;)LBe/l;
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
            ">(",
            "Lhn/b<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LBe/s;->t(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Ljava/lang/Runnable;)LBe/s;
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
            "Ljava/lang/Runnable;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/M;

    invoke-direct {v0, p0}, LMe/M;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lhn/b;I)LBe/l;
    .locals 3
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
            "+",
            "LBe/y<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/z;

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, LLe/z;-><init>(Lhn/b;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static t0(LBe/Q;)LBe/s;
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSource is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/N;

    invoke-direct {v0, p0}, LMe/N;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Iterable;)LBe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/g;

    invoke-direct {v0, p0}, LMe/g;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v([LBe/y;)LBe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LMe/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, LMe/n0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LMe/e;

    invoke-direct {v0, p0}, LMe/e;-><init>([LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([LBe/y;)LBe/l;
    .locals 2
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
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LMe/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, LMe/n0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LMe/f;

    invoke-direct {v0, p0}, LMe/f;-><init>([LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([LBe/y;)LBe/l;
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
            ">([",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/Object;)LBe/s;
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
            ">(TT;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/U;

    invoke-direct {v0, p0}, LMe/U;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lhn/b;)LBe/l;
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
            ">(",
            "Lhn/b<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->a1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Iterable;)LBe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LMe/p0;->b()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->a1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0()LBe/K;
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
            "()",
            "LBe/K<",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LMe/X;

    invoke-direct {v0, p0}, LMe/X;-><init>(LBe/s;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final A1()LWe/n;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    invoke-virtual {p0, v0}, LBe/s;->d(LBe/v;)V

    return-object v0
.end method

.method public final B1(Z)LWe/n;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LWe/n;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LBe/s;->d(LBe/v;)V

    return-object v0
.end method

.method public final C(LFe/o;)LBe/s;
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
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/H;

    invoke-direct {v0, p0, p1}, LMe/H;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final C1(JLjava/util/concurrent/TimeUnit;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/s;->E1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final D(LBe/y;)LBe/l;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/s;->p(LBe/y;LBe/y;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D1(JLjava/util/concurrent/TimeUnit;LBe/y;)LBe/s;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LBe/s;->F1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final E(Ljava/lang/Object;)LBe/K;
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
            "Ljava/lang/Object;",
            ")",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/h;

    invoke-direct {v0, p0, p1}, LMe/h;-><init>(LBe/y;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/s;->L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->G1(LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final F()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, LMe/i;

    invoke-direct {v0, p0}, LMe/i;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/y;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4}, LBe/s;->L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, LBe/s;->H1(LBe/y;LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final G1(LBe/y;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LMe/k0;-><init>(LBe/y;LBe/y;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/lang/Object;)LBe/s;
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
            "(TT;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LBe/s;->x0(Ljava/lang/Object;)LBe/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->w1(LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final H1(LBe/y;LBe/y;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "TU;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/k0;

    invoke-direct {v0, p0, p1, p2}, LMe/k0;-><init>(LBe/y;LBe/y;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final I1(Lhn/b;)LBe/s;
    .locals 2
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LMe/l0;-><init>(LBe/y;Lhn/b;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/s;->K(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final J1(Lhn/b;LBe/y;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/l0;

    invoke-direct {v0, p0, p1, p2}, LMe/l0;-><init>(LBe/y;Lhn/b;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/l;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LMe/l;-><init>(LBe/y;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lhn/b;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delayIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/m;

    invoke-direct {v0, p0, p1}, LMe/m;-><init>(LBe/y;Lhn/b;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/s;->N(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final M1(LFe/o;)Ljava/lang/Object;
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
            "LFe/o<",
            "-",
            "LBe/s<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

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

.method public final N(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/s;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/l;->x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->O(Lhn/b;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final N1()LBe/l;
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

    instance-of v0, p0, LIe/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/b;

    invoke-interface {v0}, LIe/b;->f()LBe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LMe/n0;

    invoke-direct {v0, p0}, LMe/n0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final O(Lhn/b;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/n;

    invoke-direct {v0, p0, p1}, LMe/n;-><init>(LBe/y;Lhn/b;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final O1()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, LMe/o0;

    invoke-direct {v0, p0}, LMe/o0;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final P(LFe/g;)LBe/s;
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
            "-TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/q;

    invoke-direct {v0, p0, p1}, LMe/q;-><init>(LBe/y;LFe/g;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final P1()LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LMe/q0;-><init>(LBe/y;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final Q(LFe/a;)LBe/s;
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
            "LFe/a;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    sget-object v7, LHe/a;->c:LFe/a;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(LBe/y;)LBe/l;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/s;->B0(LBe/y;LBe/y;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(Ljava/lang/Object;)LBe/K;
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
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/q0;

    invoke-direct {v0, p0, p1}, LMe/q0;-><init>(LBe/y;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R(LFe/a;)LBe/s;
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
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/r;

    invoke-direct {v0, p0, p1}, LMe/r;-><init>(LBe/y;LFe/a;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S(LFe/a;)LBe/s;
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
            "LFe/a;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, LFe/a;

    sget-object v7, LHe/a;->c:LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LBe/J;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/a0;

    invoke-direct {v0, p0, p1}, LMe/a0;-><init>(LBe/y;LBe/J;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S1(LBe/J;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/s0;

    invoke-direct {v0, p0, p1}, LMe/s0;-><init>(LBe/y;LBe/J;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final T(LFe/a;)LBe/s;
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
            "LFe/a;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    sget-object v6, LHe/a;->c:LFe/a;

    const-string v0, "onDispose is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Ljava/lang/Class;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LBe/s<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->l(Ljava/lang/Class;)LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/s;->c0(LFe/r;)LBe/s;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/s;->n(Ljava/lang/Class;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final U(LFe/g;)LBe/s;
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
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, LFe/g;

    sget-object v7, LHe/a;->c:LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final U0()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/s;->V0(LFe/r;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final V(LFe/b;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/s;

    invoke-direct {v0, p0, p1}, LMe/s;-><init>(LBe/y;LFe/b;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LFe/r;)LBe/s;
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/b0;

    invoke-direct {v0, p0, p1}, LMe/b0;-><init>(LBe/y;LFe/r;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final W(LFe/g;)LBe/s;
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
            ">;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, LFe/g;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    sget-object v7, LHe/a;->c:LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LBe/y;)LBe/s;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->X0(LFe/o;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final X(LFe/g;)LBe/s;
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
            "-TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LMe/e0;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, LFe/g;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v4

    sget-object v7, LHe/a;->c:LFe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, LMe/e0;-><init>(LBe/y;LFe/g;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;)V

    invoke-static {v8}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LFe/o;)LBe/s;
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
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/y<",
            "+TT;>;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/c0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LMe/c0;-><init>(LBe/y;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Y(LFe/a;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
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
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/t;

    invoke-direct {v0, p0, p1}, LMe/t;-><init>(LBe/y;LFe/a;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LFe/o;)LBe/s;
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
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/d0;

    invoke-direct {v0, p0, p1}, LMe/d0;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Ljava/lang/Object;)LBe/s;
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
            "(TT;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->Y0(LFe/o;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LBe/y;)LBe/s;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/c0;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LMe/c0;-><init>(LBe/y;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final b1()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/p;

    invoke-direct {v0, p0}, LMe/p;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final c0(LFe/r;)LBe/s;
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
            "-TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/y;

    invoke-direct {v0, p0, p1}, LMe/y;-><init>(LBe/y;LFe/r;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final c1()LBe/l;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LBe/s;->d1(J)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final d(LBe/v;)V
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LYe/a;->e0(LBe/s;LBe/v;)LBe/v;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, LBe/s;->t1(LBe/v;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public final d0(LFe/o;)LBe/s;
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
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/H;

    invoke-direct {v0, p0, p1}, LMe/H;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final d1(J)LBe/l;
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
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LBe/l;->W4(J)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e0(LFe/o;LFe/c;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/A;

    invoke-direct {v0, p0, p1, p2}, LMe/A;-><init>(LBe/y;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LFe/e;)LBe/l;
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
            "LFe/e;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->X4(LFe/e;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f0(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/s;
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
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/y<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onSuccessMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/E;

    invoke-direct {v0, p0, p1, p2, p3}, LMe/E;-><init>(LBe/y;LFe/o;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LFe/o;)LBe/l;
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
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "Lhn/b<",
            "*>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->Y4(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g0(LFe/o;)LBe/c;
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
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/B;

    invoke-direct {v0, p0, p1}, LMe/B;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final g1()LBe/s;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LBe/s;->i1(JLFe/r;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final g2(LBe/y;LFe/c;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LBe/s;->d2(LBe/y;LBe/y;LFe/c;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final h0(LFe/o;)LBe/B;
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
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/j;

    invoke-direct {v0, p0, p1}, LNe/j;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h1(J)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/s;->i1(JLFe/r;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final i(LBe/y;)LBe/s;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/s;->h([LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final i0(LFe/o;)LBe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/k;

    invoke-direct {v0, p0, p1}, LNe/k;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i1(JLFe/r;)LBe/s;
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    invoke-virtual {p1}, LBe/l;->N5()LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final j(LBe/t;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBe/t;
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
            "LBe/t<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/t;

    invoke-interface {p1, p0}, LBe/t;->a(LBe/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j0(LFe/o;)LBe/K;
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
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/F;

    invoke-direct {v0, p0, p1}, LMe/F;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j1(LFe/d;)LBe/s;
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->s5(LFe/d;)LBe/l;

    move-result-object p1

    invoke-virtual {p1}, LBe/l;->N5()LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/s;->d(LBe/v;)V

    invoke-virtual {v0}, LJe/h;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k0(LFe/o;)LBe/s;
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
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/G;

    invoke-direct {v0, p0, p1}, LMe/G;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LFe/r;)LBe/s;
    .locals 2
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LBe/s;->i1(JLFe/r;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/s;->d(LBe/v;)V

    invoke-virtual {v0, p1}, LJe/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l0(LFe/o;)LBe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/C;

    invoke-direct {v0, p0, p1}, LMe/C;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l1(LFe/e;)LBe/s;
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
            "LFe/e;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LHe/a;->v(LFe/e;)LFe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LBe/s;->i1(JLFe/r;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final m()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/c;

    invoke-direct {v0, p0}, LMe/c;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final m0(LFe/o;)LBe/B;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/D;

    invoke-direct {v0, p0, p1}, LMe/D;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m1(LFe/o;)LBe/s;
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/s;->N1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->v5(LFe/o;)LBe/l;

    move-result-object p1

    invoke-virtual {p1}, LBe/l;->N5()LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Class;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "LBe/s<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->e(Ljava/lang/Class;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/s;->z0(LFe/o;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final o(LBe/z;)LBe/s;
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
            "LBe/z<",
            "-TT;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/z;

    invoke-interface {p1, p0}, LBe/z;->a(LBe/s;)LBe/y;

    move-result-object p1

    invoke-static {p1}, LBe/s;->V1(LBe/y;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final p1()LDe/c;
    .locals 3
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->f:LFe/g;

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, v2}, LBe/s;->s1(LFe/g;LFe/g;LFe/a;)LDe/c;

    move-result-object v0

    return-object v0
.end method

.method public final q1(LFe/g;)LDe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1}, LBe/s;->s1(LFe/g;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final r1(LFe/g;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, p2, v0}, LBe/s;->s1(LFe/g;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final s1(LFe/g;LFe/g;LFe/a;)LDe/c;
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
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/d;

    invoke-direct {v0, p1, p2, p3}, LMe/d;-><init>(LFe/g;LFe/g;LFe/a;)V

    invoke-virtual {p0, v0}, LBe/s;->v1(LBe/v;)LBe/v;

    move-result-object p1

    check-cast p1, LDe/c;

    return-object p1
.end method

.method public abstract t1(LBe/v;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final u0()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LMe/O;

    invoke-direct {v0, p0}, LMe/O;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final u1(LBe/J;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/f0;

    invoke-direct {v0, p0, p1}, LMe/f0;-><init>(LBe/y;LBe/J;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final v0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LMe/Q;

    invoke-direct {v0, p0}, LMe/Q;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final v1(LBe/v;)LBe/v;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LBe/v<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/s;->d(LBe/v;)V

    return-object p1
.end method

.method public final w0()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LMe/T;

    invoke-direct {v0, p0}, LMe/T;-><init>(LBe/y;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final w1(LBe/y;)LBe/s;
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
            "LBe/y<",
            "+TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/g0;

    invoke-direct {v0, p0, p1}, LMe/g0;-><init>(LBe/y;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final x1(LBe/Q;)LBe/K;
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
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/h0;

    invoke-direct {v0, p0, p1}, LMe/h0;-><init>(LBe/y;LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final y0(LBe/x;)LBe/s;
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
            "LBe/x<",
            "+TR;-TT;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/V;

    invoke-direct {v0, p0, p1}, LMe/V;-><init>(LBe/y;LBe/x;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final y1(LBe/y;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/y<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/i0;

    invoke-direct {v0, p0, p1}, LMe/i0;-><init>(LBe/y;LBe/y;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final z0(LFe/o;)LBe/s;
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
            "LFe/o<",
            "-TT;+TR;>;)",
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/W;

    invoke-direct {v0, p0, p1}, LMe/W;-><init>(LBe/y;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final z1(Lhn/b;)LBe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/j0;

    invoke-direct {v0, p0, p1}, LMe/j0;-><init>(LBe/y;Lhn/b;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method
