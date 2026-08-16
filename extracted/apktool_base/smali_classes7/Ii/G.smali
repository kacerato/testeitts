.class public LIi/G;
.super LIi/p;
.source "SourceFile"


# static fields
.field public static final m:I = 0x14


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/G;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LIi/p;-><init>(LBi/o;)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, LIi/G;->k:[I

    invoke-virtual {p0}, LIi/G;->k()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/G;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/G;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LIi/p;-><init>(LIi/p;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LIi/G;->k:[I

    invoke-virtual {p0}, LIi/G;->k()LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/G;->r(LIi/G;)V

    return-void
.end method

.method private q(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private s(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private t(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private u(III)I
    .locals 0

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private v(III)I
    .locals 0

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD160"

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    invoke-virtual {p0}, LIi/p;->l()V

    iget v0, p0, LIi/G;->f:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/G;->g:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/G;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/G;->i:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/G;->j:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    invoke-virtual {p0}, LIi/G;->reset()V

    const/16 p1, 0x14

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/G;

    invoke-direct {v0, p0}, LIi/G;-><init>(LIi/G;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/G;

    invoke-virtual {p0, p1}, LIi/G;->r(LIi/G;)V

    return-void
.end method

.method public k()LBi/n;
    .locals 2

    const/16 v0, 0x80

    iget-object v1, p0, LIi/p;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, LIi/G;->f:I

    iget v2, v0, LIi/G;->g:I

    iget v3, v0, LIi/G;->h:I

    iget v4, v0, LIi/G;->i:I

    iget v5, v0, LIi/G;->j:I

    invoke-direct {v0, v2, v3, v4}, LIi/G;->s(III)I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, v0, LIi/G;->k:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v5

    const/16 v9, 0xa

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v6, v2, v10}, LIi/G;->s(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {v0, v11, v12}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v14

    invoke-direct {v0, v11, v6, v14}, LIi/G;->s(III)I

    move-result v15

    add-int/2addr v15, v4

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v16, 0x2

    aget v13, v13, v16

    add-int/2addr v15, v13

    const/16 v13, 0xf

    invoke-direct {v0, v15, v13}, LIi/G;->q(II)I

    move-result v15

    add-int/2addr v15, v10

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v15, v11, v6}, LIi/G;->s(III)I

    move-result v17

    add-int v10, v10, v17

    iget-object v8, v0, LIi/G;->k:[I

    const/16 v18, 0x3

    aget v8, v8, v18

    add-int/2addr v10, v8

    const/16 v8, 0xc

    invoke-direct {v0, v10, v8}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v14

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v15, v11}, LIi/G;->s(III)I

    move-result v18

    add-int v14, v14, v18

    iget-object v8, v0, LIi/G;->k:[I

    const/16 v19, 0x4

    aget v8, v8, v19

    add-int/2addr v14, v8

    const/4 v8, 0x5

    invoke-direct {v0, v14, v8}, LIi/G;->q(II)I

    move-result v14

    add-int/2addr v14, v6

    invoke-direct {v0, v15, v9}, LIi/G;->q(II)I

    move-result v15

    invoke-direct {v0, v14, v10, v15}, LIi/G;->s(III)I

    move-result v19

    add-int v6, v6, v19

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v8

    add-int/2addr v6, v13

    const/16 v13, 0x8

    invoke-direct {v0, v6, v13}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v6, v14, v10}, LIi/G;->s(III)I

    move-result v20

    add-int v11, v11, v20

    iget-object v8, v0, LIi/G;->k:[I

    const/4 v12, 0x6

    aget v8, v8, v12

    add-int/2addr v11, v8

    const/4 v8, 0x7

    invoke-direct {v0, v11, v8}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v15

    invoke-direct {v0, v14, v9}, LIi/G;->q(II)I

    move-result v14

    invoke-direct {v0, v11, v6, v14}, LIi/G;->s(III)I

    move-result v22

    add-int v15, v15, v22

    iget-object v12, v0, LIi/G;->k:[I

    aget v12, v12, v8

    add-int/2addr v15, v12

    const/16 v12, 0x9

    invoke-direct {v0, v15, v12}, LIi/G;->q(II)I

    move-result v15

    add-int/2addr v15, v10

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v15, v11, v6}, LIi/G;->s(III)I

    move-result v23

    add-int v10, v10, v23

    iget-object v8, v0, LIi/G;->k:[I

    aget v8, v8, v13

    add-int/2addr v10, v8

    invoke-direct {v0, v10, v7}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v14

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v15, v10}, LIi/G;->s(III)I

    move-result v11

    add-int/2addr v14, v11

    iget-object v11, v0, LIi/G;->k:[I

    aget v11, v11, v12

    add-int/2addr v14, v11

    const/16 v11, 0xd

    invoke-direct {v0, v14, v11}, LIi/G;->q(II)I

    move-result v14

    add-int/2addr v14, v6

    invoke-direct {v0, v15, v9}, LIi/G;->q(II)I

    move-result v15

    invoke-direct {v0, v14, v8, v15}, LIi/G;->s(III)I

    move-result v24

    add-int v6, v6, v24

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v9

    add-int/2addr v6, v13

    const/16 v13, 0xe

    invoke-direct {v0, v6, v13}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v14, v8}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v10, v13

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v7

    add-int/2addr v10, v13

    const/16 v13, 0xf

    invoke-direct {v0, v10, v13}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v15

    invoke-direct {v0, v14, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v10, v6, v13}, LIi/G;->s(III)I

    move-result v14

    add-int/2addr v15, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v18, 0xc

    aget v14, v14, v18

    add-int/2addr v15, v14

    const/4 v14, 0x6

    invoke-direct {v0, v15, v14}, LIi/G;->q(II)I

    move-result v15

    add-int/2addr v15, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v15, v10, v6}, LIi/G;->s(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v11

    add-int/2addr v8, v14

    const/4 v14, 0x7

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v13

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v15, v10}, LIi/G;->s(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v21, 0xe

    aget v14, v14, v21

    add-int/2addr v13, v14

    invoke-direct {v0, v13, v12}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v6

    invoke-direct {v0, v15, v9}, LIi/G;->q(II)I

    move-result v14

    invoke-direct {v0, v13, v8, v14}, LIi/G;->s(III)I

    move-result v15

    add-int/2addr v6, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v6, v15

    const/16 v15, 0x8

    invoke-direct {v0, v6, v15}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-virtual {v0, v2, v3, v4}, LIi/G;->w(III)I

    move-result v24

    add-int v1, v1, v24

    iget-object v11, v0, LIi/G;->k:[I

    const/16 v20, 0x5

    aget v11, v11, v20

    add-int/2addr v1, v11

    const v11, 0x50a28be6

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v5, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v21, 0xe

    aget v15, v15, v21

    add-int/2addr v5, v15

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v12}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v23, 0x7

    aget v15, v15, v23

    add-int/2addr v4, v15

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v12}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v3, v15

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v7}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v2, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v12

    add-int/2addr v2, v15

    add-int/2addr v2, v11

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v16

    add-int/2addr v1, v15

    add-int/2addr v1, v11

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LIi/G;->w(III)I

    move-result v19

    add-int v5, v5, v19

    iget-object v12, v0, LIi/G;->k:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v15}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    const/4 v12, 0x5

    invoke-direct {v0, v4, v12}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v12, v12, v15

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    const/4 v12, 0x7

    invoke-direct {v0, v3, v12}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v2, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v22, 0x6

    aget v15, v15, v22

    add-int/2addr v2, v15

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v12}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v12, v12, v15

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v5, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v12

    add-int/2addr v5, v15

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v7}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    const/16 v12, 0xe

    invoke-direct {v0, v4, v12}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v9

    add-int/2addr v3, v15

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v12}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v12, v12, v15

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    const/16 v12, 0xc

    invoke-direct {v0, v2, v12}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LIi/G;->w(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v12

    add-int/2addr v1, v15

    add-int/2addr v1, v11

    const/4 v11, 0x6

    invoke-direct {v0, v1, v11}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v6, v13, v8}, LIi/G;->t(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v0, LIi/G;->k:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    invoke-direct {v0, v10, v12}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v14

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, LIi/G;->t(III)I

    move-result v13

    add-int/2addr v14, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v13, v13, v15

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    const/4 v13, 0x6

    invoke-direct {v0, v14, v13}, LIi/G;->q(II)I

    move-result v14

    add-int/2addr v14, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v14, v10, v6}, LIi/G;->t(III)I

    move-result v13

    add-int/2addr v8, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v13, v13, v15

    add-int/2addr v8, v13

    add-int/2addr v8, v11

    const/16 v13, 0x8

    invoke-direct {v0, v8, v13}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v14, v10}, LIi/G;->t(III)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v13, v13, v15

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    const/16 v13, 0xd

    invoke-direct {v0, v12, v13}, LIi/G;->q(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v14, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    invoke-direct {v0, v6, v7}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v14, 0x9

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, LIi/G;->q(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    const/4 v14, 0x7

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v11

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v12, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v12, v14

    add-int/2addr v12, v11

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, LIi/G;->q(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, LIi/G;->q(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    const/16 v14, 0x9

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v8, v14

    add-int/2addr v8, v11

    invoke-direct {v0, v8, v7}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v12, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v12, v14

    add-int/2addr v12, v11

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, LIi/G;->q(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v11, 0xc

    invoke-direct {v0, v10, v11}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v1, v2, v3}, LIi/G;->v(III)I

    move-result v12

    add-int/2addr v5, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v14, 0x6

    aget v12, v12, v14

    add-int/2addr v5, v12

    const v12, 0x5c4dd124

    add-int/2addr v5, v12

    const/16 v14, 0x9

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xd

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v15}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x8

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v7}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x7

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->v(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xc

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->v(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v14

    add-int/2addr v4, v15

    add-int/2addr v4, v12

    const/4 v14, 0x7

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/4 v14, 0x6

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v7}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v10, v6, v11}, LIi/G;->u(III)I

    move-result v12

    add-int/2addr v13, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v14, 0x3

    aget v12, v12, v14

    add-int/2addr v13, v12

    const v12, 0x6ed9eba1

    add-int/2addr v13, v12

    invoke-direct {v0, v13, v7}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xd

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v14, 0x6

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/4 v14, 0x7

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xe

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0x9

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xd

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0xf

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0x8

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0xd

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v15}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v14, 0x5

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x7

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/4 v12, 0x5

    invoke-direct {v0, v13, v12}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v5, v1, v2}, LIi/G;->u(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/16 v14, 0xf

    aget v12, v12, v14

    add-int/2addr v4, v12

    const v12, 0x6d703ef3

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/4 v14, 0x7

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v7}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x8

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x6

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->u(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v14

    add-int/2addr v3, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xe

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xd

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x5

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xe

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xd

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->u(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, LIi/G;->k:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x7

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->u(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v12, 0x5

    invoke-direct {v0, v4, v12}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v13, v10, v6}, LIi/G;->v(III)I

    move-result v12

    add-int/2addr v8, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v14, 0x1

    aget v12, v12, v14

    add-int/2addr v8, v12

    const v12, -0x70e44324

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v7}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0xc

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0xe

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0x9

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0xe

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v14, 0x6

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x6

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, LIi/G;->v(III)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v14

    add-int/2addr v13, v15

    add-int/2addr v13, v12

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, LIi/G;->v(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v12, 0xc

    invoke-direct {v0, v8, v12}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-direct {v0, v4, v5, v1}, LIi/G;->t(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/16 v14, 0x8

    aget v12, v12, v14

    add-int/2addr v3, v12

    const v12, 0x7a6d76e9

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x5

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0x8

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v7}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xe

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->t(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v7

    add-int/2addr v3, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x6

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xe

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x6

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0x9

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->t(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, LIi/G;->k:[I

    aget v15, v15, v14

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x5

    invoke-direct {v0, v5, v14}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xf

    invoke-direct {v0, v4, v14}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->t(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v12, 0x8

    invoke-direct {v0, v3, v12}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-virtual {v0, v8, v13, v10}, LIi/G;->w(III)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, LIi/G;->k:[I

    const/4 v14, 0x4

    aget v12, v12, v14

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-virtual {v0, v11, v8, v13}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xf

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-virtual {v0, v6, v11, v8}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v15}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-virtual {v0, v10, v6, v11}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    invoke-direct {v0, v13, v7}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-virtual {v0, v13, v10, v6}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x6

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-virtual {v0, v8, v13, v10}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0x8

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-virtual {v0, v11, v8, v13}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v16

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-virtual {v0, v6, v11, v8}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v9

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-virtual {v0, v10, v6, v11}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-virtual {v0, v13, v10, v6}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xc

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-virtual {v0, v8, v13, v10}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0xd

    invoke-direct {v0, v11, v14}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v13

    invoke-virtual {v0, v11, v8, v13}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, LIi/G;->q(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, LIi/G;->q(II)I

    move-result v8

    invoke-virtual {v0, v6, v11, v8}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v7

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v7}, LIi/G;->q(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, LIi/G;->q(II)I

    move-result v11

    invoke-virtual {v0, v10, v6, v11}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0x8

    invoke-direct {v0, v13, v14}, LIi/G;->q(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, LIi/G;->q(II)I

    move-result v6

    invoke-virtual {v0, v13, v10, v6}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, LIi/G;->q(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, LIi/G;->q(II)I

    move-result v10

    invoke-virtual {v0, v8, v13, v10}, LIi/G;->w(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, LIi/G;->k:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {v0, v11, v12}, LIi/G;->q(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, LIi/G;->q(II)I

    move-result v12

    invoke-direct {v0, v3, v4, v5}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v2, v13

    const/16 v13, 0x8

    invoke-direct {v0, v2, v13}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/4 v13, 0x5

    invoke-direct {v0, v1, v13}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v9

    add-int/2addr v5, v13

    const/16 v13, 0xc

    invoke-direct {v0, v5, v13}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v4, v13

    const/16 v13, 0x9

    invoke-direct {v0, v4, v13}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v3, v13

    const/16 v13, 0xc

    invoke-direct {v0, v3, v13}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v14}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/16 v13, 0xe

    invoke-direct {v0, v1, v13}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v5, v13

    const/4 v13, 0x6

    invoke-direct {v0, v5, v13}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->s(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v13

    add-int/2addr v4, v14

    const/16 v13, 0x8

    invoke-direct {v0, v4, v13}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v16

    add-int/2addr v3, v13

    const/16 v13, 0xd

    invoke-direct {v0, v3, v13}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->s(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, LIi/G;->k:[I

    aget v14, v14, v13

    add-int/2addr v2, v14

    const/4 v13, 0x6

    invoke-direct {v0, v2, v13}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/4 v13, 0x5

    invoke-direct {v0, v1, v13}, LIi/G;->q(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, LIi/G;->q(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v5, v13

    const/16 v13, 0xf

    invoke-direct {v0, v5, v13}, LIi/G;->q(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, LIi/G;->q(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v4, v13

    const/16 v13, 0xd

    invoke-direct {v0, v4, v13}, LIi/G;->q(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, LIi/G;->q(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, LIi/G;->k:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v3, v13

    invoke-direct {v0, v3, v7}, LIi/G;->q(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, LIi/G;->q(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, LIi/G;->s(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, LIi/G;->k:[I

    aget v13, v13, v7

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v7}, LIi/G;->q(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, LIi/G;->q(II)I

    move-result v4

    iget v7, v0, LIi/G;->g:I

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    iget v7, v0, LIi/G;->h:I

    add-int/2addr v7, v12

    add-int/2addr v7, v5

    iput v7, v0, LIi/G;->g:I

    iget v5, v0, LIi/G;->i:I

    add-int/2addr v5, v10

    add-int/2addr v5, v1

    iput v5, v0, LIi/G;->h:I

    iget v1, v0, LIi/G;->j:I

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    iput v1, v0, LIi/G;->i:I

    iget v1, v0, LIi/G;->f:I

    add-int/2addr v1, v11

    add-int/2addr v1, v3

    iput v1, v0, LIi/G;->j:I

    iput v4, v0, LIi/G;->f:I

    const/4 v1, 0x0

    iput v1, v0, LIi/G;->l:I

    move v2, v1

    :goto_0
    iget-object v3, v0, LIi/G;->k:[I

    array-length v4, v3

    if-eq v2, v4, :cond_0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(J)V
    .locals 3

    iget v0, p0, LIi/G;->l:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LIi/G;->n()V

    :cond_0
    iget-object v0, p0, LIi/G;->k:[I

    long-to-int v2, p1

    aput v2, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0xf

    aput p1, v0, p2

    return-void
.end method

.method public p([BI)V
    .locals 3

    iget-object v0, p0, LIi/G;->k:[I

    iget v1, p0, LIi/G;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/G;->l:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, LIi/G;->l:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, LIi/G;->n()V

    :cond_0
    return-void
.end method

.method public final r(LIi/G;)V
    .locals 4

    invoke-super {p0, p1}, LIi/p;->d(LIi/p;)V

    iget v0, p1, LIi/G;->f:I

    iput v0, p0, LIi/G;->f:I

    iget v0, p1, LIi/G;->g:I

    iput v0, p0, LIi/G;->g:I

    iget v0, p1, LIi/G;->h:I

    iput v0, p0, LIi/G;->h:I

    iget v0, p1, LIi/G;->i:I

    iput v0, p0, LIi/G;->i:I

    iget v0, p1, LIi/G;->j:I

    iput v0, p0, LIi/G;->j:I

    iget-object v0, p1, LIi/G;->k:[I

    iget-object v1, p0, LIi/G;->k:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LIi/G;->l:I

    iput p1, p0, LIi/G;->l:I

    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, LIi/p;->reset()V

    const v0, 0x67452301

    iput v0, p0, LIi/G;->f:I

    const v0, -0x10325477

    iput v0, p0, LIi/G;->g:I

    const v0, -0x67452302

    iput v0, p0, LIi/G;->h:I

    const v0, 0x10325476

    iput v0, p0, LIi/G;->i:I

    const v0, -0x3c2d1e10

    iput v0, p0, LIi/G;->j:I

    const/4 v0, 0x0

    iput v0, p0, LIi/G;->l:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LIi/G;->k:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(III)I
    .locals 0

    not-int p3, p3

    or-int/2addr p2, p3

    xor-int/2addr p1, p2

    return p1
.end method
