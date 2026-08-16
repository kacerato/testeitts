.class public LXi/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/d;


# instance fields
.field public final g:Ljk/e;

.field public final h:[B

.field public final i:Ljk/i;

.field public final j:Ljava/math/BigInteger;

.field public final k:Ljava/math/BigInteger;

.field public l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;)V
    .locals 6

    .line 1
    sget-object v4, Ljk/d;->b:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXi/G;->l:Ljava/math/BigInteger;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, LXi/G;->g:Ljk/e;

    invoke-static {p1, p2}, LXi/G;->h(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    iput-object p1, p0, LXi/G;->i:Ljk/i;

    iput-object p3, p0, LXi/G;->j:Ljava/math/BigInteger;

    iput-object p4, p0, LXi/G;->k:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/G;->h:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "n"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "curve"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lki/l;)V
    .locals 6

    .line 4
    invoke-virtual {p1}, Lki/l;->v()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-virtual {p1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lki/l;->D()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static h(Ljk/e;Ljk/i;)Ljk/i;
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Ljk/c;->l(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p0

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object p0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljk/i;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Point cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 1

    iget-object v0, p0, LXi/G;->g:Ljk/e;

    return-object v0
.end method

.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, LXi/G;->i:Ljk/i;

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/G;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public declared-synchronized d()Ljava/math/BigInteger;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LXi/G;->l:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, LXi/G;->j:Ljava/math/BigInteger;

    iget-object v1, p0, LXi/G;->k:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/util/b;->o(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXi/G;->l:Ljava/math/BigInteger;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LXi/G;->l:Ljava/math/BigInteger;
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

.method public e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXi/G;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LXi/G;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LXi/G;

    iget-object v1, p0, LXi/G;->g:Ljk/e;

    iget-object v3, p1, LXi/G;->g:Ljk/e;

    invoke-virtual {v1, v3}, Ljk/e;->n(Ljk/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LXi/G;->i:Ljk/i;

    iget-object v3, p1, LXi/G;->i:Ljk/i;

    invoke-virtual {v1, v3}, Ljk/i;->e(Ljk/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LXi/G;->j:Ljava/math/BigInteger;

    iget-object p1, p1, LXi/G;->j:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, LXi/G;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scalar is not in the interval [1, n - 1]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Scalar cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LXi/G;->g:Ljk/e;

    invoke-virtual {v0}, Ljk/e;->hashCode()I

    move-result v0

    const/16 v1, 0x404

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, LXi/G;->i:Ljk/i;

    invoke-virtual {v1}, Ljk/i;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, LXi/G;->j:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Ljk/i;)Ljk/i;
    .locals 1

    invoke-virtual {p0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0, p1}, LXi/G;->h(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method
