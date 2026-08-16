.class public LCi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LXi/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)[B
    .locals 4

    check-cast p1, LXi/u;

    new-instance v0, LCi/b;

    invoke-direct {v0}, LCi/b;-><init>()V

    new-instance v1, LCi/b;

    invoke-direct {v1}, LCi/b;-><init>()V

    iget-object v2, p0, LCi/d;->a:LXi/t;

    invoke-virtual {v2}, LXi/t;->c()LXi/r;

    move-result-object v2

    invoke-virtual {v0, v2}, LCi/b;->a(LBi/k;)V

    invoke-virtual {p1}, LXi/u;->b()LXi/s;

    move-result-object v2

    invoke-virtual {v0, v2}, LCi/b;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, LCi/d;->a:LXi/t;

    invoke-virtual {v2}, LXi/t;->a()LXi/r;

    move-result-object v2

    invoke-virtual {v1, v2}, LCi/b;->a(LBi/k;)V

    invoke-virtual {p1}, LXi/u;->a()LXi/s;

    move-result-object p1

    invoke-virtual {v1, p1}, LCi/b;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, LCi/d;->b()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Lorg/bouncycastle/util/b;->a(Ljava/math/BigInteger;[BII)V

    invoke-static {v0, v2, v1, v1}, Lorg/bouncycastle/util/b;->a(Ljava/math/BigInteger;[BII)V

    return-object v2
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LCi/d;->a:LXi/t;

    invoke-virtual {v0}, LXi/t;->c()LXi/r;

    move-result-object v0

    invoke-virtual {v0}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public c(LBi/k;)V
    .locals 1

    check-cast p1, LXi/t;

    iput-object p1, p0, LCi/d;->a:LXi/t;

    const-string v0, "DHU"

    invoke-virtual {p1}, LXi/t;->c()LXi/r;

    move-result-object p1

    invoke-static {v0, p1}, LCi/m;->a(Ljava/lang/String;LXi/n;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method
