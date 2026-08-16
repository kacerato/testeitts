.class public final LLe/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/t0$h;,
        LLe/t0$o;,
        LLe/t0$b;,
        LLe/t0$a;,
        LLe/t0$g;,
        LLe/t0$p;,
        LLe/t0$i;,
        LLe/t0$c;,
        LLe/t0$e;,
        LLe/t0$d;,
        LLe/t0$l;,
        LLe/t0$m;,
        LLe/t0$n;,
        LLe/t0$f;,
        LLe/t0$j;,
        LLe/t0$k;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(LFe/o;)LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LFe/o<",
            "TT;",
            "Lhn/b<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$c;

    invoke-direct {v0, p0}, LLe/t0$c;-><init>(LFe/o;)V

    return-object v0
.end method

.method public static b(LFe/o;LFe/c;)LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LFe/o<",
            "TT;",
            "Lhn/b<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$e;

    invoke-direct {v0, p1, p0}, LLe/t0$e;-><init>(LFe/c;LFe/o;)V

    return-object v0
.end method

.method public static c(LFe/o;)LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TU;>;>;)",
            "LFe/o<",
            "TT;",
            "Lhn/b<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$f;

    invoke-direct {v0, p0}, LLe/t0$f;-><init>(LFe/o;)V

    return-object v0
.end method

.method public static d(LBe/l;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "LEe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$g;

    invoke-direct {v0, p0}, LLe/t0$g;-><init>(LBe/l;)V

    return-object v0
.end method

.method public static e(LBe/l;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "LEe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$a;

    invoke-direct {v0, p0, p1}, LLe/t0$a;-><init>(LBe/l;I)V

    return-object v0
.end method

.method public static f(LBe/l;IJLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LEe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, LLe/t0$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LLe/t0$b;-><init>(LBe/l;IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-object v7
.end method

.method public static g(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LEe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, LLe/t0$o;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LLe/t0$o;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-object v6
.end method

.method public static h(LFe/o;LBe/J;)LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;",
            "LBe/J;",
            ")",
            "LFe/o<",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$h;

    invoke-direct {v0, p0, p1}, LLe/t0$h;-><init>(LFe/o;LBe/J;)V

    return-object v0
.end method

.method public static i(LFe/b;)LFe/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;)",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$j;

    invoke-direct {v0, p0}, LLe/t0$j;-><init>(LFe/b;)V

    return-object v0
.end method

.method public static j(LFe/g;)LFe/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/g<",
            "LBe/k<",
            "TT;>;>;)",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$k;

    invoke-direct {v0, p0}, LLe/t0$k;-><init>(LFe/g;)V

    return-object v0
.end method

.method public static k(Lhn/c;)LFe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/c<",
            "TT;>;)",
            "LFe/a;"
        }
    .end annotation

    new-instance v0, LLe/t0$l;

    invoke-direct {v0, p0}, LLe/t0$l;-><init>(Lhn/c;)V

    return-object v0
.end method

.method public static l(Lhn/c;)LFe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/c<",
            "TT;>;)",
            "LFe/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, LLe/t0$m;

    invoke-direct {v0, p0}, LLe/t0$m;-><init>(Lhn/c;)V

    return-object v0
.end method

.method public static m(Lhn/c;)LFe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/c<",
            "TT;>;)",
            "LFe/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$n;

    invoke-direct {v0, p0}, LLe/t0$n;-><init>(Lhn/c;)V

    return-object v0
.end method

.method public static n(LFe/o;)LFe/o;
    .locals 1
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
            "+TR;>;)",
            "LFe/o<",
            "Ljava/util/List<",
            "Lhn/b<",
            "+TT;>;>;",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, LLe/t0$p;

    invoke-direct {v0, p0}, LLe/t0$p;-><init>(LFe/o;)V

    return-object v0
.end method
