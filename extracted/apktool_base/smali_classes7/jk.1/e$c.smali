.class public abstract Ljk/e$c;
.super Ljk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lrk/c;->b(Ljava/math/BigInteger;)Lrk/b;

    move-result-object p1

    invoke-direct {p0, p1}, Ljk/e;-><init>(Lrk/b;)V

    return-void
.end method

.method public static L(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method

.method public static M(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public D(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljk/e;->v()Lrk/b;

    move-result-object v0

    invoke-interface {v0}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H(Ljava/security/SecureRandom;)Ljk/f;
    .locals 2

    invoke-virtual {p0}, Ljk/e;->v()Lrk/b;

    move-result-object v0

    invoke-interface {v0}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Ljk/e$c;->L(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    invoke-static {p1, v0}, Ljk/e$c;->L(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/security/SecureRandom;)Ljk/f;
    .locals 2

    invoke-virtual {p0}, Ljk/e;->v()Lrk/b;

    move-result-object v0

    invoke-interface {v0}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Ljk/e$c;->M(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    invoke-static {p1, v0}, Ljk/e$c;->M(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/math/BigInteger;)Ljk/i;
    .locals 3

    invoke-virtual {p0, p2}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p2

    invoke-virtual {p2}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    iget-object v1, p0, Ljk/e;->b:Ljk/f;

    invoke-virtual {v0, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    iget-object v1, p0, Ljk/e;->c:Ljk/f;

    invoke-virtual {v0, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->o()Ljk/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljk/f;->u()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljk/f;->n()Ljk/f;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p2, v0}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point compression"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
