.class public final LOe/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/p0$l;,
        LOe/p0$o;,
        LOe/p0$b;,
        LOe/p0$a;,
        LOe/p0$k;,
        LOe/p0$p;,
        LOe/p0$g;,
        LOe/p0$c;,
        LOe/p0$e;,
        LOe/p0$d;,
        LOe/p0$h;,
        LOe/p0$i;,
        LOe/p0$j;,
        LOe/p0$f;,
        LOe/p0$m;,
        LOe/p0$n;
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
            "LBe/G<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$c;

    invoke-direct {v0, p0}, LOe/p0$c;-><init>(LFe/o;)V

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
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LFe/o<",
            "TT;",
            "LBe/G<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$e;

    invoke-direct {v0, p1, p0}, LOe/p0$e;-><init>(LFe/c;LFe/o;)V

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
            "LBe/G<",
            "TU;>;>;)",
            "LFe/o<",
            "TT;",
            "LBe/G<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$f;

    invoke-direct {v0, p0}, LOe/p0$f;-><init>(LFe/o;)V

    return-object v0
.end method

.method public static d(LBe/I;)LFe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/I<",
            "TT;>;)",
            "LFe/a;"
        }
    .end annotation

    new-instance v0, LOe/p0$h;

    invoke-direct {v0, p0}, LOe/p0$h;-><init>(LBe/I;)V

    return-object v0
.end method

.method public static e(LBe/I;)LFe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/I<",
            "TT;>;)",
            "LFe/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, LOe/p0$i;

    invoke-direct {v0, p0}, LOe/p0$i;-><init>(LBe/I;)V

    return-object v0
.end method

.method public static f(LBe/I;)LFe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/I<",
            "TT;>;)",
            "LFe/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$j;

    invoke-direct {v0, p0}, LOe/p0$j;-><init>(LBe/I;)V

    return-object v0
.end method

.method public static g(LBe/B;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/B<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "LVe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$k;

    invoke-direct {v0, p0}, LOe/p0$k;-><init>(LBe/B;)V

    return-object v0
.end method

.method public static h(LBe/B;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/B<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "LVe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$a;

    invoke-direct {v0, p0, p1}, LOe/p0$a;-><init>(LBe/B;I)V

    return-object v0
.end method

.method public static i(LBe/B;IJLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/B<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LVe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, LOe/p0$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LOe/p0$b;-><init>(LBe/B;IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-object v7
.end method

.method public static j(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LVe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, LOe/p0$o;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LOe/p0$o;-><init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-object v6
.end method

.method public static k(LFe/o;LBe/J;)LFe/o;
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
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;",
            "LBe/J;",
            ")",
            "LFe/o<",
            "LBe/B<",
            "TT;>;",
            "LBe/G<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$l;

    invoke-direct {v0, p0, p1}, LOe/p0$l;-><init>(LFe/o;LBe/J;)V

    return-object v0
.end method

.method public static l(LFe/b;)LFe/c;
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

    new-instance v0, LOe/p0$m;

    invoke-direct {v0, p0}, LOe/p0$m;-><init>(LFe/b;)V

    return-object v0
.end method

.method public static m(LFe/g;)LFe/c;
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

    new-instance v0, LOe/p0$n;

    invoke-direct {v0, p0}, LOe/p0$n;-><init>(LFe/g;)V

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
            "LBe/G<",
            "+TT;>;>;",
            "LBe/G<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, LOe/p0$p;

    invoke-direct {v0, p0}, LOe/p0$p;-><init>(LFe/o;)V

    return-object v0
.end method
