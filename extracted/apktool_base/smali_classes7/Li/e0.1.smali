.class public LLi/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# static fields
.field public static final d:Ljava/math/BigInteger;


# instance fields
.field public a:LLi/g0;

.field public b:LXi/F0;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LLi/e0;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LLi/g0;

    invoke-direct {v0}, LLi/g0;-><init>()V

    iput-object v0, p0, LLi/e0;->a:LLi/g0;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v1, p1, p2}, LLi/g0;->f(ZLBi/k;)V

    check-cast p2, LXi/F0;

    iput-object p2, p0, LLi/e0;->b:LXi/F0;

    instance-of p1, p2, LXi/G0;

    invoke-virtual {p0, p1, v0}, LLi/e0;->e(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LLi/e0;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method public b([BII)[B
    .locals 1

    iget-object v0, p0, LLi/e0;->b:LXi/F0;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v0, p1, p2, p3}, LLi/g0;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, LLi/e0;->f(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {p2, p1}, LLi/g0;->b(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RSA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->c()I

    move-result v0

    return v0
.end method

.method public e(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, LLi/e0;->b:LXi/F0;

    instance-of v1, v0, LXi/G0;

    if-eqz v1, :cond_0

    check-cast v0, LXi/G0;

    invoke-virtual {v0}, LXi/G0;->l()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, LLi/e0;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, LLi/e0;->c:Ljava/security/SecureRandom;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/b;->n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v1, p1}, LLi/g0;->g(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LLi/e0;->a:LLi/g0;

    invoke-virtual {v0, p1}, LLi/g0;->g(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
