.class public LOi/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:LXi/a0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 8

    iget-object v0, p0, LOi/v;->g:LXi/a0;

    invoke-virtual {v0}, LXi/a0;->c()LXi/c0;

    move-result-object v0

    iget-object v1, p0, LOi/v;->g:LXi/a0;

    invoke-virtual {v1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0}, LXi/c0;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/c0;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LXi/c0;->a()Ljava/math/BigInteger;

    move-result-object v4

    :cond_0
    :goto_0
    const/16 v5, 0x100

    invoke-static {v5, v1}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljk/B;->i(Ljava/math/BigInteger;)I

    move-result v6

    const/16 v7, 0x40

    if-ge v6, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, LBi/c;

    new-instance v3, LXi/e0;

    invoke-direct {v3, v1, v0}, LXi/e0;-><init>(Ljava/math/BigInteger;LXi/c0;)V

    new-instance v1, LXi/d0;

    invoke-direct {v1, v5, v0}, LXi/d0;-><init>(Ljava/math/BigInteger;LXi/c0;)V

    invoke-direct {v2, v3, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/a0;

    iput-object p1, p0, LOi/v;->g:LXi/a0;

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/a0;->c()LXi/c0;

    move-result-object p1

    invoke-virtual {p1}, LXi/c0;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p1

    iget-object v1, p0, LOi/v;->g:LXi/a0;

    invoke-virtual {v1}, LXi/a0;->c()LXi/c0;

    move-result-object v1

    sget-object v2, LBi/o;->KEYGEN:LBi/o;

    const-string v3, "GOST3410KeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method
