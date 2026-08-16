.class public abstract LLi/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/f;


# static fields
.field public static final d:I = 0x10

.field public static final e:I = 0x20

.field public static final f:I = -0x61c88647


# instance fields
.field public a:Z

.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/p0;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, LHi/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method private k()LBi/o;
    .locals 1

    iget-object v0, p0, LLi/p0;->b:[I

    if-nez v0, :cond_0

    sget-object v0, LBi/o;->ANY:LBi/o;

    return-object v0

    :cond_0
    iget-boolean v0, p0, LLi/p0;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, LBi/o;->ENCRYPTION:LBi/o;

    goto :goto_0

    :cond_1
    sget-object v0, LBi/o;->DECRYPTION:LBi/o;

    :goto_0
    return-object v0
.end method

.method public static v(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static w(II)I
    .locals 1

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final A([IIIII)V
    .locals 4

    xor-int v0, p2, p3

    and-int v1, p2, p4

    or-int/2addr p2, p5

    xor-int/2addr p4, p5

    and-int v2, v0, p2

    or-int/2addr v1, v2

    xor-int v2, p4, v1

    const/4 v3, 0x2

    aput v2, p1, v3

    xor-int/2addr p2, p3

    xor-int/2addr p2, v1

    and-int v1, p4, p2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    and-int/2addr v0, v2

    const/4 v1, 0x1

    xor-int/2addr p2, v0

    aput p2, p1, v1

    or-int p2, p3, p5

    xor-int p3, p4, v0

    xor-int/2addr p2, p3

    const/4 p3, 0x3

    aput p2, p1, p3

    return-void
.end method

.method public final B([IIIII)V
    .locals 3

    xor-int v0, p2, p5

    and-int/2addr p5, v0

    xor-int/2addr p4, p5

    or-int p5, p3, p4

    const/4 v1, 0x3

    xor-int v2, v0, p5

    aput v2, p1, v1

    not-int p3, p3

    or-int v1, v0, p3

    xor-int/2addr v1, p4

    const/4 v2, 0x0

    aput v1, p1, v2

    and-int/2addr v1, p2

    xor-int/2addr p3, v0

    and-int/2addr p5, p3

    xor-int/2addr p5, v1

    const/4 v0, 0x2

    aput p5, p1, v0

    xor-int/2addr p2, p4

    and-int/2addr p3, p5

    xor-int/2addr p2, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    return-void
.end method

.method public final C([IIIII)V
    .locals 4

    not-int v0, p2

    xor-int v1, p2, p3

    xor-int/2addr p2, p5

    xor-int/2addr p4, v0

    or-int v2, v1, p2

    xor-int/2addr p4, v2

    const/4 v2, 0x0

    aput p4, p1, v2

    and-int/2addr p5, p4

    xor-int v2, v1, p4

    xor-int/2addr v2, p5

    const/4 v3, 0x1

    aput v2, p1, v3

    or-int/2addr p4, v0

    or-int v0, v1, p5

    xor-int/2addr p2, p4

    const/4 p4, 0x2

    xor-int/2addr v0, p2

    aput v0, p1, p4

    xor-int/2addr p3, p5

    and-int/2addr p2, v2

    xor-int/2addr p2, p3

    const/4 p3, 0x3

    aput p2, p1, p3

    return-void
.end method

.method public final D([IIIII)V
    .locals 2

    not-int v0, p2

    xor-int/2addr p2, p5

    xor-int v1, p3, p2

    or-int/2addr v0, p2

    xor-int/2addr p4, v0

    xor-int/2addr p3, p4

    const/4 v0, 0x1

    aput p3, p1, v0

    or-int/2addr p2, p3

    xor-int/2addr p2, p5

    and-int p3, p4, p2

    xor-int/2addr p3, v1

    const/4 p5, 0x2

    aput p3, p1, p5

    xor-int/2addr p2, p4

    const/4 p5, 0x0

    xor-int/2addr p3, p2

    aput p3, p1, p5

    not-int p3, p4

    and-int/2addr p2, v1

    xor-int/2addr p2, p3

    const/4 p3, 0x3

    aput p2, p1, p3

    return-void
.end method

.method public final E([IIIII)V
    .locals 2

    xor-int v0, p3, p4

    and-int/2addr p4, v0

    xor-int/2addr p4, p5

    xor-int v1, p2, p4

    or-int/2addr p5, v0

    and-int/2addr p5, v1

    xor-int/2addr p3, p5

    const/4 p5, 0x1

    aput p3, p1, p5

    or-int/2addr p3, p4

    and-int/2addr p2, v1

    xor-int/2addr p2, v0

    const/4 p5, 0x3

    aput p2, p1, p5

    xor-int/2addr p3, v1

    and-int p5, p2, p3

    xor-int/2addr p4, p5

    const/4 p5, 0x2

    aput p4, p1, p5

    not-int p3, p3

    and-int/2addr p2, p4

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void
.end method

.method public a(ZLBi/k;)V
    .locals 3

    instance-of v0, p2, LXi/o0;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, LLi/p0;->a:Z

    move-object p1, p2

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LLi/p0;->u([B)[I

    move-result-object v0

    iput-object v0, p0, LLi/p0;->b:[I

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/p0;->b()Ljava/lang/String;

    move-result-object v1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    invoke-direct {p0}, LLi/p0;->k()LBi/o;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LLi/p0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Serpent"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final f([I)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    const/16 v2, 0xd

    invoke-static {v1, v2}, LLi/p0;->v(II)I

    move-result v1

    const/4 v2, 0x2

    aget v3, p1, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, LLi/p0;->v(II)I

    move-result v3

    const/4 v5, 0x1

    aget v6, p1, v5

    xor-int/2addr v6, v1

    xor-int/2addr v6, v3

    aget v7, p1, v4

    xor-int/2addr v7, v3

    shl-int/lit8 v8, v1, 0x3

    xor-int/2addr v7, v8

    invoke-static {v6, v5}, LLi/p0;->v(II)I

    move-result v6

    aput v6, p1, v5

    const/4 v6, 0x7

    invoke-static {v7, v6}, LLi/p0;->v(II)I

    move-result v7

    aput v7, p1, v4

    aget v8, p1, v5

    xor-int/2addr v1, v8

    xor-int/2addr v1, v7

    const/4 v7, 0x5

    invoke-static {v1, v7}, LLi/p0;->v(II)I

    move-result v1

    aput v1, p1, v0

    aget v0, p1, v4

    xor-int/2addr v0, v3

    aget v1, p1, v5

    shl-int/2addr v1, v6

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v0, v1}, LLi/p0;->v(II)I

    move-result v0

    aput v0, p1, v2

    return-void
.end method

.method public final g([BI[BI)I
    .locals 2

    iget-object v0, p0, LLi/p0;->b:[I

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, LLi/p0;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, LLi/p0;->j([BI[BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, LLi/p0;->i([BI[BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/p0;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract i([BI[BI)V
.end method

.method public abstract j([BI[BI)V
.end method

.method public final l([IIIII)V
    .locals 4

    not-int v0, p2

    xor-int/2addr p3, p2

    or-int v1, v0, p3

    xor-int/2addr v1, p5

    xor-int/2addr p4, v1

    xor-int v2, p3, p4

    const/4 v3, 0x2

    aput v2, p1, v3

    and-int/2addr p3, p5

    xor-int/2addr p3, v0

    and-int p5, v2, p3

    xor-int/2addr p5, v1

    const/4 v0, 0x1

    aput p5, p1, v0

    and-int/2addr p2, v1

    or-int/2addr p5, p4

    xor-int/2addr p2, p5

    const/4 p5, 0x3

    aput p2, p1, p5

    xor-int/2addr p3, p4

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void
.end method

.method public final m([IIIII)V
    .locals 2

    xor-int/2addr p5, p3

    and-int v0, p3, p5

    xor-int/2addr p2, v0

    xor-int v0, p5, p2

    xor-int/2addr p4, v0

    const/4 v1, 0x3

    aput p4, p1, v1

    and-int/2addr p5, p2

    xor-int/2addr p3, p5

    or-int p5, p4, p3

    xor-int/2addr p2, p5

    const/4 p5, 0x1

    aput p2, p1, p5

    not-int p2, p2

    xor-int/2addr p3, p4

    const/4 p4, 0x0

    xor-int p5, p2, p3

    aput p5, p1, p4

    or-int/2addr p2, p3

    xor-int/2addr p2, v0

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public final n([IIIII)V
    .locals 4

    xor-int v0, p3, p5

    not-int v1, v0

    xor-int v2, p2, p4

    xor-int/2addr p4, v0

    and-int/2addr p3, p4

    xor-int/2addr p3, v2

    const/4 v3, 0x0

    aput p3, p1, v3

    or-int/2addr p2, v1

    xor-int/2addr p2, p5

    or-int/2addr p2, v2

    xor-int/2addr p2, v0

    const/4 v0, 0x3

    aput p2, p1, v0

    not-int p4, p4

    or-int/2addr p2, p3

    const/4 p3, 0x1

    xor-int v0, p4, p2

    aput v0, p1, p3

    and-int p3, p5, p4

    xor-int/2addr p2, v2

    xor-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public final o([IIIII)V
    .locals 4

    or-int v0, p2, p3

    xor-int v1, p3, p4

    and-int/2addr p3, v1

    xor-int/2addr p2, p3

    xor-int p3, p4, p2

    or-int p4, p5, p2

    xor-int v2, v1, p4

    const/4 v3, 0x0

    aput v2, p1, v3

    or-int/2addr p4, v1

    xor-int/2addr p4, p5

    const/4 p5, 0x2

    xor-int/2addr p3, p4

    aput p3, p1, p5

    xor-int p3, v0, p4

    and-int p4, v2, p3

    xor-int/2addr p2, p4

    const/4 p4, 0x3

    aput p2, p1, p4

    xor-int/2addr p3, v2

    xor-int/2addr p2, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    return-void
.end method

.method public final p([IIIII)V
    .locals 2

    or-int v0, p4, p5

    and-int/2addr v0, p2

    xor-int/2addr p3, v0

    and-int v0, p2, p3

    xor-int/2addr p4, v0

    xor-int v0, p5, p4

    const/4 v1, 0x1

    aput v0, p1, v1

    not-int p2, p2

    and-int/2addr p4, v0

    xor-int/2addr p4, p3

    const/4 v1, 0x3

    aput p4, p1, v1

    or-int v1, v0, p2

    xor-int/2addr p5, v1

    const/4 v1, 0x0

    xor-int/2addr p4, p5

    aput p4, p1, v1

    and-int/2addr p3, p5

    xor-int/2addr p2, v0

    xor-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public final q([IIIII)V
    .locals 6

    not-int v0, p4

    and-int v1, p3, v0

    xor-int/2addr v1, p5

    and-int v2, p2, v1

    xor-int v3, p3, v0

    xor-int/2addr v3, v2

    const/4 v4, 0x3

    aput v3, p1, v4

    or-int/2addr v3, p3

    and-int v4, p2, v3

    const/4 v5, 0x1

    xor-int/2addr v1, v4

    aput v1, p1, v5

    or-int/2addr p5, p2

    xor-int/2addr v0, v3

    const/4 v1, 0x0

    xor-int/2addr v0, p5

    aput v0, p1, v1

    and-int/2addr p3, p5

    xor-int/2addr p2, p4

    or-int/2addr p2, v2

    xor-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public final r([IIIII)V
    .locals 4

    not-int v0, p2

    xor-int/2addr p2, p3

    xor-int v1, p4, p2

    or-int/2addr p4, v0

    xor-int/2addr p4, p5

    const/4 v2, 0x1

    xor-int v3, v1, p4

    aput v3, p1, v2

    and-int v2, v1, p4

    xor-int/2addr p2, v2

    or-int v2, p3, p2

    xor-int/2addr p4, v2

    const/4 v2, 0x3

    aput p4, p1, v2

    or-int/2addr p3, p4

    const/4 p4, 0x0

    xor-int/2addr p2, p3

    aput p2, p1, p4

    and-int p2, p5, v0

    xor-int/2addr p3, v1

    xor-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public final s([IIIII)V
    .locals 4

    and-int v0, p2, p3

    or-int/2addr v0, p4

    or-int v1, p2, p3

    and-int/2addr v1, p5

    xor-int v2, v0, v1

    const/4 v3, 0x3

    aput v2, p1, v3

    not-int v3, p5

    xor-int/2addr p3, v1

    xor-int v1, v2, v3

    or-int/2addr v1, p3

    xor-int/2addr v1, p2

    const/4 v3, 0x1

    aput v1, p1, v3

    xor-int/2addr p3, p4

    or-int p4, p5, v1

    xor-int/2addr p3, p4

    const/4 p4, 0x0

    aput p3, p1, p4

    xor-int p4, v0, v1

    and-int/2addr p2, v2

    xor-int/2addr p2, p3

    xor-int/2addr p2, p4

    const/4 p3, 0x2

    aput p2, p1, p3

    return-void
.end method

.method public final t([I)V
    .locals 9

    const/4 v0, 0x2

    aget v1, p1, v0

    const/16 v2, 0x16

    invoke-static {v1, v2}, LLi/p0;->w(II)I

    move-result v1

    const/4 v2, 0x3

    aget v3, p1, v2

    xor-int/2addr v1, v3

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x7

    shl-int/2addr v4, v5

    xor-int/2addr v1, v4

    const/4 v4, 0x0

    aget v6, p1, v4

    const/4 v7, 0x5

    invoke-static {v6, v7}, LLi/p0;->w(II)I

    move-result v6

    aget v7, p1, v3

    xor-int/2addr v6, v7

    aget v7, p1, v2

    xor-int/2addr v6, v7

    invoke-static {v7, v5}, LLi/p0;->w(II)I

    move-result v5

    aget v7, p1, v3

    invoke-static {v7, v3}, LLi/p0;->w(II)I

    move-result v7

    xor-int/2addr v5, v1

    shl-int/lit8 v8, v6, 0x3

    xor-int/2addr v5, v8

    aput v5, p1, v2

    xor-int v5, v7, v6

    xor-int/2addr v5, v1

    aput v5, p1, v3

    invoke-static {v1, v2}, LLi/p0;->w(II)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xd

    invoke-static {v6, v0}, LLi/p0;->w(II)I

    move-result v0

    aput v0, p1, v4

    return-void
.end method

.method public abstract u([B)[I
.end method

.method public final x([IIIII)V
    .locals 4

    xor-int v0, p2, p5

    xor-int v1, p4, v0

    xor-int v2, p3, v1

    and-int/2addr p5, p2

    xor-int/2addr p5, v2

    const/4 v3, 0x3

    aput p5, p1, v3

    and-int/2addr p3, v0

    xor-int/2addr p2, p3

    or-int p3, p4, p2

    xor-int/2addr p3, v2

    const/4 p4, 0x2

    aput p3, p1, p4

    xor-int p3, v1, p2

    and-int/2addr p3, p5

    not-int p4, v1

    xor-int/2addr p4, p3

    const/4 p5, 0x1

    aput p4, p1, p5

    not-int p2, p2

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void
.end method

.method public final y([IIIII)V
    .locals 2

    not-int v0, p2

    xor-int/2addr v0, p3

    or-int/2addr p2, v0

    xor-int/2addr p2, p4

    xor-int p4, p5, p2

    const/4 v1, 0x2

    aput p4, p1, v1

    or-int/2addr p5, v0

    xor-int/2addr p3, p5

    xor-int/2addr p4, v0

    and-int p5, p2, p3

    xor-int/2addr p5, p4

    const/4 v0, 0x3

    aput p5, p1, v0

    xor-int/2addr p3, p2

    const/4 v0, 0x1

    xor-int/2addr p5, p3

    aput p5, p1, v0

    and-int/2addr p3, p4

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void
.end method

.method public final z([IIIII)V
    .locals 5

    not-int v0, p2

    xor-int v1, p3, p5

    and-int v2, p4, v0

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    aput v2, p1, v3

    xor-int v3, p4, v0

    xor-int/2addr p4, v2

    and-int/2addr p3, p4

    xor-int p4, v3, p3

    const/4 v4, 0x3

    aput p4, p1, v4

    or-int/2addr p3, p5

    or-int/2addr v2, v3

    and-int/2addr p3, v2

    xor-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    xor-int p3, v1, p4

    or-int p4, p5, v0

    xor-int/2addr p2, p4

    xor-int/2addr p2, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    return-void
.end method
