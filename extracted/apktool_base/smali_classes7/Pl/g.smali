.class public LPl/g;
.super LPl/d;
.source "SourceFile"


# instance fields
.field public A:[I

.field public B:[I

.field public C:[I

.field public D:I

.field public E:LBi/y;

.field public F:I

.field public G:LQl/a;

.field public H:[I

.field public d:[I

.field public e:[[B

.field public f:[[B

.field public g:[[[B

.field public h:[[[B

.field public i:[[LPl/n;

.field public j:[[LPl/n;

.field public k:[Ljava/util/Vector;

.field public l:[Ljava/util/Vector;

.field public m:[[Ljava/util/Vector;

.field public n:[[Ljava/util/Vector;

.field public o:[[[B

.field public p:[LPl/e;

.field public q:[LPl/e;

.field public r:[LPl/e;

.field public s:[I

.field public t:LPl/f;

.field public u:[[B

.field public v:[LPl/i;

.field public w:[[B

.field public x:[LPl/j;

.field public y:LPl/a;

.field public z:Z


# direct methods
.method public constructor <init>(LPl/g;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, LPl/d;->d()LPl/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, LPl/d;-><init>(ZLPl/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LPl/g;->z:Z

    iget-object v0, p1, LPl/g;->d:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    iput-object v0, p0, LPl/g;->d:[I

    iget-object v0, p1, LPl/g;->e:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->y([[B)[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->e:[[B

    iget-object v0, p1, LPl/g;->f:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->y([[B)[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->f:[[B

    iget-object v0, p1, LPl/g;->g:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->z([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->g:[[[B

    iget-object v0, p1, LPl/g;->h:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->z([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->h:[[[B

    iget-object v0, p1, LPl/g;->i:[[LPl/n;

    iput-object v0, p0, LPl/g;->i:[[LPl/n;

    iget-object v0, p1, LPl/g;->j:[[LPl/n;

    iput-object v0, p0, LPl/g;->j:[[LPl/n;

    iget-object v0, p1, LPl/g;->k:[Ljava/util/Vector;

    iput-object v0, p0, LPl/g;->k:[Ljava/util/Vector;

    iget-object v0, p1, LPl/g;->l:[Ljava/util/Vector;

    iput-object v0, p0, LPl/g;->l:[Ljava/util/Vector;

    iget-object v0, p1, LPl/g;->m:[[Ljava/util/Vector;

    iput-object v0, p0, LPl/g;->m:[[Ljava/util/Vector;

    iget-object v0, p1, LPl/g;->n:[[Ljava/util/Vector;

    iput-object v0, p0, LPl/g;->n:[[Ljava/util/Vector;

    iget-object v0, p1, LPl/g;->o:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->z([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->o:[[[B

    iget-object v0, p1, LPl/g;->p:[LPl/e;

    iput-object v0, p0, LPl/g;->p:[LPl/e;

    iget-object v0, p1, LPl/g;->q:[LPl/e;

    iput-object v0, p0, LPl/g;->q:[LPl/e;

    iget-object v0, p1, LPl/g;->r:[LPl/e;

    iput-object v0, p0, LPl/g;->r:[LPl/e;

    iget-object v0, p1, LPl/g;->s:[I

    iput-object v0, p0, LPl/g;->s:[I

    iget-object v0, p1, LPl/g;->t:LPl/f;

    iput-object v0, p0, LPl/g;->t:LPl/f;

    iget-object v0, p1, LPl/g;->u:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->y([[B)[[B

    move-result-object v0

    iput-object v0, p0, LPl/g;->u:[[B

    iget-object v0, p1, LPl/g;->v:[LPl/i;

    iput-object v0, p0, LPl/g;->v:[LPl/i;

    iget-object v0, p1, LPl/g;->w:[[B

    iput-object v0, p0, LPl/g;->w:[[B

    iget-object v0, p1, LPl/g;->x:[LPl/j;

    iput-object v0, p0, LPl/g;->x:[LPl/j;

    iget-object v0, p1, LPl/g;->y:LPl/a;

    iput-object v0, p0, LPl/g;->y:LPl/a;

    iget-object v0, p1, LPl/g;->A:[I

    iput-object v0, p0, LPl/g;->A:[I

    iget-object v0, p1, LPl/g;->B:[I

    iput-object v0, p0, LPl/g;->B:[I

    iget-object v0, p1, LPl/g;->C:[I

    iput-object v0, p0, LPl/g;->C:[I

    iget v0, p1, LPl/g;->D:I

    iput v0, p0, LPl/g;->D:I

    iget-object v0, p1, LPl/g;->E:LBi/y;

    iput-object v0, p0, LPl/g;->E:LBi/y;

    iget v0, p1, LPl/g;->F:I

    iput v0, p0, LPl/g;->F:I

    iget-object v0, p1, LPl/g;->G:LQl/a;

    iput-object v0, p0, LPl/g;->G:LQl/a;

    iget-object p1, p1, LPl/g;->H:[I

    iput-object p1, p0, LPl/g;->H:[I

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[LPl/n;[[LPl/n;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[LPl/e;[LPl/e;[LPl/e;[I[[B[LPl/i;[[B[LPl/j;LPl/f;LPl/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    const/4 v14, 0x1

    .line 2
    invoke-direct {v0, v14, v13}, LPl/d;-><init>(ZLPl/f;)V

    const/4 v15, 0x0

    iput-boolean v15, v0, LPl/g;->z:Z

    invoke-interface/range {p22 .. p22}, LPl/a;->get()LBi/y;

    move-result-object v14

    iput-object v14, v0, LPl/g;->E:LBi/y;

    invoke-interface {v14}, LBi/y;->f()I

    move-result v14

    iput v14, v0, LPl/g;->F:I

    iput-object v13, v0, LPl/g;->t:LPl/f;

    invoke-virtual/range {p21 .. p21}, LPl/f;->d()[I

    move-result-object v14

    iput-object v14, v0, LPl/g;->B:[I

    invoke-virtual/range {p21 .. p21}, LPl/f;->b()[I

    move-result-object v14

    iput-object v14, v0, LPl/g;->C:[I

    invoke-virtual/range {p21 .. p21}, LPl/f;->a()[I

    move-result-object v13

    iput-object v13, v0, LPl/g;->A:[I

    iget-object v13, v0, LPl/g;->t:LPl/f;

    invoke-virtual {v13}, LPl/f;->c()I

    move-result v13

    iput v13, v0, LPl/g;->D:I

    if-nez v1, :cond_0

    new-array v1, v13, [I

    iput-object v1, v0, LPl/g;->d:[I

    move v1, v15

    :goto_0
    iget v13, v0, LPl/g;->D:I

    if-ge v1, v13, :cond_1

    iget-object v13, v0, LPl/g;->d:[I

    aput v15, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, v0, LPl/g;->d:[I

    :cond_1
    iput-object v2, v0, LPl/g;->e:[[B

    move-object/from16 v1, p3

    iput-object v1, v0, LPl/g;->f:[[B

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/util/a;->z([[[B)[[[B

    move-result-object v1

    iput-object v1, v0, LPl/g;->g:[[[B

    move-object/from16 v1, p5

    iput-object v1, v0, LPl/g;->h:[[[B

    const/4 v1, 0x2

    if-nez v3, :cond_2

    iget v3, v0, LPl/g;->D:I

    new-array v3, v3, [[[B

    iput-object v3, v0, LPl/g;->o:[[[B

    move v3, v15

    :goto_1
    iget v13, v0, LPl/g;->D:I

    if-ge v3, v13, :cond_3

    iget-object v13, v0, LPl/g;->o:[[[B

    iget-object v14, v0, LPl/g;->A:[I

    aget v14, v14, v3

    div-int/2addr v14, v1

    int-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, LPl/g;->F:I

    const/4 v14, 0x2

    new-array v12, v14, [I

    const/4 v14, 0x1

    aput v2, v12, v14

    aput v1, v12, v15

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v13, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    move-object/from16 v12, p20

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    iput-object v3, v0, LPl/g;->o:[[[B

    :cond_3
    if-nez v4, :cond_4

    iget v1, v0, LPl/g;->D:I

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, LPl/g;->k:[Ljava/util/Vector;

    move v1, v15

    :goto_2
    iget v2, v0, LPl/g;->D:I

    if-ge v1, v2, :cond_5

    iget-object v2, v0, LPl/g;->k:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iput-object v4, v0, LPl/g;->k:[Ljava/util/Vector;

    :cond_5
    if-nez v5, :cond_7

    iget v1, v0, LPl/g;->D:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, LPl/g;->l:[Ljava/util/Vector;

    move v1, v15

    :goto_3
    iget v3, v0, LPl/g;->D:I

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    iget-object v2, v0, LPl/g;->l:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    move-object/from16 v1, p7

    goto :goto_5

    :cond_7
    iput-object v5, v0, LPl/g;->l:[Ljava/util/Vector;

    goto :goto_4

    :goto_5
    iput-object v1, v0, LPl/g;->i:[[LPl/n;

    move-object/from16 v1, p8

    iput-object v1, v0, LPl/g;->j:[[LPl/n;

    move-object/from16 v1, p11

    iput-object v1, v0, LPl/g;->m:[[Ljava/util/Vector;

    move-object/from16 v1, p12

    iput-object v1, v0, LPl/g;->n:[[Ljava/util/Vector;

    iput-object v10, v0, LPl/g;->u:[[B

    move-object/from16 v1, p22

    iput-object v1, v0, LPl/g;->y:LPl/a;

    if-nez v11, :cond_9

    iget v2, v0, LPl/g;->D:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [LPl/i;

    iput-object v2, v0, LPl/g;->v:[LPl/i;

    move v2, v15

    :goto_6
    iget v4, v0, LPl/g;->D:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_8

    iget-object v3, v0, LPl/g;->v:[LPl/i;

    new-instance v4, LPl/i;

    iget-object v5, v0, LPl/g;->A:[I

    add-int/lit8 v11, v2, 0x1

    aget v5, v5, v11

    iget-object v12, v0, LPl/g;->C:[I

    aget v12, v12, v11

    iget-object v13, v0, LPl/g;->y:LPl/a;

    invoke-direct {v4, v5, v12, v13}, LPl/i;-><init>(IILPl/a;)V

    aput-object v4, v3, v2

    move v2, v11

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    move-object/from16 v2, p19

    goto :goto_8

    :cond_9
    iput-object v11, v0, LPl/g;->v:[LPl/i;

    goto :goto_7

    :goto_8
    iput-object v2, v0, LPl/g;->w:[[B

    iget v2, v0, LPl/g;->D:I

    new-array v2, v2, [I

    iput-object v2, v0, LPl/g;->H:[I

    move v2, v15

    :goto_9
    iget v3, v0, LPl/g;->D:I

    if-ge v2, v3, :cond_a

    iget-object v3, v0, LPl/g;->H:[I

    iget-object v4, v0, LPl/g;->A:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x1

    new-instance v2, LQl/a;

    iget-object v3, v0, LPl/g;->E:LBi/y;

    invoke-direct {v2, v3}, LQl/a;-><init>(LBi/y;)V

    iput-object v2, v0, LPl/g;->G:LQl/a;

    iget v2, v0, LPl/g;->D:I

    if-le v2, v5, :cond_c

    if-nez v6, :cond_b

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    new-array v2, v2, [LPl/e;

    iput-object v2, v0, LPl/g;->p:[LPl/e;

    move v2, v15

    :goto_a
    iget v4, v0, LPl/g;->D:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_d

    iget-object v4, v0, LPl/g;->p:[LPl/e;

    new-instance v5, LPl/e;

    invoke-interface/range {p22 .. p22}, LPl/a;->get()LBi/y;

    move-result-object v6

    iget-object v11, v0, LPl/g;->B:[I

    add-int/lit8 v12, v2, 0x1

    aget v11, v11, v12

    iget-object v13, v0, LPl/g;->H:[I

    add-int/lit8 v14, v2, 0x2

    aget v13, v13, v14

    iget-object v14, v0, LPl/g;->f:[[B

    aget-object v14, v14, v2

    invoke-direct {v5, v6, v11, v13, v14}, LPl/e;-><init>(LBi/y;II[B)V

    aput-object v5, v4, v2

    move v2, v12

    goto :goto_a

    :cond_b
    iput-object v6, v0, LPl/g;->p:[LPl/e;

    goto :goto_b

    :cond_c
    new-array v2, v15, [LPl/e;

    iput-object v2, v0, LPl/g;->p:[LPl/e;

    :cond_d
    :goto_b
    if-nez v7, :cond_e

    iget v2, v0, LPl/g;->D:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [LPl/e;

    iput-object v2, v0, LPl/g;->q:[LPl/e;

    move v2, v15

    :goto_c
    iget v4, v0, LPl/g;->D:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_f

    iget-object v3, v0, LPl/g;->q:[LPl/e;

    new-instance v4, LPl/e;

    invoke-interface/range {p22 .. p22}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, v0, LPl/g;->B:[I

    aget v6, v6, v2

    iget-object v7, v0, LPl/g;->H:[I

    add-int/lit8 v11, v2, 0x1

    aget v7, v7, v11

    iget-object v12, v0, LPl/g;->e:[[B

    aget-object v12, v12, v2

    invoke-direct {v4, v5, v6, v7, v12}, LPl/e;-><init>(LBi/y;II[B)V

    aput-object v4, v3, v2

    move v2, v11

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    iput-object v7, v0, LPl/g;->q:[LPl/e;

    :cond_f
    if-nez v8, :cond_10

    iget v2, v0, LPl/g;->D:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [LPl/e;

    iput-object v2, v0, LPl/g;->r:[LPl/e;

    move v2, v15

    :goto_d
    iget v4, v0, LPl/g;->D:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_11

    iget-object v3, v0, LPl/g;->r:[LPl/e;

    new-instance v4, LPl/e;

    invoke-interface/range {p22 .. p22}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, v0, LPl/g;->B:[I

    aget v6, v6, v2

    iget-object v7, v0, LPl/g;->H:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    invoke-direct {v4, v5, v6, v7}, LPl/e;-><init>(LBi/y;II)V

    aput-object v4, v3, v2

    move v2, v8

    const/4 v3, 0x1

    goto :goto_d

    :cond_10
    iput-object v8, v0, LPl/g;->r:[LPl/e;

    :cond_11
    if-nez v9, :cond_12

    iget v2, v0, LPl/g;->D:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, v0, LPl/g;->s:[I

    move v2, v15

    :goto_e
    iget v4, v0, LPl/g;->D:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_13

    iget-object v3, v0, LPl/g;->s:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    iput-object v9, v0, LPl/g;->s:[I

    :cond_13
    iget v2, v0, LPl/g;->F:I

    new-array v3, v2, [B

    new-array v2, v2, [B

    move-object/from16 v2, p20

    if-nez v2, :cond_14

    iget v2, v0, LPl/g;->D:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    new-array v2, v2, [LPl/j;

    iput-object v2, v0, LPl/g;->x:[LPl/j;

    move v2, v15

    :goto_f
    iget v5, v0, LPl/g;->D:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_15

    aget-object v5, p2, v2

    iget v6, v0, LPl/g;->F:I

    invoke-static {v5, v15, v3, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, LPl/g;->G:LQl/a;

    invoke-virtual {v5, v3}, LQl/a;->c([B)[B

    iget-object v5, v0, LPl/g;->G:LQl/a;

    invoke-virtual {v5, v3}, LQl/a;->c([B)[B

    move-result-object v5

    iget-object v6, v0, LPl/g;->x:[LPl/j;

    new-instance v7, LPl/j;

    invoke-interface/range {p22 .. p22}, LPl/a;->get()LBi/y;

    move-result-object v8

    iget-object v9, v0, LPl/g;->B:[I

    aget v9, v9, v2

    iget-object v11, v0, LPl/g;->A:[I

    add-int/lit8 v12, v2, 0x1

    aget v11, v11, v12

    invoke-direct {v7, v8, v9, v11}, LPl/j;-><init>(LBi/y;II)V

    aput-object v7, v6, v2

    iget-object v6, v0, LPl/g;->x:[LPl/j;

    aget-object v6, v6, v2

    aget-object v2, v10, v2

    invoke-virtual {v6, v5, v2}, LPl/j;->f([B[B)V

    move v2, v12

    goto :goto_f

    :cond_14
    iput-object v2, v0, LPl/g;->x:[LPl/j;

    :cond_15
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[LPl/n;[[LPl/n;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLPl/f;LPl/a;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3
    invoke-direct/range {v0 .. v22}, LPl/g;-><init>([I[[B[[B[[[B[[[B[[[B[[LPl/n;[[LPl/n;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[LPl/e;[LPl/e;[LPl/e;[I[[B[LPl/i;[[B[LPl/j;LPl/f;LPl/a;)V

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 13

    iget-object v0, p0, LPl/g;->d:[I

    aget v0, v0, p1

    iget-object v1, p0, LPl/g;->A:[I

    aget v1, v1, p1

    iget-object v2, p0, LPl/g;->C:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sub-int v5, v1, v2

    if-ge v4, v5, :cond_0

    iget-object v5, p0, LPl/g;->i:[[LPl/n;

    aget-object v5, v5, p1

    aget-object v5, v5, v4

    iget-object v6, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v5, v6}, LPl/n;->m(LQl/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LPl/g;->n(I)I

    move-result v2

    iget v4, p0, LPl/g;->F:I

    new-array v4, v4, [B

    iget-object v4, p0, LPl/g;->G:LQl/a;

    iget-object v6, p0, LPl/g;->e:[[B

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, LQl/a;->c([B)[B

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    ushr-int v6, v0, v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    iget v8, p0, LPl/g;->F:I

    new-array v9, v8, [B

    sub-int/2addr v1, v7

    if-ge v2, v1, :cond_1

    if-nez v6, :cond_1

    iget-object v10, p0, LPl/g;->g:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v2

    invoke-static {v10, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v8, p0, LPl/g;->F:I

    new-array v10, v8, [B

    if-nez v2, :cond_3

    iget v0, p0, LPl/g;->D:I

    sub-int/2addr v0, v7

    if-ne p1, v0, :cond_2

    new-instance v0, LQl/d;

    iget-object v8, p0, LPl/g;->y:LPl/a;

    invoke-interface {v8}, LPl/a;->get()LBi/y;

    move-result-object v8

    iget-object v10, p0, LPl/g;->B:[I

    aget v10, v10, p1

    invoke-direct {v0, v4, v8, v10}, LQl/d;-><init>([BLBi/y;I)V

    invoke-virtual {v0}, LQl/d;->c()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v8, [B

    iget-object v4, p0, LPl/g;->e:[[B

    aget-object v4, v4, p1

    invoke-static {v4, v3, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v4, v0}, LQl/a;->c([B)[B

    iget-object v4, p0, LPl/g;->q:[LPl/e;

    aget-object v4, v4, p1

    invoke-virtual {v4}, LPl/e;->a()[B

    move-result-object v4

    iget-object v8, p0, LPl/g;->q:[LPl/e;

    aget-object v8, v8, p1

    invoke-virtual {v8, v0}, LPl/e;->e([B)V

    move-object v0, v4

    :goto_1
    iget-object v4, p0, LPl/g;->g:[[[B

    aget-object v4, v4, p1

    aget-object v4, v4, v3

    iget v8, p0, LPl/g;->F:I

    invoke-static {v0, v3, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_3
    shl-int/lit8 v4, v8, 0x1

    new-array v10, v4, [B

    iget-object v11, p0, LPl/g;->g:[[[B

    aget-object v11, v11, p1

    add-int/lit8 v12, v2, -0x1

    aget-object v11, v11, v12

    invoke-static {v11, v3, v10, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, LPl/g;->o:[[[B

    aget-object v8, v8, p1

    div-int/lit8 v12, v12, 0x2

    int-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    aget-object v8, v8, v11

    iget v11, p0, LPl/g;->F:I

    invoke-static {v8, v3, v10, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, LPl/g;->E:LBi/y;

    invoke-interface {v8, v10, v3, v4}, LBi/y;->update([BII)V

    iget-object v4, p0, LPl/g;->g:[[[B

    aget-object v4, v4, p1

    iget-object v8, p0, LPl/g;->E:LBi/y;

    invoke-interface {v8}, LBi/y;->f()I

    move-result v8

    new-array v8, v8, [B

    aput-object v8, v4, v2

    iget-object v4, p0, LPl/g;->E:LBi/y;

    iget-object v8, p0, LPl/g;->g:[[[B

    aget-object v8, v8, p1

    aget-object v8, v8, v2

    invoke-interface {v4, v8, v3}, LBi/y;->c([BI)I

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_8

    if-ge v4, v5, :cond_5

    iget-object v8, p0, LPl/g;->i:[[LPl/n;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, LPl/n;->n()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, LPl/g;->i:[[LPl/n;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, LPl/n;->b()[B

    move-result-object v8

    iget-object v10, p0, LPl/g;->g:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v4

    iget v11, p0, LPl/g;->F:I

    invoke-static {v8, v3, v10, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, LPl/g;->i:[[LPl/n;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, LPl/n;->a()V

    goto :goto_3

    :cond_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Treehash ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") not finished when needed in AuthPathComputation"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-ge v4, v1, :cond_6

    if-lt v4, v5, :cond_6

    iget-object v8, p0, LPl/g;->m:[[Ljava/util/Vector;

    aget-object v8, v8, p1

    sub-int v10, v4, v5

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, LPl/g;->m:[[Ljava/util/Vector;

    aget-object v8, v8, p1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    iget-object v11, p0, LPl/g;->g:[[[B

    aget-object v11, v11, p1

    aget-object v11, v11, v4

    iget v12, p0, LPl/g;->F:I

    invoke-static {v8, v3, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, LPl/g;->m:[[Ljava/util/Vector;

    aget-object v8, v8, p1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v8, v10}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_6
    if-ge v4, v5, :cond_7

    shl-int v8, v7, v4

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v0

    iget-object v10, p0, LPl/g;->H:[I

    aget v10, v10, p1

    if-ge v8, v10, :cond_7

    iget-object v8, p0, LPl/g;->i:[[LPl/n;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, LPl/n;->i()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_4
    if-ge v2, v1, :cond_9

    if-nez v6, :cond_9

    iget-object v0, p0, LPl/g;->o:[[[B

    aget-object v0, v0, p1

    div-int/lit8 v2, v2, 0x2

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget-object v0, v0, v1

    iget v1, p0, LPl/g;->F:I

    invoke-static {v9, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget v0, p0, LPl/g;->D:I

    sub-int/2addr v0, v7

    if-ne p1, v0, :cond_b

    :goto_5
    div-int/lit8 v0, v5, 0x2

    if-gt v7, v0, :cond_c

    invoke-virtual {p0, p1}, LPl/g;->j(I)I

    move-result v0

    if-ltz v0, :cond_a

    :try_start_0
    iget v1, p0, LPl/g;->F:I

    new-array v1, v1, [B

    iget-object v2, p0, LPl/g;->i:[[LPl/n;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    invoke-virtual {v2}, LPl/n;->e()[B

    move-result-object v2

    iget v4, p0, LPl/g;->F:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v2, v1}, LQl/a;->c([B)[B

    move-result-object v1

    new-instance v2, LQl/d;

    iget-object v4, p0, LPl/g;->y:LPl/a;

    invoke-interface {v4}, LPl/a;->get()LBi/y;

    move-result-object v4

    iget-object v6, p0, LPl/g;->B:[I

    aget v6, v6, p1

    invoke-direct {v2, v1, v4, v6}, LQl/d;-><init>([BLBi/y;I)V

    invoke-virtual {v2}, LQl/d;->c()[B

    move-result-object v1

    iget-object v2, p0, LPl/g;->i:[[LPl/n;

    aget-object v2, v2, p1

    aget-object v0, v2, v0

    iget-object v2, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v0, v2, v1}, LPl/n;->l(LQl/a;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_a
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, LPl/g;->s:[I

    invoke-virtual {p0, p1}, LPl/g;->j(I)I

    move-result v1

    aput v1, v0, p1

    :cond_c
    return-void
.end method

.method public f()[[[B
    .locals 1

    iget-object v0, p0, LPl/g;->g:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->z([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public g()[[B
    .locals 1

    iget-object v0, p0, LPl/g;->e:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->y([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, LPl/g;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public i()[I
    .locals 1

    iget-object v0, p0, LPl/g;->d:[I

    return-object v0
.end method

.method public final j(I)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, LPl/g;->A:[I

    aget v3, v3, p1

    iget-object v4, p0, LPl/g;->C:[I

    aget v4, v4, p1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    iget-object v3, p0, LPl/g;->i:[[LPl/n;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, LPl/n;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LPl/g;->i:[[LPl/n;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, LPl/n;->n()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, LPl/g;->i:[[LPl/n;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, LPl/n;->d()I

    move-result v3

    iget-object v4, p0, LPl/g;->i:[[LPl/n;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    invoke-virtual {v4}, LPl/n;->d()I

    move-result v4

    if-ge v3, v4, :cond_1

    :goto_1
    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public k()LPl/a;
    .locals 1

    iget-object v0, p0, LPl/g;->y:LPl/a;

    return-object v0
.end method

.method public l(I)I
    .locals 1

    iget-object v0, p0, LPl/g;->H:[I

    aget p1, v0, p1

    return p1
.end method

.method public m(I)[B
    .locals 1

    iget-object v0, p0, LPl/g;->w:[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final n(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    rem-int v3, p1, v2

    if-nez v3, :cond_1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LPl/g;->z:Z

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LPl/g;->z:Z

    return-void
.end method

.method public q()LPl/g;
    .locals 2

    new-instance v0, LPl/g;

    invoke-direct {v0, p0}, LPl/g;-><init>(LPl/g;)V

    iget-object v1, p0, LPl/g;->t:LPl/f;

    invoke-virtual {v1}, LPl/f;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LPl/g;->r(I)V

    return-object v0
.end method

.method public final r(I)V
    .locals 4

    iget v0, p0, LPl/g;->D:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, LPl/g;->d:[I

    aget v3, v1, p1

    add-int/2addr v3, v2

    aput v3, v1, p1

    :cond_0
    iget-object v1, p0, LPl/g;->d:[I

    aget v1, v1, p1

    iget-object v3, p0, LPl/g;->H:[I

    aget v3, v3, p1

    if-ne v1, v3, :cond_1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, p1}, LPl/g;->s(I)V

    iget-object v0, p0, LPl/g;->d:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LPl/g;->t(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 7

    if-lez p1, :cond_8

    iget-object v0, p0, LPl/g;->d:[I

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    move v0, p1

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, LPl/g;->d:[I

    aget v4, v4, v0

    iget-object v5, p0, LPl/g;->H:[I

    aget v5, v5, v0

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    move v2, v6

    :cond_1
    if-eqz v2, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    if-nez v2, :cond_8

    iget-object v0, p0, LPl/g;->G:LQl/a;

    iget-object v2, p0, LPl/g;->e:[[B

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, LQl/a;->c([B)[B

    iget-object v0, p0, LPl/g;->x:[LPl/j;

    aget-object v0, v0, v1

    invoke-virtual {v0}, LPl/j;->h()Z

    if-le p1, v3, :cond_3

    iget-object v0, p0, LPl/g;->p:[LPl/e;

    add-int/lit8 v2, p1, -0x2

    aget-object v4, v0, v2

    invoke-virtual {v4}, LPl/e;->f()LPl/e;

    move-result-object v4

    aput-object v4, v0, v2

    :cond_3
    iget-object v0, p0, LPl/g;->q:[LPl/e;

    aget-object v2, v0, v1

    invoke-virtual {v2}, LPl/e;->f()LPl/e;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, LPl/g;->s:[I

    aget v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, LPl/g;->r:[LPl/e;

    aget-object v2, v0, v1

    invoke-virtual {v2}, LPl/e;->f()LPl/e;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, LPl/g;->r:[LPl/e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, LPl/e;->a()[B

    move-result-object v0

    :try_start_0
    iget-object v2, p0, LPl/g;->i:[[LPl/n;

    aget-object v2, v2, v1

    iget-object v4, p0, LPl/g;->s:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v2, v4, v0}, LPl/n;->l(LQl/a;[B)V

    iget-object v0, p0, LPl/g;->i:[[LPl/n;

    aget-object v0, v0, v1

    iget-object v2, p0, LPl/g;->s:[I

    aget v2, v2, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, LPl/n;->n()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, LPl/g;->u(I)V

    iget-object v0, p0, LPl/g;->w:[[B

    iget-object v2, p0, LPl/g;->x:[LPl/j;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LPl/j;->b()[B

    move-result-object v2

    aput-object v2, v0, v1

    move v0, v6

    :goto_1
    iget-object v2, p0, LPl/g;->A:[I

    aget v2, v2, p1

    iget-object v4, p0, LPl/g;->C:[I

    aget v4, v4, p1

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_5

    iget-object v2, p0, LPl/g;->i:[[LPl/n;

    aget-object v2, v2, p1

    iget-object v4, p0, LPl/g;->j:[[LPl/n;

    aget-object v5, v4, v1

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    aget-object v2, v4, v1

    iget-object v4, p0, LPl/g;->v:[LPl/i;

    aget-object v4, v4, v1

    invoke-virtual {v4}, LPl/i;->g()[LPl/n;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v6

    :goto_2
    iget-object v2, p0, LPl/g;->A:[I

    aget v2, v2, p1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, LPl/g;->h:[[[B

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    iget-object v4, p0, LPl/g;->g:[[[B

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    iget v5, p0, LPl/g;->F:I

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LPl/g;->v:[LPl/i;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LPl/i;->a()[[B

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, LPl/g;->h:[[[B

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget v5, p0, LPl/g;->F:I

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v6

    :goto_3
    iget-object v2, p0, LPl/g;->C:[I

    aget v2, v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_7

    iget-object v2, p0, LPl/g;->m:[[Ljava/util/Vector;

    aget-object v2, v2, p1

    iget-object v4, p0, LPl/g;->n:[[Ljava/util/Vector;

    aget-object v5, v4, v1

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    aget-object v2, v4, v1

    iget-object v4, p0, LPl/g;->v:[LPl/i;

    aget-object v4, v4, v1

    invoke-virtual {v4}, LPl/i;->b()[Ljava/util/Vector;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, LPl/g;->k:[Ljava/util/Vector;

    iget-object v2, p0, LPl/g;->l:[Ljava/util/Vector;

    aget-object v3, v2, v1

    aput-object v3, v0, p1

    iget-object p1, p0, LPl/g;->v:[LPl/i;

    aget-object p1, p1, v1

    invoke-virtual {p1}, LPl/i;->d()Ljava/util/Vector;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p0, LPl/g;->u:[[B

    iget-object v0, p0, LPl/g;->v:[LPl/i;

    aget-object v0, v0, v1

    invoke-virtual {v0}, LPl/i;->c()[B

    move-result-object v0

    aput-object v0, p1, v1

    iget p1, p0, LPl/g;->F:I

    new-array v0, p1, [B

    new-array v0, p1, [B

    iget-object v2, p0, LPl/g;->e:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v6, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LPl/g;->G:LQl/a;

    invoke-virtual {p1, v0}, LQl/a;->c([B)[B

    iget-object p1, p0, LPl/g;->G:LQl/a;

    invoke-virtual {p1, v0}, LQl/a;->c([B)[B

    iget-object p1, p0, LPl/g;->G:LQl/a;

    invoke-virtual {p1, v0}, LQl/a;->c([B)[B

    move-result-object p1

    iget-object v0, p0, LPl/g;->x:[LPl/j;

    aget-object v0, v0, v1

    iget-object v2, p0, LPl/g;->u:[[B

    aget-object v2, v2, v1

    invoke-virtual {v0, p1, v2}, LPl/j;->f([B[B)V

    invoke-virtual {p0, v1}, LPl/g;->r(I)V

    :cond_8
    return-void
.end method

.method public final t(I)V
    .locals 8

    invoke-virtual {p0, p1}, LPl/g;->e(I)V

    if-lez p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object v1, p0, LPl/g;->p:[LPl/e;

    add-int/lit8 v2, p1, -0x2

    aget-object v3, v1, v2

    invoke-virtual {v3}, LPl/e;->f()LPl/e;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    iget-object v1, p0, LPl/g;->q:[LPl/e;

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, LPl/e;->f()LPl/e;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, LPl/g;->l(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v3, v1

    iget-object v1, p0, LPl/g;->A:[I

    aget v1, v1, v2

    iget-object v5, p0, LPl/g;->C:[I

    aget v5, v5, v2

    sub-int/2addr v1, v5

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, LPl/g;->d:[I

    aget v3, v3, p1

    rem-int v4, v3, v1

    if-ne v4, v0, :cond_2

    if-le v3, v0, :cond_1

    iget-object v3, p0, LPl/g;->s:[I

    aget v3, v3, v2

    if-ltz v3, :cond_1

    iget-object v3, p0, LPl/g;->r:[LPl/e;

    aget-object v3, v3, v2

    invoke-virtual {v3}, LPl/e;->a()[B

    move-result-object v3

    :try_start_0
    iget-object v4, p0, LPl/g;->i:[[LPl/n;

    aget-object v4, v4, v2

    iget-object v5, p0, LPl/g;->s:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    iget-object v5, p0, LPl/g;->G:LQl/a;

    invoke-virtual {v4, v5, v3}, LPl/n;->l(LQl/a;[B)V

    iget-object v3, p0, LPl/g;->i:[[LPl/n;

    aget-object v3, v3, v2

    iget-object v4, p0, LPl/g;->s:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, LPl/n;->n()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v3, p0, LPl/g;->s:[I

    invoke-virtual {p0, v2}, LPl/g;->j(I)I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, LPl/g;->s:[I

    aget v3, v3, v2

    if-ltz v3, :cond_3

    iget-object v4, p0, LPl/g;->i:[[LPl/n;

    aget-object v4, v4, v2

    aget-object v3, v4, v3

    invoke-virtual {v3}, LPl/n;->e()[B

    move-result-object v3

    iget-object v4, p0, LPl/g;->r:[LPl/e;

    new-instance v5, LPl/e;

    iget-object v6, p0, LPl/g;->y:LPl/a;

    invoke-interface {v6}, LPl/a;->get()LBi/y;

    move-result-object v6

    iget-object v7, p0, LPl/g;->B:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v7, v1, v3}, LPl/e;-><init>(LBi/y;II[B)V

    aput-object v5, v4, v2

    iget-object v1, p0, LPl/g;->r:[LPl/e;

    aget-object v3, v1, v2

    invoke-virtual {v3}, LPl/e;->f()LPl/e;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, LPl/g;->s:[I

    aget v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, LPl/g;->r:[LPl/e;

    aget-object v3, v1, v2

    invoke-virtual {v3}, LPl/e;->f()LPl/e;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_3
    :goto_1
    iget-object v1, p0, LPl/g;->x:[LPl/j;

    aget-object v1, v1, v2

    invoke-virtual {v1}, LPl/j;->h()Z

    iget-object v1, p0, LPl/g;->d:[I

    aget v1, v1, p1

    if-ne v1, v0, :cond_4

    iget-object v0, p0, LPl/g;->v:[LPl/i;

    aget-object v0, v0, v2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, LPl/i;->h(Ljava/util/Vector;)V

    :cond_4
    invoke-virtual {p0, p1}, LPl/g;->u(I)V

    :cond_5
    return-void
.end method

.method public final u(I)V
    .locals 5

    iget v0, p0, LPl/g;->F:I

    new-array v0, v0, [B

    iget-object v0, p0, LPl/g;->G:LQl/a;

    iget-object v1, p0, LPl/g;->f:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, LQl/a;->c([B)[B

    move-result-object v0

    iget v1, p0, LPl/g;->D:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance v1, LQl/d;

    iget-object v3, p0, LPl/g;->y:LPl/a;

    invoke-interface {v3}, LPl/a;->get()LBi/y;

    move-result-object v3

    iget-object v4, p0, LPl/g;->B:[I

    aget p1, v4, p1

    invoke-direct {v1, v0, v3, p1}, LQl/d;-><init>([BLBi/y;I)V

    iget-object p1, p0, LPl/g;->v:[LPl/i;

    aget-object p1, p1, v2

    iget-object v0, p0, LPl/g;->f:[[B

    aget-object v0, v0, v2

    invoke-virtual {v1}, LQl/d;->c()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LPl/i;->k([B[B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LPl/g;->v:[LPl/i;

    aget-object p1, p1, v2

    iget-object v0, p0, LPl/g;->f:[[B

    aget-object v0, v0, v2

    iget-object v1, p0, LPl/g;->p:[LPl/e;

    aget-object v1, v1, v2

    invoke-virtual {v1}, LPl/e;->a()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LPl/i;->k([B[B)V

    iget-object p1, p0, LPl/g;->p:[LPl/e;

    aget-object p1, p1, v2

    iget-object v0, p0, LPl/g;->f:[[B

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, LPl/e;->e([B)V

    :goto_0
    return-void
.end method
