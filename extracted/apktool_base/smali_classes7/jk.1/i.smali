.class public abstract Ljk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljk/i$b;,
        Ljk/i$c;,
        Ljk/i$d;,
        Ljk/i$e;
    }
.end annotation


# static fields
.field public static final f:[Ljk/f;


# instance fields
.field public a:Ljk/e;

.field public b:Ljk/f;

.field public c:Ljk/f;

.field public d:[Ljk/f;

.field public e:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljk/f;

    sput-object v0, Ljk/i;->f:[Ljk/f;

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljk/i;->m(Ljk/e;)[Ljk/f;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljk/i;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljk/i;->e:Ljava/util/Hashtable;

    iput-object p1, p0, Ljk/i;->a:Ljk/e;

    iput-object p2, p0, Ljk/i;->b:Ljk/f;

    iput-object p3, p0, Ljk/i;->c:Ljk/f;

    iput-object p4, p0, Ljk/i;->d:[Ljk/f;

    return-void
.end method

.method public static m(Ljk/e;)[Ljk/f;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/e;->t()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljk/f;

    move-result-object p0

    return-object p0

    :cond_3
    filled-new-array {v1, v1, v1}, [Ljk/f;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    filled-new-array {v1}, [Ljk/f;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Ljk/i;->f:[Ljk/f;

    return-object p0
.end method


# virtual methods
.method public abstract A()Ljk/i;
.end method

.method public B()Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    if-eqz v1, :cond_2

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v2, v1}, Ljk/e;->I(Ljava/security/SecureRandom;)Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->h()Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljk/i;->C(Ljk/f;)Ljk/i;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detached points must be in affine coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method public C(Ljk/f;)Ljk/i;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not a projective coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljk/i;->c(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p1}, Ljk/i;->c(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract D()Z
.end method

.method public E()Z
    .locals 2

    sget-object v0, Ljk/d;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v1}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v0}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Ljk/c;->s(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public F(Ljk/f;)Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public G(Ljk/f;)Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public H(Ljk/f;)Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public I(Ljk/f;)Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract J(Ljk/i;)Ljk/i;
.end method

.method public K()Ljk/i;
    .locals 1

    invoke-virtual {p0, p0}, Ljk/i;->N(Ljk/i;)Ljk/i;

    move-result-object v0

    return-object v0
.end method

.method public L(I)Ljk/i;
    .locals 1

    if-ltz p1, :cond_1

    move-object v0, p0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljk/i;->M()Ljk/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'e\' cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract M()Ljk/i;
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljk/i;)Ljk/i;
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Ljk/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljk/f;Ljk/f;)Ljk/i;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract d()Ljk/i;
.end method

.method public e(Ljk/i;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v6

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v7

    if-nez v6, :cond_9

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Ljk/e;->n(Ljk/e;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-virtual {v1, p1}, Ljk/e;->C(Ljk/i;)Ljk/i;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljk/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/e;->E([Ljk/i;)V

    aget-object v1, p1, v0

    aget-object p1, p1, v3

    :goto_3
    invoke-virtual {v1}, Ljk/i;->q()Ljk/f;

    move-result-object v2

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljk/i;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v0, v3

    :cond_8
    return v0

    :cond_9
    :goto_4
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1, v2}, Ljk/e;->n(Ljk/e;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljk/i;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ljk/i;

    invoke-virtual {p0, p1}, Ljk/i;->e(Ljk/i;)Z

    move-result p1

    return p1
.end method

.method public f()Ljk/f;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->b()V

    invoke-virtual {p0}, Ljk/i;->q()Ljk/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljk/f;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->b()V

    invoke-virtual {p0}, Ljk/i;->r()Ljk/f;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()Z
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljk/e;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->q()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    xor-int/2addr v0, v2

    invoke-virtual {v1}, Ljk/i;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public i()Ljk/e;
    .locals 1

    iget-object v0, p0, Ljk/i;->a:Ljk/e;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Ljk/i;->a:Ljk/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljk/e;->t()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final k()Ljk/i;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->d()Ljk/i;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)[B
    .locals 5

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p1, v1, [B

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->q()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->e()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    array-length p1, v2

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0}, Ljk/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p1, v3

    array-length v0, v2

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Ljk/i;->r()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->e()[B

    move-result-object p1

    array-length v0, v2

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v3

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final n()Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    return-object v0
.end method

.method public final o()Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    return-object v0
.end method

.method public final p()[Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    return-object v0
.end method

.method public q()Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    return-object v0
.end method

.method public r()Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    return-object v0
.end method

.method public s(I)Ljk/f;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public t()[Ljk/f;
    .locals 4

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Ljk/i;->f:[Ljk/f;

    return-object v0

    :cond_0
    new-array v2, v1, [Ljk/f;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INF"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ljk/i;->d:[Ljk/f;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Ljk/i;->d:[Ljk/f;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    new-instance v2, Ljk/i$a;

    invoke-direct {v2, p0, p1, p2}, Ljk/i$a;-><init>(Ljk/i;ZZ)V

    const-string p1, "bc_validity"

    invoke-virtual {v0, p0, p1, v2}, Ljk/e;->G(Ljk/i;Ljava/lang/String;Ljk/p;)Ljk/q;

    move-result-object p1

    check-cast p1, Ljk/y;

    invoke-virtual {p1}, Ljk/y;->b()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public v()Z
    .locals 3

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public w()Z
    .locals 2

    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public x()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljk/i;->u(ZZ)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ljk/i;->u(ZZ)Z

    move-result v0

    return v0
.end method

.method public z(Ljava/math/BigInteger;)Ljk/i;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->y()Ljk/h;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    return-object p1
.end method
