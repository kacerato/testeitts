.class public LJi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJi/j;


# instance fields
.field public a:LXi/M;

.field public b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJi/f;->b:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/M;

    if-eqz v0, :cond_0

    check-cast p1, LXi/M;

    iput-object p1, p0, LJi/f;->a:LXi/M;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPublicKeyParameters are required for fixed transform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LJi/i;)LJi/i;
    .locals 5

    iget-object v0, p0, LJi/f;->a:LXi/M;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LJi/f;->d()Ljk/h;

    move-result-object v2

    iget-object v3, p0, LJi/f;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v2

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {p1}, LJi/i;->b()Ljk/i;

    move-result-object v4

    invoke-static {v3, v4}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v2

    iget-object v3, p0, LJi/f;->a:LXi/M;

    invoke-virtual {v3}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {p1}, LJi/i;->c()Ljk/i;

    move-result-object p1

    invoke-static {v3, p1}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljk/i;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/e;->E([Ljk/i;)V

    new-instance v0, LJi/i;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, LJi/i;-><init>(Ljk/i;Ljk/i;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECFixedTransform not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LJi/f;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public d()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method
