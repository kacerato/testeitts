.class public LCi/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;LXi/n;)LBi/n;
    .locals 3

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v1

    invoke-virtual {v1}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, LBi/o;->AGREEMENT:LBi/o;

    invoke-direct {v0, p0, v1, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;LXi/J;)LBi/n;
    .locals 3

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-static {v1}, LHi/b;->b(Ljk/e;)I

    move-result v1

    sget-object v2, LBi/o;->AGREEMENT:LBi/o;

    invoke-direct {v0, p0, v1, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;LXi/N0;)LBi/n;
    .locals 3

    new-instance v0, LHi/c;

    const/16 v1, 0x80

    sget-object v2, LBi/o;->AGREEMENT:LBi/o;

    invoke-direct {v0, p0, v1, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;LXi/Q0;)LBi/n;
    .locals 3

    new-instance v0, LHi/c;

    const/16 v1, 0xe0

    sget-object v2, LBi/o;->AGREEMENT:LBi/o;

    invoke-direct {v0, p0, v1, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method
