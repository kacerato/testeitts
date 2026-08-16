.class public abstract Ljk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljk/f$a;,
        Ljk/f$b;,
        Ljk/f$c;,
        Ljk/f$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljk/f;)Ljk/f;
.end method

.method public abstract b()Ljk/f;
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public abstract d(Ljk/f;)Ljk/f;
.end method

.method public e()[B
    .locals 2

    invoke-virtual {p0}, Ljk/f;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljk/f;
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Ljk/f;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k(Ljk/f;)Ljk/f;
.end method

.method public l(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljk/f;->t(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract n()Ljk/f;
.end method

.method public abstract o()Ljk/f;
.end method

.method public abstract p()Ljk/f;
.end method

.method public q(Ljk/f;Ljk/f;)Ljk/f;
    .locals 1

    invoke-virtual {p0}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljk/f;->t(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljk/f;Ljk/f;)Ljk/f;
    .locals 1

    invoke-virtual {p0}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public s(I)Ljk/f;
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract t(Ljk/f;)Ljk/f;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public abstract v()Ljava/math/BigInteger;
.end method
