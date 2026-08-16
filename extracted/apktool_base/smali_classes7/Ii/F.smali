.class public LIi/F;
.super LIi/p;
.source "SourceFile"


# static fields
.field public static final l:I = 0x10


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

    invoke-direct {p0, v0}, LIi/F;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, LIi/p;-><init>(LBi/o;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LIi/F;->j:[I

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/F;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/F;)V
    .locals 2

    .line 3
    iget-object v0, p1, LIi/p;->a:LBi/o;

    invoke-direct {p0, v0}, LIi/p;-><init>(LBi/o;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LIi/F;->j:[I

    const/16 v0, 0x80

    iget-object v1, p0, LIi/p;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/F;->z(LIi/F;)V

    return-void
.end method


# virtual methods
.method public final A(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method public final B(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public final C(III)I
    .locals 0

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method public final D(III)I
    .locals 0

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    invoke-virtual {p0}, LIi/p;->l()V

    iget v0, p0, LIi/F;->f:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/F;->g:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/F;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v0, p0, LIi/F;->i:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    invoke-virtual {p0}, LIi/F;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/F;

    invoke-direct {v0, p0}, LIi/F;-><init>(LIi/F;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/F;

    invoke-virtual {p0, p1}, LIi/F;->z(LIi/F;)V

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
    .locals 32

    move-object/from16 v7, p0

    iget v8, v7, LIi/F;->f:I

    iget v9, v7, LIi/F;->g:I

    iget v10, v7, LIi/F;->h:I

    iget v11, v7, LIi/F;->i:I

    iget-object v0, v7, LIi/F;->j:[I

    const/4 v12, 0x0

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    const/4 v14, 0x1

    aget v5, v0, v14

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v16, 0x2

    aget v5, v0, v16

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v15

    move v3, v13

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v18, 0x3

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v20, 0x4

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v21, 0x5

    aget v5, v0, v21

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v22, 0x6

    aget v5, v0, v22

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v23, 0x7

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v24, 0x8

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v25, 0x9

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v26, 0xa

    aget v5, v0, v26

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v27, 0xb

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v28, 0xc

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v29, 0xd

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v30, 0xe

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    const/16 v31, 0xf

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->q(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->r(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->s(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v13

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v15

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v17

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v6}, LIi/F;->t(IIIIII)I

    move-result v19

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->x(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->w(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->v(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v12

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v16

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v9

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v8

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v11

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v10

    iget-object v0, v7, LIi/F;->j:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v0 .. v6}, LIi/F;->u(IIIIII)I

    move-result v0

    iget v1, v7, LIi/F;->g:I

    add-int v17, v17, v1

    add-int v11, v11, v17

    iget v1, v7, LIi/F;->h:I

    add-int/2addr v1, v15

    add-int/2addr v1, v8

    iput v1, v7, LIi/F;->g:I

    iget v1, v7, LIi/F;->i:I

    add-int/2addr v1, v13

    add-int/2addr v1, v0

    iput v1, v7, LIi/F;->h:I

    iget v0, v7, LIi/F;->f:I

    add-int v0, v0, v19

    add-int/2addr v0, v10

    iput v0, v7, LIi/F;->i:I

    iput v11, v7, LIi/F;->f:I

    iput v12, v7, LIi/F;->k:I

    move v0, v12

    :goto_0
    iget-object v1, v7, LIi/F;->j:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    aput v12, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(J)V
    .locals 3

    iget v0, p0, LIi/F;->k:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LIi/F;->n()V

    :cond_0
    iget-object v0, p0, LIi/F;->j:[I

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

    iget-object v0, p0, LIi/F;->j:[I

    iget v1, p0, LIi/F;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/F;->k:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, LIi/F;->k:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, LIi/F;->n()V

    :cond_0
    return-void
.end method

.method public final q(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->A(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final r(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->B(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, LIi/p;->reset()V

    const v0, 0x67452301

    iput v0, p0, LIi/F;->f:I

    const v0, -0x10325477

    iput v0, p0, LIi/F;->g:I

    const v0, -0x67452302

    iput v0, p0, LIi/F;->h:I

    const v0, 0x10325476

    iput v0, p0, LIi/F;->i:I

    const/4 v0, 0x0

    iput v0, p0, LIi/F;->k:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LIi/F;->j:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->C(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final t(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->D(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, -0x70e44324

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final u(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->A(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final v(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->B(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6d703ef3

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final w(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->C(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5c4dd124

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final x(IIIIII)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, LIi/F;->D(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x50a28be6

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p6}, LIi/F;->y(II)I

    move-result p1

    return p1
.end method

.method public final y(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method public final z(LIi/F;)V
    .locals 4

    invoke-super {p0, p1}, LIi/p;->d(LIi/p;)V

    iget v0, p1, LIi/F;->f:I

    iput v0, p0, LIi/F;->f:I

    iget v0, p1, LIi/F;->g:I

    iput v0, p0, LIi/F;->g:I

    iget v0, p1, LIi/F;->h:I

    iput v0, p0, LIi/F;->h:I

    iget v0, p1, LIi/F;->i:I

    iput v0, p0, LIi/F;->i:I

    iget-object v0, p1, LIi/F;->j:[I

    iget-object v1, p0, LIi/F;->j:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LIi/F;->k:I

    iput p1, p0, LIi/F;->k:I

    return-void
.end method
