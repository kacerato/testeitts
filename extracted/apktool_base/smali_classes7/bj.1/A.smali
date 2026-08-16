.class public Lbj/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILBi/k;Z)LBi/n;
    .locals 1

    new-instance v0, LHi/c;

    invoke-static {p3}, Lbj/A;->e(Z)LBi/o;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;LXi/x;Z)LBi/n;
    .locals 2

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/x;->d()LXi/z;

    move-result-object v1

    invoke-virtual {v1}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lbj/A;->e(Z)LBi/o;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;LXi/J;Z)LBi/n;
    .locals 2

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-static {v1}, LHi/b;->b(Ljk/e;)I

    move-result v1

    invoke-static {p2}, Lbj/A;->e(Z)LBi/o;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;LXi/b0;Z)LBi/n;
    .locals 2

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/b0;->d()LXi/c0;

    move-result-object v1

    invoke-virtual {v1}, LXi/c0;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lbj/A;->e(Z)LBi/o;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    return-object v0
.end method

.method public static e(Z)LBi/o;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, LBi/o;->SIGNING:LBi/o;

    goto :goto_0

    :cond_0
    sget-object p0, LBi/o;->VERIFYING:LBi/o;

    :goto_0
    return-object p0
.end method
