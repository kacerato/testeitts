.class public abstract Ljk/e$b;
.super Ljk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public q:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljk/e$b;->L(IIII)Lrk/b;

    move-result-object p1

    invoke-direct {p0, p1}, Ljk/e;-><init>(Lrk/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljk/e$b;->q:[Ljava/math/BigInteger;

    const-string p1, "org.bouncycastle.ec.disable"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "org.bouncycastle.ec.disable_f2m"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "F2M disabled by \"org.bouncycastle.ec.disable_f2m\""

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "F2M disabled by \"org.bouncycastle.ec.disable\""

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static L(IIII)Lrk/b;
    .locals 5

    const-string v0, "org.bouncycastle.ec.max_f2m_field_size"

    const/16 v1, 0x476

    invoke-static {v0, v1}, Lorg/bouncycastle/util/q;->b(Ljava/lang/String;I)I

    move-result v0

    if-gt p0, v0, :cond_1

    or-int v0, p2, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p2, v3, [I

    aput v4, p2, v4

    aput p1, p2, v2

    aput p0, p2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v4, v0, v4

    aput p1, v0, v2

    aput p2, v0, v1

    aput p3, v0, v3

    const/4 p1, 0x4

    aput p0, v0, p1

    move-object p2, v0

    :goto_0
    invoke-static {p2}, Lrk/c;->a([I)Lrk/g;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "field size out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static N(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-static {p1, p0}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method

.method public static O(I[ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljk/o;

    invoke-direct {v0, p2}, Ljk/o;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0, p1}, Ljk/o;->I(I[I)Ljk/o;

    move-result-object p0

    invoke-virtual {p0}, Ljk/o;->i0()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public D(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H(Ljava/security/SecureRandom;)Ljk/f;
    .locals 1

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/security/SecureRandom;)Ljk/f;
    .locals 2

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v0

    invoke-static {p1, v0}, Ljk/e$b;->N(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    invoke-static {p1, v0}, Ljk/e$b;->N(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized M()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljk/e$b;->q:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljk/x;->i(Ljk/e$b;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljk/e$b;->q:[Ljava/math/BigInteger;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ljk/e$b;->q:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Ljk/e;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljk/e;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljk/e;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljk/e;->b:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljk/e;->b:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q(Ljk/f;)Ljk/f;
    .locals 9

    move-object v0, p1

    check-cast v0, Ljk/f$a;

    invoke-virtual {v0}, Ljk/f$a;->x()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljk/f$a;->y()I

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljk/f$a;->w()Ljk/f;

    move-result-object v0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p1}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_4
    sget-object v0, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :cond_5
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v4}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, p1

    move-object v7, v0

    :goto_1
    if-ge v5, v3, :cond_6

    invoke-virtual {v6}, Ljk/f;->p()Ljk/f;

    move-result-object v6

    invoke-virtual {v7}, Ljk/f;->p()Ljk/f;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v7

    invoke-virtual {v6, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljk/f;->j()Z

    move-result v4

    if-nez v4, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v7}, Ljk/f;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v4}, Ljk/f;->j()Z

    move-result v4

    if-nez v4, :cond_5

    return-object v7
.end method

.method public i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;
    .locals 2

    invoke-virtual {p0, p1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0, p2}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p2

    invoke-virtual {p0}, Ljk/e;->t()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/e;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p2, p1}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/math/BigInteger;)Ljk/i;
    .locals 3

    invoke-virtual {p0, p2}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p2

    invoke-virtual {p2}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljk/e;->r()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->o()Ljk/f;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->h()Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/e;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljk/e$b;->Q(Ljk/f;)Ljk/f;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljk/f;->u()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljk/f;->b()Ljk/f;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Ljk/e;->t()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    invoke-virtual {v0, p2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2, p1}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point compression"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
