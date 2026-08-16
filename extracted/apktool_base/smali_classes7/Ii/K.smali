.class public LIi/K;
.super LIi/p;
.source "SourceFile"

# interfaces
.implements LIi/k;


# static fields
.field public static final p:I = 0x1c

.field public static final q:[I


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[I

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LIi/K;->q:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/K;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LIi/p;-><init>(LBi/o;)V

    const/16 p1, 0x40

    new-array p1, p1, [I

    iput-object p1, p0, LIi/K;->n:[I

    invoke-virtual {p0}, LIi/K;->k()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/K;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/K;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LIi/p;-><init>(LIi/p;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, LIi/K;->n:[I

    invoke-virtual {p0}, LIi/K;->k()LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/K;->w(LIi/K;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, LIi/p;-><init>([B)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, LIi/K;->n:[I

    invoke-virtual {p0}, LIi/K;->k()LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->f:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->g:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->h:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->i:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->j:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->k:I

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->l:I

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->m:I

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/K;->o:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LIi/K;->o:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, LIi/K;->n:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private r(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    xor-int/2addr p1, v0

    and-int/2addr p2, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private s(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private t(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private u(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x3

    xor-int/2addr p1, v0

    return p1
.end method

.method private v(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a()[B
    .locals 5

    iget v0, p0, LIi/K;->o:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x35

    new-array v1, v1, [B

    invoke-super {p0, v1}, LIi/p;->m([B)V

    iget v2, p0, LIi/K;->f:I

    const/16 v3, 0x10

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->g:I

    const/16 v3, 0x14

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->h:I

    const/16 v3, 0x18

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->i:I

    const/16 v3, 0x1c

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->j:I

    const/16 v3, 0x20

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->k:I

    const/16 v3, 0x24

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->l:I

    const/16 v3, 0x28

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->m:I

    const/16 v3, 0x2c

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v2, p0, LIi/K;->o:I

    const/16 v3, 0x30

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, LIi/K;->o:I

    if-eq v2, v3, :cond_0

    iget-object v3, p0, LIi/K;->n:[I

    aget v3, v3, v2

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x34

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/util/p;->h(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x34

    iget-object v2, p0, LIi/p;->a:LBi/o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-224"

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    invoke-virtual {p0}, LIi/p;->l()V

    iget v0, p0, LIi/K;->f:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->g:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->i:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->j:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->k:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v0, p0, LIi/K;->l:I

    add-int/lit8 p2, p2, 0x18

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->h(I[BI)V

    invoke-virtual {p0}, LIi/K;->reset()V

    const/16 p1, 0x1c

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/K;

    invoke-direct {v0, p0}, LIi/K;-><init>(LIi/K;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/K;

    invoke-virtual {p0, p1}, LIi/K;->w(LIi/K;)V

    return-void
.end method

.method public k()LBi/n;
    .locals 2

    const/16 v0, 0xc0

    iget-object v1, p0, LIi/p;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_0
    const/16 v3, 0x3f

    if-gt v2, v3, :cond_0

    iget-object v3, v0, LIi/K;->n:[I

    add-int/lit8 v4, v2, -0x2

    aget v4, v3, v4

    invoke-direct {v0, v4}, LIi/K;->v(I)I

    move-result v4

    iget-object v5, v0, LIi/K;->n:[I

    add-int/lit8 v6, v2, -0x7

    aget v6, v5, v6

    add-int/2addr v4, v6

    add-int/lit8 v6, v2, -0xf

    aget v5, v5, v6

    invoke-direct {v0, v5}, LIi/K;->u(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, LIi/K;->n:[I

    add-int/lit8 v6, v2, -0x10

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, LIi/K;->f:I

    iget v3, v0, LIi/K;->g:I

    iget v4, v0, LIi/K;->h:I

    iget v5, v0, LIi/K;->i:I

    iget v6, v0, LIi/K;->j:I

    iget v7, v0, LIi/K;->k:I

    iget v8, v0, LIi/K;->l:I

    iget v9, v0, LIi/K;->m:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x8

    if-ge v11, v13, :cond_1

    invoke-direct {v0, v6}, LIi/K;->t(I)I

    move-result v14

    invoke-direct {v0, v6, v7, v8}, LIi/K;->q(III)I

    move-result v15

    add-int/2addr v14, v15

    sget-object v15, LIi/K;->q:[I

    aget v16, v15, v12

    add-int v14, v14, v16

    iget-object v1, v0, LIi/K;->n:[I

    aget v1, v1, v12

    add-int/2addr v14, v1

    add-int/2addr v9, v14

    add-int/2addr v5, v9

    invoke-direct {v0, v2}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v2, v3, v4}, LIi/K;->r(III)I

    move-result v14

    add-int/2addr v1, v14

    add-int/2addr v9, v1

    add-int/lit8 v1, v12, 0x1

    invoke-direct {v0, v5}, LIi/K;->t(I)I

    move-result v14

    invoke-direct {v0, v5, v6, v7}, LIi/K;->q(III)I

    move-result v17

    add-int v14, v14, v17

    aget v17, v15, v1

    add-int v14, v14, v17

    iget-object v10, v0, LIi/K;->n:[I

    aget v1, v10, v1

    add-int/2addr v14, v1

    add-int/2addr v8, v14

    add-int/2addr v4, v8

    invoke-direct {v0, v9}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v9, v2, v3}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v8, v1

    add-int/lit8 v1, v12, 0x2

    invoke-direct {v0, v4}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v4, v5, v6}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    invoke-direct {v0, v8}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v8, v9, v2}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v7, v1

    add-int/lit8 v1, v12, 0x3

    invoke-direct {v0, v3}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v3, v4, v5}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    invoke-direct {v0, v7}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v7, v8, v9}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v6, v1

    add-int/lit8 v1, v12, 0x4

    invoke-direct {v0, v2}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v2, v3, v4}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v5, v10

    add-int/2addr v9, v5

    invoke-direct {v0, v6}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v6, v7, v8}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v5, v1

    add-int/lit8 v1, v12, 0x5

    invoke-direct {v0, v9}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v9, v2, v3}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v4, v10

    add-int/2addr v8, v4

    invoke-direct {v0, v5}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v5, v6, v7}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v4, v1

    add-int/lit8 v1, v12, 0x6

    invoke-direct {v0, v8}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v8, v9, v2}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v3, v10

    add-int/2addr v7, v3

    invoke-direct {v0, v4}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v4, v5, v6}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v3, v1

    add-int/lit8 v1, v12, 0x7

    invoke-direct {v0, v7}, LIi/K;->t(I)I

    move-result v10

    invoke-direct {v0, v7, v8, v9}, LIi/K;->q(III)I

    move-result v14

    add-int/2addr v10, v14

    aget v14, v15, v1

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/K;->n:[I

    aget v1, v14, v1

    add-int/2addr v10, v1

    add-int/2addr v2, v10

    add-int/2addr v6, v2

    invoke-direct {v0, v3}, LIi/K;->s(I)I

    move-result v1

    invoke-direct {v0, v3, v4, v5}, LIi/K;->r(III)I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v2, v1

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_1
    iget v1, v0, LIi/K;->f:I

    add-int/2addr v1, v2

    iput v1, v0, LIi/K;->f:I

    iget v1, v0, LIi/K;->g:I

    add-int/2addr v1, v3

    iput v1, v0, LIi/K;->g:I

    iget v1, v0, LIi/K;->h:I

    add-int/2addr v1, v4

    iput v1, v0, LIi/K;->h:I

    iget v1, v0, LIi/K;->i:I

    add-int/2addr v1, v5

    iput v1, v0, LIi/K;->i:I

    iget v1, v0, LIi/K;->j:I

    add-int/2addr v1, v6

    iput v1, v0, LIi/K;->j:I

    iget v1, v0, LIi/K;->k:I

    add-int/2addr v1, v7

    iput v1, v0, LIi/K;->k:I

    iget v1, v0, LIi/K;->l:I

    add-int/2addr v1, v8

    iput v1, v0, LIi/K;->l:I

    iget v1, v0, LIi/K;->m:I

    add-int/2addr v1, v9

    iput v1, v0, LIi/K;->m:I

    const/4 v1, 0x0

    iput v1, v0, LIi/K;->o:I

    move v3, v1

    const/16 v2, 0x10

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, v0, LIi/K;->n:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public o(J)V
    .locals 4

    iget v0, p0, LIi/K;->o:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LIi/K;->n()V

    :cond_0
    iget-object v0, p0, LIi/K;->n:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    long-to-int p1, p1

    aput p1, v0, v1

    return-void
.end method

.method public p([BI)V
    .locals 2

    iget-object v0, p0, LIi/K;->n:[I

    iget v1, p0, LIi/K;->o:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, LIi/K;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LIi/K;->o:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, LIi/K;->n()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, LIi/p;->reset()V

    const v0, -0x3efa6128

    iput v0, p0, LIi/K;->f:I

    const v0, 0x367cd507

    iput v0, p0, LIi/K;->g:I

    const v0, 0x3070dd17

    iput v0, p0, LIi/K;->h:I

    const v0, -0x8f1a6c7

    iput v0, p0, LIi/K;->i:I

    const v0, -0x3ff4cf

    iput v0, p0, LIi/K;->j:I

    const v0, 0x68581511

    iput v0, p0, LIi/K;->k:I

    const v0, 0x64f98fa7

    iput v0, p0, LIi/K;->l:I

    const v0, -0x4105b05c

    iput v0, p0, LIi/K;->m:I

    const/4 v0, 0x0

    iput v0, p0, LIi/K;->o:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LIi/K;->n:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(LIi/K;)V
    .locals 4

    invoke-super {p0, p1}, LIi/p;->d(LIi/p;)V

    iget v0, p1, LIi/K;->f:I

    iput v0, p0, LIi/K;->f:I

    iget v0, p1, LIi/K;->g:I

    iput v0, p0, LIi/K;->g:I

    iget v0, p1, LIi/K;->h:I

    iput v0, p0, LIi/K;->h:I

    iget v0, p1, LIi/K;->i:I

    iput v0, p0, LIi/K;->i:I

    iget v0, p1, LIi/K;->j:I

    iput v0, p0, LIi/K;->j:I

    iget v0, p1, LIi/K;->k:I

    iput v0, p0, LIi/K;->k:I

    iget v0, p1, LIi/K;->l:I

    iput v0, p0, LIi/K;->l:I

    iget v0, p1, LIi/K;->m:I

    iput v0, p0, LIi/K;->m:I

    iget-object v0, p1, LIi/K;->n:[I

    iget-object v1, p0, LIi/K;->n:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LIi/K;->o:I

    iput p1, p0, LIi/K;->o:I

    return-void
.end method
