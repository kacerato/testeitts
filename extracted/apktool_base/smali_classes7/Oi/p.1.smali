.class public LOi/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;
.implements Ljk/d;


# instance fields
.field public final g:Ljava/lang/String;

.field public h:LXi/G;

.field public i:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ECKeyGen"

    invoke-direct {p0, v0}, LOi/p;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/p;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 5

    iget-object v0, p0, LOi/p;->h:LXi/G;

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x2

    :goto_0
    iget-object v3, p0, LOi/p;->i:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, LOi/p;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljk/B;->i(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LOi/p;->c()Ljk/h;

    move-result-object v0

    iget-object v1, p0, LOi/p;->h:LXi/G;

    invoke-virtual {v1}, LXi/G;->b()Ljk/i;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    new-instance v1, LBi/c;

    new-instance v2, LXi/M;

    iget-object v4, p0, LOi/p;->h:LXi/G;

    invoke-direct {v2, v0, v4}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    new-instance v0, LXi/L;

    iget-object v4, p0, LOi/p;->h:LXi/G;

    invoke-direct {v0, v3, v4}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    invoke-direct {v1, v2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/I;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LOi/p;->i:Ljava/security/SecureRandom;

    invoke-virtual {p1}, LXi/I;->c()LXi/G;

    move-result-object v0

    iput-object v0, p0, LOi/p;->h:LXi/G;

    new-instance v1, LHi/c;

    iget-object v2, p0, LOi/p;->g:Ljava/lang/String;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0}, LHi/b;->b(Ljk/e;)I

    move-result v0

    invoke-virtual {p1}, LXi/I;->c()LXi/G;

    move-result-object p1

    sget-object v3, LBi/o;->KEYGEN:LBi/o;

    invoke-direct {v1, v2, v0, p1, v3}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public c()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method

.method public d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1

    sget-object v0, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
