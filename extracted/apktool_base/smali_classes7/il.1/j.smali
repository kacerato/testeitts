.class public Lil/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbm/i;


# direct methods
.method public constructor <init>(Lbm/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil/j;->a:Lbm/i;

    return-void
.end method

.method public static a(I)I
    .locals 0

    rem-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public b([B)Lil/m;
    .locals 3

    iget-object v0, p0, Lil/j;->a:Lbm/i;

    instance-of v1, v0, Lbm/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbm/i;->q()I

    move-result v0

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lil/j;->e([B)Lam/d;

    move-result-object v0

    iget-object v1, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->q()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lil/j;->e([B)Lam/d;

    move-result-object p1

    new-instance v1, Lil/m;

    invoke-direct {v1, v0, p1}, Lil/m;-><init>(Lam/e;Lam/e;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Lbm/e;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbm/i;->q()I

    move-result v0

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lil/j;->d([B)Lam/e;

    move-result-object v0

    check-cast v0, Lam/b;

    iget-object v1, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->q()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lil/j;->c([B)Lam/b;

    move-result-object p1

    new-instance v1, Lil/m;

    invoke-direct {v1, v0, p1}, Lil/m;-><init>(Lam/e;Lam/e;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid polynomial type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)Lam/b;
    .locals 12

    iget-object v0, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->c()I

    move-result v0

    iget-object v1, p0, Lil/j;->a:Lbm/i;

    check-cast v1, Lbm/e;

    invoke-virtual {v1}, Lbm/e;->u()I

    move-result v1

    new-instance v2, Lam/b;

    iget-object v3, p0, Lil/j;->a:Lbm/i;

    check-cast v3, Lbm/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lbm/e;)V

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    div-int/lit8 v6, v0, 0x4

    if-ge v5, v6, :cond_0

    mul-int/lit8 v6, v5, 0x4

    mul-int/lit8 v7, v5, 0xf

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x1a

    add-int/2addr v8, v9

    aput v8, v3, v6

    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v9, v5, 0x3

    add-int/lit8 v9, v9, 0xf

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xc0

    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v7, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xc

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x14

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x1c

    add-int/2addr v9, v10

    aput v9, v3, v8

    add-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v5, 0x7

    add-int/lit8 v9, v9, 0xf

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v7, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0x9

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xe

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0xa

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x16

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, 0xb

    aget-byte v10, p1, v10

    and-int/lit16 v11, v10, 0xff

    shl-int/lit8 v11, v11, 0x1e

    add-int/2addr v9, v11

    aput v9, v3, v8

    add-int/lit8 v6, v6, 0x3

    and-int/lit16 v8, v10, 0xfc

    add-int/lit8 v9, v7, 0xc

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0xd

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v8, v7

    aput v8, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    mul-int/lit8 v5, v6, 0x4

    if-le v0, v5, :cond_1

    mul-int/lit8 v7, v6, 0xf

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x1a

    add-int/2addr v8, v9

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v7, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    add-int/lit8 v8, v7, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v6, v8

    add-int/lit8 v8, v7, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x14

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x7

    aget-byte p1, p1, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x1c

    add-int/2addr v6, p1

    aput v6, v3, v5

    :cond_1
    move p1, v4

    :goto_1
    div-int/lit8 v5, v1, 0x2

    if-ge p1, v5, :cond_2

    aget v5, v3, p1

    or-int/lit8 v5, v5, 0x1

    aput v5, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v5, v1, :cond_3

    aget p1, v3, v5

    or-int/lit8 p1, p1, 0x2

    aput p1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    move p1, v4

    :goto_3
    if-ge p1, v0, :cond_4

    iget-object v1, v2, Lam/e;->a:[S

    aget v5, v3, p1

    and-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    aput-short v5, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, v2, Lam/e;->a:[S

    aput-short v4, p1, v0

    return-object v2
.end method

.method public d([B)Lam/e;
    .locals 5

    iget-object v0, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->a()Lam/e;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lam/e;->a:[S

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lil/j;->a(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lam/e;->a:[S

    iget-object v2, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-short v1, p1, v2

    return-object v0
.end method

.method public e([B)Lam/d;
    .locals 7

    iget-object v0, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->c()I

    move-result v0

    invoke-virtual {p0, p1}, Lil/j;->d([B)Lam/e;

    move-result-object p1

    check-cast p1, Lam/d;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lam/e;->a:[S

    aget-short v4, v3, v2

    ushr-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v4, p1, Lam/e;->a:[S

    add-int/lit8 v5, v0, 0x1

    aget-short v6, v4, v5

    aget-short v0, v4, v0

    mul-int/2addr v6, v0

    int-to-short v0, v6

    add-int/2addr v2, v0

    int-to-short v2, v2

    move v0, v5

    goto :goto_1

    :cond_1
    const v0, 0xffff

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0xf

    neg-int v2, v2

    or-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_2

    iget-object v5, p1, Lam/e;->a:[S

    aget-short v6, v5, v4

    mul-int/2addr v6, v2

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, v3, :cond_3

    iget-object v2, p1, Lam/e;->a:[S

    aget-short v4, v2, v1

    and-int v5, v4, v0

    and-int/2addr v4, v0

    ushr-int/lit8 v4, v4, 0xf

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object p1
.end method

.method public f([B)Lil/m;
    .locals 3

    iget-object v0, p0, Lil/j;->a:Lbm/i;

    instance-of v1, v0, Lbm/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbm/i;->q()I

    move-result v0

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lil/j;->d([B)Lam/e;

    move-result-object v0

    check-cast v0, Lam/d;

    iget-object v1, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->q()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lil/j;->d([B)Lam/e;

    move-result-object p1

    check-cast p1, Lam/d;

    new-instance v1, Lil/m;

    invoke-direct {v1, v0, p1}, Lil/m;-><init>(Lam/e;Lam/e;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Lbm/e;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbm/i;->q()I

    move-result v0

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lil/j;->d([B)Lam/e;

    move-result-object v0

    check-cast v0, Lam/b;

    iget-object v1, p0, Lil/j;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->q()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lil/j;->c([B)Lam/b;

    move-result-object p1

    new-instance v1, Lil/m;

    invoke-direct {v1, v0, p1}, Lil/m;-><init>(Lam/e;Lam/e;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid polynomial type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
