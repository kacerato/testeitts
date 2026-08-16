.class public LOi/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/math/BigInteger;


# instance fields
.field public a:LXi/F0;

.field public b:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LOi/L;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, LOi/L;->a:LXi/F0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v2, p0, LOi/L;->b:Ljava/security/SecureRandom;

    invoke-static {v1, v2}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, LOi/L;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/b;->p(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/x0;

    invoke-virtual {p1}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/F0;

    iput-object v0, p0, LOi/L;->a:LXi/F0;

    invoke-virtual {p1}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LOi/L;->b:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_0
    check-cast p1, LXi/F0;

    iput-object p1, p0, LOi/L;->a:LXi/F0;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, LOi/L;->a:LXi/F0;

    instance-of p1, p1, LXi/G0;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "generator requires RSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
