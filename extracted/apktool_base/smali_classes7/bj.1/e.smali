.class public Lbj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/t;


# static fields
.field public static final i:Ljava/math/BigInteger;


# instance fields
.field public g:LXi/J;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lbj/e;->i:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/math/BigInteger;Ljk/f;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lbj/e;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljk/e;[B)Ljk/f;
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/a;->N0([B)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result p1

    invoke-static {v0, p1}, Lbj/e;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p1, :cond_0

    sget-object v0, Lbj/e;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/e;->h:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/e;->h:Ljava/security/SecureRandom;

    :goto_0
    check-cast p2, LXi/L;

    :goto_1
    iput-object p2, p0, Lbj/e;->g:LXi/J;

    goto :goto_2

    :cond_1
    check-cast p2, LXi/M;

    goto :goto_1

    :goto_2
    const-string p2, "DSTU4145"

    iget-object v0, p0, Lbj/e;->g:LXi/J;

    invoke-static {p2, v0, p1}, Lbj/A;->c(Ljava/lang/String;LXi/J;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public b([B)[Ljava/math/BigInteger;
    .locals 7

    iget-object v0, p0, Lbj/e;->g:LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-static {v1, p1}, Lbj/e;->g(Ljk/e;[B)Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lbj/e;->i:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    :cond_0
    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lbj/e;->g:LXi/J;

    check-cast v2, LXi/L;

    invoke-virtual {v2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lbj/e;->d()Ljk/h;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lbj/e;->h:Ljava/security/SecureRandom;

    invoke-static {v1, v4}, Lbj/e;->f(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v5

    invoke-virtual {v5}, Ljk/i;->B()Ljk/i;

    move-result-object v5

    invoke-virtual {v5}, Ljk/i;->f()Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->j()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-static {v1, v5}, Lbj/e;->e(Ljava/math/BigInteger;Ljk/f;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eqz v6, :cond_1

    filled-new-array {v5, v4}, [Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbj/e;->g:LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-static {v3, p1}, Lbj/e;->g(Ljk/e;[B)Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p1, Lbj/e;->i:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    :cond_2
    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    iget-object v3, p0, Lbj/e;->g:LXi/J;

    check-cast v3, LXi/M;

    invoke-virtual {v3}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-static {v0, p3, v3, p2}, Ljk/c;->v(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p3

    invoke-virtual {p3}, Ljk/i;->B()Ljk/i;

    move-result-object p3

    invoke-virtual {p3}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p3}, Ljk/i;->f()Ljk/f;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-static {v2, p1}, Lbj/e;->e(Ljava/math/BigInteger;Ljk/f;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public d()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lbj/e;->g:LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
