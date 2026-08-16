.class public LIi/y;
.super LIi/p;
.source "SourceFile"


# static fields
.field public static final l:I = 0x10

.field public static final m:I = 0x3

.field public static final n:I = 0x7

.field public static final o:I = 0xb

.field public static final p:I = 0x13

.field public static final q:I = 0x3

.field public static final r:I = 0x5

.field public static final s:I = 0x9

.field public static final t:I = 0xd

.field public static final u:I = 0x3

.field public static final v:I = 0x9

.field public static final w:I = 0xb

.field public static final x:I = 0xf


# instance fields
.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/y;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, LIi/p;-><init>(LBi/o;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LIi/y;->j:[I

    const/16 v0, 0x40

    invoke-static {p0, v0, p1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/y;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/y;)V
    .locals 2

    .line 3
    iget-object v0, p1, LIi/p;->a:LBi/o;

    invoke-direct {p0, v0}, LIi/p;-><init>(LBi/o;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LIi/y;->j:[I

    const/16 v0, 0x40

    iget-object v1, p0, LIi/p;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/y;->t(LIi/y;)V

    return-void
.end method

.method private u(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MD4"

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    invoke-virtual {p0}, LIi/p;->l()V

    iget v0, p0, LIi/y;->f:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/y;->g:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/y;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/y;->i:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    invoke-virtual {p0}, LIi/y;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/y;

    invoke-direct {v0, p0}, LIi/y;-><init>(LIi/y;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/y;

    invoke-virtual {p0, p1}, LIi/y;->t(LIi/y;)V

    return-void
.end method

.method public k()LBi/n;
    .locals 1

    iget-object v0, p0, LIi/p;->a:LBi/o;

    invoke-static {p0, v0}, LIi/Z;->b(LBi/y;LBi/o;)LBi/n;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, LIi/y;->f:I

    iget v2, v0, LIi/y;->g:I

    iget v3, v0, LIi/y;->h:I

    iget v4, v0, LIi/y;->i:I

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->q(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, LIi/y;->j:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->q(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, LIi/y;->j:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x7

    invoke-direct {v0, v4, v7}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->q(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, LIi/y;->j:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const/16 v9, 0xb

    invoke-direct {v0, v3, v9}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->q(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, LIi/y;->j:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const/16 v11, 0x13

    invoke-direct {v0, v2, v11}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/4 v14, 0x5

    aget v12, v12, v14

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/4 v15, 0x6

    aget v12, v12, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v7

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v16, 0x8

    aget v12, v12, v16

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v15, 0x9

    aget v12, v12, v15

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v18, 0xa

    aget v12, v12, v18

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v9

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v19, 0xc

    aget v12, v12, v19

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v10, 0xd

    aget v12, v12, v10

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v21, 0xe

    aget v12, v12, v21

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->q(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v9, 0xf

    aget v12, v12, v9

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->r(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, LIi/y;->j:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x5a827999

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v13

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v16

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v15}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v8

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v14

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v15}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v10

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v20, 0x2

    aget v12, v12, v20

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v17, 0x6

    aget v12, v12, v17

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v18

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v15}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v5

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v7

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/16 v22, 0xb

    aget v12, v12, v22

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v15}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->r(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v9

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->s(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, LIi/y;->j:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x6ed9eba1

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v16

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v15}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v13

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    const/16 v12, 0xb

    invoke-direct {v0, v3, v12}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v18

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v15}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, LIi/y;->j:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    const/16 v12, 0xb

    invoke-direct {v0, v3, v12}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->s(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, LIi/y;->j:[I

    aget v8, v12, v8

    add-int/2addr v1, v8

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->s(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, LIi/y;->j:[I

    aget v8, v8, v15

    add-int/2addr v4, v8

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v15}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->s(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, LIi/y;->j:[I

    aget v8, v8, v14

    add-int/2addr v3, v8

    add-int/2addr v3, v11

    const/16 v8, 0xb

    invoke-direct {v0, v3, v8}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->s(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, LIi/y;->j:[I

    aget v8, v8, v10

    add-int/2addr v2, v8

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, LIi/y;->u(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v4}, LIi/y;->s(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, LIi/y;->j:[I

    aget v8, v8, v5

    add-int/2addr v1, v8

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, LIi/y;->u(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, LIi/y;->s(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, LIi/y;->j:[I

    const/16 v8, 0xb

    aget v5, v5, v8

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v15}, LIi/y;->u(II)I

    move-result v4

    invoke-virtual {v0, v4, v1, v2}, LIi/y;->s(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, LIi/y;->j:[I

    aget v5, v5, v7

    add-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, LIi/y;->u(II)I

    move-result v3

    invoke-virtual {v0, v3, v4, v1}, LIi/y;->s(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, LIi/y;->j:[I

    aget v5, v5, v9

    add-int/2addr v2, v5

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, LIi/y;->u(II)I

    move-result v2

    iget v5, v0, LIi/y;->f:I

    add-int/2addr v5, v1

    iput v5, v0, LIi/y;->f:I

    iget v1, v0, LIi/y;->g:I

    add-int/2addr v1, v2

    iput v1, v0, LIi/y;->g:I

    iget v1, v0, LIi/y;->h:I

    add-int/2addr v1, v3

    iput v1, v0, LIi/y;->h:I

    iget v1, v0, LIi/y;->i:I

    add-int/2addr v1, v4

    iput v1, v0, LIi/y;->i:I

    iput v6, v0, LIi/y;->k:I

    move v1, v6

    :goto_0
    iget-object v2, v0, LIi/y;->j:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(J)V
    .locals 3

    iget v0, p0, LIi/y;->k:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LIi/y;->n()V

    :cond_0
    iget-object v0, p0, LIi/y;->j:[I

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

    iget-object v0, p0, LIi/y;->j:[I

    iget v1, p0, LIi/y;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/y;->k:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, LIi/y;->k:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, LIi/y;->n()V

    :cond_0
    return-void
.end method

.method public final q(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public final r(III)I
    .locals 1

    or-int v0, p2, p3

    and-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, LIi/p;->reset()V

    const v0, 0x67452301

    iput v0, p0, LIi/y;->f:I

    const v0, -0x10325477

    iput v0, p0, LIi/y;->g:I

    const v0, -0x67452302

    iput v0, p0, LIi/y;->h:I

    const v0, 0x10325476

    iput v0, p0, LIi/y;->i:I

    const/4 v0, 0x0

    iput v0, p0, LIi/y;->k:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LIi/y;->j:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method public final t(LIi/y;)V
    .locals 4

    invoke-super {p0, p1}, LIi/p;->d(LIi/p;)V

    iget v0, p1, LIi/y;->f:I

    iput v0, p0, LIi/y;->f:I

    iget v0, p1, LIi/y;->g:I

    iput v0, p0, LIi/y;->g:I

    iget v0, p1, LIi/y;->h:I

    iput v0, p0, LIi/y;->h:I

    iget v0, p1, LIi/y;->i:I

    iput v0, p0, LIi/y;->i:I

    iget-object v0, p1, LIi/y;->j:[I

    iget-object v1, p0, LIi/y;->j:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LIi/y;->k:I

    iput p1, p0, LIi/y;->k:I

    return-void
.end method
