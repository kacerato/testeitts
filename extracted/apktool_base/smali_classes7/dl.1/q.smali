.class public Ldl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldl/b;

.field public b:Ldl/f;

.field public c:Ldl/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldl/b;

    invoke-direct {v0}, Ldl/b;-><init>()V

    iput-object v0, p0, Ldl/q;->a:Ldl/b;

    new-instance v0, Ldl/f;

    invoke-direct {v0}, Ldl/f;-><init>()V

    iput-object v0, p0, Ldl/q;->b:Ldl/f;

    new-instance v0, Ldl/d;

    invoke-direct {v0}, Ldl/d;-><init>()V

    iput-object v0, p0, Ldl/q;->c:Ldl/d;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public b(Ldl/x;Ldl/w;[SI[BI[BI[BI[BI[SII[Ldl/g;I)I
    .locals 23

    move-object/from16 v15, p0

    move/from16 v14, p15

    move-object/from16 v13, p16

    move/from16 v12, p17

    invoke-static/range {p15 .. p15}, Ldl/q;->a(I)I

    move-result v11

    add-int v10, v12, v11

    add-int v9, v10, v11

    add-int v8, v9, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move v2, v10

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move/from16 v2, p17

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move v2, v8

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move v2, v9

    move-object/from16 v3, p11

    move/from16 v4, p12

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v10, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v12, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v8, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v9, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v10, v14}, Ldl/f;->w([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v8, v14}, Ldl/f;->w([Ldl/g;II)V

    add-int v7, v8, v11

    add-int v6, v7, v11

    invoke-static {v13, v10, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v7, v14}, Ldl/f;->v([Ldl/g;II)V

    invoke-static {v13, v12, v13, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move v2, v6

    move-object/from16 v3, p16

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Ldl/f;->t([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v12, v14}, Ldl/f;->v([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move/from16 v2, p17

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    invoke-static {v13, v10, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move v2, v10

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Ldl/f;->t([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v9, v14}, Ldl/f;->v([Ldl/g;II)V

    invoke-static {v13, v8, v13, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v6, v14}, Ldl/f;->v([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    add-int v5, v6, v11

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_0

    add-int v1, v6, v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    add-int v3, p14, v0

    aget-short v3, p13, v3

    move/from16 v16, v5

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    aput-object v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v6, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->a:Ldl/b;

    iget-object v5, v0, Ldl/b;->b:Ldl/g;

    move/from16 v4, v16

    invoke-static {v13, v6, v13, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p16

    move v2, v4

    move-object/from16 v3, p16

    move v4, v7

    move/from16 v12, v16

    move/from16 v16, v9

    move-object v9, v5

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v1, v9}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v0, v13, v12, v1, v14}, Ldl/f;->u([Ldl/g;ILdl/g;I)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p16

    move v2, v6

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v6, v9, v14}, Ldl/f;->u([Ldl/g;ILdl/g;I)V

    mul-int/lit8 v9, v11, 0x2

    invoke-static {v13, v6, v13, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p16

    move/from16 p1, v6

    move v6, v7

    move/from16 v18, v7

    move-object/from16 v7, p16

    move/from16 v19, v8

    move/from16 v8, p17

    move/from16 v20, v9

    move/from16 p2, v16

    move-object/from16 v9, p16

    move/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v11, p16

    move/from16 v22, v12

    move/from16 v12, p2

    move/from16 v13, p15

    move/from16 v14, p15

    move-object/from16 v15, p16

    move/from16 v16, p1

    invoke-virtual/range {v0 .. v16}, Ldl/q;->j(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;III[Ldl/g;I)V

    move-object/from16 v6, p16

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v11, v20

    invoke-static {v6, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, p16

    move/from16 v2, v17

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move/from16 v2, p17

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move v2, v9

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move-object/from16 p5, p0

    move-object/from16 p6, p16

    move/from16 p7, p2

    move-object/from16 p8, p11

    move/from16 p9, p12

    move/from16 p10, p15

    invoke-virtual/range {p5 .. p10}, Ldl/q;->r([Ldl/g;I[BII)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    move/from16 v2, p15

    move/from16 v3, v17

    invoke-virtual {v1, v6, v3, v2}, Ldl/f;->a([Ldl/g;II)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    move/from16 v4, p17

    invoke-virtual {v1, v6, v4, v2}, Ldl/f;->a([Ldl/g;II)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    invoke-virtual {v1, v6, v9, v2}, Ldl/f;->a([Ldl/g;II)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    move/from16 v10, p2

    invoke-virtual {v1, v6, v10, v2}, Ldl/f;->a([Ldl/g;II)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    invoke-virtual {v1, v6, v3, v2}, Ldl/f;->w([Ldl/g;II)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    invoke-virtual {v1, v6, v9, v2}, Ldl/f;->w([Ldl/g;II)V

    move/from16 v1, v21

    move/from16 v5, v22

    add-int v7, v5, v1

    invoke-static {v6, v8, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v11, p1

    invoke-static {v6, v11, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v12

    move/from16 p7, v5

    move-object/from16 p8, p16

    move/from16 p9, p17

    invoke-virtual/range {p5 .. p10}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v4, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v4

    move/from16 p7, v7

    move/from16 p9, v10

    invoke-virtual/range {p5 .. p10}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v4, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v4

    move/from16 p7, v5

    move/from16 p9, v7

    invoke-virtual/range {p5 .. p10}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    invoke-static {v6, v8, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v4

    move/from16 p7, v7

    move/from16 p9, v3

    invoke-virtual/range {p5 .. p10}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    invoke-static {v6, v5, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v3

    move/from16 p7, v11

    move/from16 p9, v9

    invoke-virtual/range {p5 .. p10}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v3, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v3

    move/from16 p9, v7

    invoke-virtual/range {p5 .. p10}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    iget-object v3, v0, Ldl/q;->b:Ldl/f;

    invoke-virtual {v3, v6, v8, v2}, Ldl/f;->h([Ldl/g;II)V

    iget-object v3, v0, Ldl/q;->b:Ldl/f;

    invoke-virtual {v3, v6, v11, v2}, Ldl/f;->h([Ldl/g;II)V

    new-array v3, v1, [S

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    add-int v9, p14, v4

    aget-short v9, p13, v9

    const v10, 0xffff

    and-int/2addr v9, v10

    iget-object v10, v0, Ldl/q;->a:Ldl/b;

    add-int v12, v8, v4

    aget-object v12, v6, v12

    invoke-virtual {v10, v12}, Ldl/b;->m(Ldl/g;)J

    move-result-wide v12

    long-to-int v10, v12

    sub-int/2addr v9, v10

    mul-int v10, v9, v9

    add-int/2addr v5, v10

    or-int/2addr v7, v5

    int-to-short v9, v9

    aput-short v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v3, v7, 0x1f

    neg-int v3, v3

    or-int/2addr v3, v5

    new-array v4, v1, [S

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    iget-object v7, v0, Ldl/q;->a:Ldl/b;

    add-int v8, v11, v5

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ldl/b;->m(Ldl/g;)J

    move-result-wide v7

    neg-long v7, v7

    long-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v0, Ldl/q;->c:Ldl/d;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v6, v2}, Ldl/d;->d(I[SII)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v4, v6, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v6
.end method

.method public c(Ldl/x;Ldl/w;[SI[Ldl/g;I[SII[Ldl/g;I)I
    .locals 23

    move-object/from16 v15, p0

    move/from16 v14, p9

    move-object/from16 v13, p10

    move/from16 v12, p11

    invoke-static/range {p9 .. p9}, Ldl/q;->a(I)I

    move-result v11

    add-int v10, v12, v11

    invoke-virtual {v15, v14}, Ldl/q;->m(I)I

    move-result v0

    add-int v16, p6, v0

    invoke-virtual {v15, v14}, Ldl/q;->n(I)I

    move-result v0

    add-int v17, p6, v0

    invoke-virtual {v15, v14}, Ldl/q;->o(I)I

    move-result v0

    add-int v18, p6, v0

    invoke-virtual {v15, v14}, Ldl/q;->p(I)I

    move-result v0

    add-int v19, p6, v0

    invoke-virtual {v15, v14}, Ldl/q;->q(I)I

    move-result v0

    add-int v8, p6, v0

    const/4 v9, 0x0

    move v0, v9

    :goto_0
    if-ge v0, v11, :cond_0

    add-int v1, v12, v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    add-int v3, p8, v0

    aget-short v3, p7, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    aput-object v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v12, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->a:Ldl/b;

    iget-object v6, v0, Ldl/b;->b:Ldl/g;

    invoke-static {v13, v12, v13, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p10

    move v2, v10

    move-object/from16 v3, p5

    move/from16 v4, v17

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v1, v6}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v0, v13, v10, v1, v14}, Ldl/f;->u([Ldl/g;ILdl/g;I)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p10

    move/from16 v2, p11

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v12, v6, v14}, Ldl/f;->u([Ldl/g;ILdl/g;I)V

    add-int v7, v10, v11

    add-int v6, v7, v11

    add-int v20, v6, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p10

    move v4, v7

    move-object/from16 v5, p10

    move/from16 p1, v6

    move/from16 v21, v7

    move-object/from16 v7, p5

    move-object/from16 v9, p10

    move/from16 p2, v10

    move/from16 v10, p11

    move/from16 v22, v11

    move-object/from16 v11, p10

    move/from16 v12, p2

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, v20

    invoke-virtual/range {v0 .. v15}, Ldl/q;->i(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v10, v21

    move/from16 v8, v22

    invoke-static {v6, v10, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v11, p1

    move/from16 v9, p2

    invoke-static {v6, v11, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v12, p0

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p10

    move v2, v10

    move-object/from16 v3, p5

    move/from16 v4, v16

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move v2, v11

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move v2, v10

    move-object/from16 v3, p10

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    invoke-static {v6, v7, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move v2, v11

    move-object/from16 v3, p5

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    invoke-static {v6, v10, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move v2, v9

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 v3, p10

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move/from16 v1, p9

    invoke-virtual {v0, v6, v7, v1}, Ldl/f;->h([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v6, v9, v1}, Ldl/f;->h([Ldl/g;II)V

    new-array v0, v8, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    add-int v5, p8, v2

    aget-short v5, p7, v5

    const v10, 0xffff

    and-int/2addr v5, v10

    iget-object v10, v12, Ldl/q;->a:Ldl/b;

    add-int v11, v7, v2

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ldl/b;->m(Ldl/g;)J

    move-result-wide v10

    long-to-int v10, v10

    sub-int/2addr v5, v10

    mul-int v10, v5, v5

    add-int/2addr v3, v10

    or-int/2addr v4, v3

    int-to-short v5, v5

    aput-short v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v2, v4, 0x1f

    neg-int v2, v2

    or-int/2addr v2, v3

    new-array v3, v8, [S

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_2

    iget-object v5, v12, Ldl/q;->a:Ldl/b;

    add-int v10, v9, v4

    aget-object v10, v6, v10

    invoke-virtual {v5, v10}, Ldl/b;->m(Ldl/g;)J

    move-result-wide v10

    neg-long v10, v10

    long-to-int v5, v10

    int-to-short v5, v5

    aput-short v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v12, Ldl/q;->c:Ldl/d;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5, v1}, Ldl/d;->d(I[SII)I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v5, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v5
.end method

.method public d([Ldl/g;I[BI[BI[BI[BII[Ldl/g;I)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p11

    move-object/from16 v10, p12

    move/from16 v6, p13

    invoke-static/range {p11 .. p11}, Ldl/q;->a(I)I

    move-result v7

    invoke-virtual {v12, v14}, Ldl/q;->m(I)I

    move-result v0

    add-int v8, p2, v0

    invoke-virtual {v12, v14}, Ldl/q;->n(I)I

    move-result v0

    add-int v9, p2, v0

    invoke-virtual {v12, v14}, Ldl/q;->o(I)I

    move-result v0

    add-int v11, p2, v0

    invoke-virtual {v12, v14}, Ldl/q;->p(I)I

    move-result v0

    add-int v15, p2, v0

    invoke-virtual {v12, v14}, Ldl/q;->q(I)I

    move-result v0

    add-int v5, p2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move v2, v8

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move v2, v15

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Ldl/q;->r([Ldl/g;I[BII)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v11

    move-object/from16 p5, p9

    move/from16 p6, p10

    move/from16 p7, p11

    invoke-virtual/range {p2 .. p7}, Ldl/q;->r([Ldl/g;I[BII)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v9, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v8, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v15, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v11, v14}, Ldl/f;->a([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v9, v14}, Ldl/f;->w([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v13, v15, v14}, Ldl/f;->w([Ldl/g;II)V

    add-int v5, v6, v7

    add-int v4, v5, v7

    add-int v3, v4, v7

    invoke-static {v13, v8, v10, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v10, v6, v14}, Ldl/f;->v([Ldl/g;II)V

    invoke-static {v13, v9, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v10, v3, v14}, Ldl/f;->v([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 p2, v0

    move-object/from16 p3, p12

    move/from16 p4, p13

    move-object/from16 p5, p12

    move/from16 p6, v3

    invoke-virtual/range {p2 .. p7}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    invoke-static {v13, v8, v10, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 p2, v0

    move/from16 p4, v5

    move-object/from16 p5, p1

    move/from16 p6, v11

    invoke-virtual/range {p2 .. p7}, Ldl/f;->t([Ldl/g;I[Ldl/g;II)V

    invoke-static {v13, v9, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 p2, v0

    move/from16 p4, v3

    move/from16 p6, v15

    invoke-virtual/range {p2 .. p7}, Ldl/f;->t([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 p2, v0

    move/from16 p4, v5

    move-object/from16 p5, p12

    move/from16 p6, v3

    invoke-virtual/range {p2 .. p7}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    invoke-static {v13, v11, v10, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v10, v4, v14}, Ldl/f;->v([Ldl/g;II)V

    invoke-static {v13, v15, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    invoke-virtual {v0, v10, v3, v14}, Ldl/f;->v([Ldl/g;II)V

    iget-object v0, v12, Ldl/q;->b:Ldl/f;

    move-object/from16 p2, v0

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p7}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v11, v3

    move-object/from16 v3, p12

    move v8, v4

    move/from16 v4, p13

    move v6, v5

    move-object/from16 v5, p12

    move-object/from16 v7, p12

    move/from16 v9, p11

    invoke-virtual/range {v0 .. v11}, Ldl/q;->f([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    move/from16 v0, v16

    invoke-virtual {v12, v13, v0, v14, v14}, Ldl/q;->e([Ldl/g;III)V

    return-void
.end method

.method public e([Ldl/g;III)V
    .locals 2

    invoke-static {p4}, Ldl/q;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p4, p0, Ldl/q;->a:Ldl/b;

    aget-object v0, p1, p2

    invoke-virtual {p4, v0}, Ldl/b;->o(Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/q;->a:Ldl/b;

    iget-object v1, v1, Ldl/b;->d:[Ldl/g;

    aget-object p3, v1, p3

    invoke-virtual {p4, v0, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p4, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Ldl/q;->e([Ldl/g;III)V

    invoke-virtual {p0, p4}, Ldl/q;->h(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Ldl/q;->e([Ldl/g;III)V

    :goto_0
    return-void
.end method

.method public f([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v9, p10

    move/from16 v8, p11

    invoke-static/range {p9 .. p9}, Ldl/q;->a(I)I

    move-result v7

    const/4 v6, 0x1

    if-ne v7, v6, :cond_0

    aget-object v0, v0, v1

    aput-object v0, p1, p2

    return-void

    :cond_0
    shr-int/lit8 v23, v7, 0x1

    add-int v5, v8, v7

    shl-int/lit8 v2, v7, 0x1

    add-int v4, v8, v2

    invoke-static {v0, v1, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v10, Ldl/q;->b:Ldl/f;

    move-object/from16 v12, p10

    move v13, v5

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    invoke-virtual/range {v11 .. v22}, Ldl/f;->j([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    iget-object v0, v10, Ldl/q;->b:Ldl/f;

    add-int v11, v4, v23

    move-object/from16 v1, p10

    move v2, v4

    move-object/from16 v3, p10

    move v12, v4

    move v4, v11

    move v11, v5

    move-object/from16 v5, p10

    move v13, v6

    move/from16 v6, p11

    move v14, v7

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    iget-object v0, v10, Ldl/q;->b:Ldl/f;

    add-int v15, v8, v23

    move/from16 v2, p11

    move v4, v15

    move v6, v11

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    invoke-static {v9, v12, v9, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v14, p2, v14

    add-int v6, v11, v23

    add-int/lit8 v13, p9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v4, v11

    move v7, v13

    move-object/from16 v8, p10

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Ldl/q;->g([Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    invoke-virtual {v10, v13}, Ldl/q;->h(I)I

    move-result v0

    add-int v2, v14, v0

    move-object/from16 v0, p0

    move/from16 v4, p11

    move v6, v15

    invoke-virtual/range {v0 .. v9}, Ldl/q;->g([Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    return-void
.end method

.method public g([Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V
    .locals 24

    move-object/from16 v10, p0

    invoke-static/range {p7 .. p7}, Ldl/q;->a(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    aget-object v0, p3, p4

    aput-object v0, p1, p2

    return-void

    :cond_0
    shr-int/lit8 v23, v8, 0x1

    iget-object v11, v10, Ldl/q;->b:Ldl/f;

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p7

    invoke-virtual/range {v11 .. v22}, Ldl/f;->j([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    iget-object v0, v10, Ldl/q;->b:Ldl/f;

    add-int v11, p6, v23

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p5

    move v4, v11

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    iget-object v0, v10, Ldl/q;->b:Ldl/f;

    add-int v12, p4, v23

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p3

    move v4, v12

    move-object/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    add-int v13, p2, v8

    add-int/lit8 v14, p7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p5

    move v6, v11

    move v7, v14

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Ldl/q;->g([Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    invoke-virtual {v10, v14}, Ldl/q;->h(I)I

    move-result v0

    add-int v2, v13, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p3

    move v6, v12

    invoke-virtual/range {v0 .. v9}, Ldl/q;->g([Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    return-void
.end method

.method public h(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    shl-int p1, v0, p1

    return p1
.end method

.method public i(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p11

    move/from16 v11, p12

    move/from16 v10, p13

    move/from16 v9, p15

    const/4 v0, 0x2

    if-ne v10, v0, :cond_0

    add-int/lit8 v0, p8, 0x4

    add-int/lit8 v1, p8, 0x8

    aget-object v2, v12, v11

    add-int/lit8 v3, v11, 0x2

    aget-object v4, v12, v3

    add-int/lit8 v5, v11, 0x1

    aget-object v6, v12, v5

    add-int/lit8 v7, v11, 0x3

    aget-object v8, v12, v7

    iget-object v9, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v9, v2, v6}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v9

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v10, v4, v8}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v10

    move/from16 p13, v0

    iget-object v0, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v0, v9}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v9, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v9, v10}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v9

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v10, v2, v6}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v4, v8}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v8

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    iget-object v10, v10, Ldl/b;->n:Ldl/g;

    invoke-virtual {v6, v8, v10}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v6

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v4, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    iget-object v4, v4, Ldl/b;->n:Ldl/g;

    invoke-virtual {v8, v2, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    add-int/lit8 v4, p8, 0xb

    aget-object v4, p7, v4

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v6, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Ldl/b;->l(J)Ldl/g;

    move-result-object v8

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v2, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v4

    move/from16 p14, v3

    int-to-long v3, v4

    invoke-virtual {v10, v3, v4}, Ldl/b;->l(J)Ldl/g;

    move-result-object v3

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v6, v8}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aget-object v1, p7, v1

    add-int/lit8 v6, p8, 0x9

    aget-object v6, p7, v6

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v10, v4, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v11

    move/from16 p15, v7

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v2, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v10, v4, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v10, v4, v1}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v2, v7, v0}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v2, v1, v9}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    add-int/lit8 v2, p8, 0xa

    aget-object v2, p7, v2

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v0, v2}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v0

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v1, v2}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Ldl/b;->l(J)Ldl/g;

    move-result-object v1

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v2, v8, v3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    iget-object v6, v6, Ldl/b;->m:Ldl/g;

    invoke-virtual {v2, v4, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v8, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    iget-object v6, v6, Ldl/b;->m:Ldl/g;

    invoke-virtual {v4, v3, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v0, v2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    aput-object v4, p5, p6

    add-int/lit8 v6, p6, 0x2

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v1, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    aput-object v7, p5, v6

    add-int/lit8 v6, p6, 0x1

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v0, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    aput-object v0, p5, v6

    add-int/lit8 v2, p6, 0x3

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v1, v3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    aput-object v1, p5, v2

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    aget-object v3, v12, p12

    invoke-virtual {v2, v3, v4}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    aget-object v4, v12, v5

    invoke-virtual {v3, v4, v0}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    aget-object v4, v12, p14

    invoke-virtual {v3, v4, v7}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    aget-object v5, v12, p15

    invoke-virtual {v4, v5, v1}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    aget-object v4, p7, p8

    add-int/lit8 v5, p8, 0x2

    aget-object v5, p7, v5

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v3, v5}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v6

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v2, v5}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v3, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    add-int/lit8 v3, p8, 0x1

    aget-object v3, p7, v3

    add-int/lit8 v4, p8, 0x3

    aget-object v4, p7, v4

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v0, v3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v1, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v5

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v0, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v1, v3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    aget-object v3, p9, p10

    invoke-virtual {v1, v6, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    add-int/lit8 v4, p10, 0x1

    aget-object v4, p9, v4

    invoke-virtual {v3, v5, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    add-int/lit8 v5, p10, 0x2

    aget-object v5, p9, v5

    invoke-virtual {v4, v2, v5}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    add-int/lit8 v5, p10, 0x3

    aget-object v5, p9, v5

    invoke-virtual {v4, v0, v5}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v1, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v2, v0}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v5

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v4}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v5}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v5

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v1, v3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v3, v2, v0}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v2, v1, v0}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    iget-object v6, v6, Ldl/b;->n:Ldl/g;

    invoke-virtual {v2, v3, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v3, v0, v1}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    iget-object v1, v1, Ldl/b;->n:Ldl/g;

    invoke-virtual {v3, v0, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    add-int/lit8 v1, p8, 0x7

    aget-object v1, p7, v1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v2, v1}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v3

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v0, v1}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Ldl/b;->l(J)Ldl/g;

    move-result-object v1

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v0, v1}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    aget-object v6, p7, p13

    add-int/lit8 v7, p8, 0x5

    aget-object v7, p7, v7

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v2, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v9

    iget-object v10, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v10, v0, v7}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v8

    iget-object v9, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v9, v2, v7}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v0, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v2, v8, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v0, v5}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    add-int/lit8 v4, p8, 0x6

    aget-object v4, p7, v4

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v2, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v0, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v0

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v4, v3, v1}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v5

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    iget-object v6, v6, Ldl/b;->m:Ldl/g;

    invoke-virtual {v4, v5, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v3, v1}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    iget-object v3, v3, Ldl/b;->m:Ldl/g;

    invoke-virtual {v5, v1, v3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v3, v2, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    aput-object v3, p3, p4

    add-int/lit8 v3, p4, 0x2

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v0, v1}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v5

    aput-object v5, p3, v3

    add-int/lit8 v3, p4, 0x1

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v2, v4}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p3, v3

    add-int/lit8 v2, p4, 0x3

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v3, v0, v1}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    aput-object v0, p3, v2

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    aget-object v2, v12, p12

    add-int/lit8 v3, p12, 0x1

    aget-object v3, v12, v3

    add-int/lit8 v4, p8, 0x3

    aget-object v4, p7, v4

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v2, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v5

    aput-object v5, p5, p6

    add-int/lit8 v6, p6, 0x1

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v3, v4}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Ldl/b;->l(J)Ldl/g;

    move-result-object v4

    aput-object v4, p5, v6

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v5}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v3, v4}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    aget-object v4, p7, p8

    add-int/lit8 v5, p8, 0x1

    aget-object v5, p7, v5

    iget-object v6, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v6, v2, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v7

    iget-object v8, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v8, v3, v5}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v6

    iget-object v7, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v7, v2, v5}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v5, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v5, v3, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    aget-object v4, p9, p10

    invoke-virtual {v3, v6, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    add-int/lit8 v5, p10, 0x1

    aget-object v5, p9, v5

    invoke-virtual {v4, v2, v5}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    add-int/lit8 v0, p8, 0x2

    aget-object v0, p7, v0

    iget-object v4, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v3, v0}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ldl/b;->l(J)Ldl/g;

    move-result-object v3

    aput-object v3, p3, p4

    add-int/lit8 v1, p4, 0x1

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v14, v13, v2, v0}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ldl/b;->l(J)Ldl/g;

    move-result-object v0

    aput-object v0, p3, v1

    return-void

    :cond_1
    shl-int v11, v1, v10

    shr-int/lit8 v16, v11, 0x1

    add-int v17, p8, v11

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v15, v8}, Ldl/q;->h(I)I

    move-result v0

    add-int v18, v17, v0

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    add-int v19, p6, v16

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p5

    move/from16 v4, v19

    move-object/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    add-int v20, v9, v16

    add-int v21, v9, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p14

    move/from16 v4, p15

    move-object/from16 v5, p14

    move/from16 v6, v20

    move-object/from16 v7, p7

    move/from16 v22, v8

    move/from16 v8, v18

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v23, v11

    move-object/from16 v11, p5

    move/from16 v12, v19

    move/from16 v13, v22

    move-object/from16 v14, p14

    move/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Ldl/q;->i(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    move-object/from16 v15, p0

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Ldl/f;->q([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    move-object/from16 v0, p11

    move/from16 v1, p12

    move/from16 v13, p15

    move/from16 v2, v23

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p14

    move/from16 v2, p15

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Ldl/f;->y([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    add-int v12, p4, v16

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p3

    move v4, v12

    move-object/from16 v5, p14

    move/from16 v6, p15

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p14

    move/from16 v4, p15

    move/from16 v6, v20

    move-object/from16 v7, p7

    move/from16 v8, v17

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p3

    move/from16 v13, v22

    move/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Ldl/q;->i(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II[Ldl/g;I)V

    iget-object v1, v0, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, p14

    move/from16 p9, p15

    move-object/from16 p10, p14

    move/from16 p11, v20

    move/from16 p12, p13

    invoke-virtual/range {p5 .. p12}, Ldl/f;->q([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    return-void
.end method

.method public j(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;III[Ldl/g;I)V
    .locals 36

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p5

    move/from16 v8, p6

    move-object/from16 v14, p7

    move/from16 v10, p8

    move-object/from16 v12, p9

    move/from16 v7, p10

    move-object/from16 v6, p11

    move/from16 v5, p12

    move-object/from16 v4, p15

    move/from16 v3, p16

    if-nez p14, :cond_0

    aget-object v0, v14, v10

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    invoke-virtual {v1, v0}, Ldl/b;->o(Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v2, v15, Ldl/q;->a:Ldl/b;

    iget-object v2, v2, Ldl/b;->d:[Ldl/g;

    aget-object v2, v2, p13

    invoke-virtual {v1, v0, v2}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    aget-object v2, p3, p4

    invoke-virtual {v13, v11, v2, v0}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ldl/b;->l(J)Ldl/g;

    move-result-object v1

    aput-object v1, p3, p4

    iget-object v1, v15, Ldl/q;->a:Ldl/b;

    aget-object v2, v9, v8

    invoke-virtual {v13, v11, v2, v0}, Ldl/x;->c(Ldl/w;Ldl/g;Ldl/g;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ldl/b;->l(J)Ldl/g;

    move-result-object v0

    aput-object v0, v9, v8

    return-void

    :cond_0
    const/4 v0, 0x1

    shl-int v2, v0, p14

    shr-int/lit8 v1, v2, 0x1

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move v13, v1

    move-object/from16 v1, p7

    move v11, v2

    move/from16 v2, p8

    move v9, v3

    move-object/from16 v3, p9

    move-object v8, v4

    move/from16 v4, p10

    move v12, v5

    move-object/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Ldl/f;->i([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    add-int v34, v9, v13

    move/from16 v23, v34

    move-object/from16 v1, p15

    move/from16 v2, p16

    move-object/from16 v3, p15

    move/from16 v4, v34

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    invoke-static {v8, v9, v14, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    move-object/from16 v5, p11

    move/from16 v6, p12

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    move-object/from16 v7, p11

    invoke-static {v8, v9, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p9

    move/from16 v5, p10

    move v3, v12

    invoke-static {v0, v5, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v14, v10, v0, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v5, v13

    move-object v2, v0

    move v12, v1

    invoke-static {v7, v3, v2, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v9, v11

    move/from16 v33, v1

    move v4, v1

    iget-object v0, v15, Ldl/q;->b:Ldl/f;

    add-int v17, v1, v13

    move/from16 v6, v17

    move-object/from16 v24, v0

    move-object/from16 v25, p15

    move/from16 v26, v1

    move-object/from16 v27, p15

    move/from16 v28, v17

    move-object/from16 v29, p5

    move/from16 v30, p6

    move/from16 v31, p14

    invoke-virtual/range {v24 .. v31}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    add-int v0, v3, v13

    move v10, v0

    add-int/lit8 v0, p14, -0x1

    move/from16 v31, v0

    move v14, v0

    add-int v16, v1, v11

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p15

    move-object/from16 v5, p15

    move/from16 v8, p12

    move-object/from16 v9, p11

    move/from16 v35, v11

    move-object/from16 v11, p9

    move/from16 v19, v13

    move/from16 v13, p13

    move-object/from16 v15, p15

    invoke-virtual/range {v0 .. v16}, Ldl/q;->j(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;III[Ldl/g;I)V

    move-object/from16 v8, p0

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move/from16 v9, v35

    shl-int/lit8 v1, v9, 0x1

    add-int v10, p16, v1

    move-object/from16 v1, p15

    move v2, v10

    move/from16 v4, v18

    move/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Ldl/f;->q([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v11, p15

    move/from16 v12, v18

    invoke-static {v6, v7, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move v2, v12

    move v4, v10

    move/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Ldl/f;->y([Ldl/g;I[Ldl/g;II)V

    invoke-static {v11, v10, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move/from16 v2, p16

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Ldl/f;->s([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, p16

    invoke-virtual/range {v0 .. v5}, Ldl/f;->k([Ldl/g;I[Ldl/g;II)V

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move-object/from16 v1, p15

    move/from16 v2, p16

    move/from16 v4, v34

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Ldl/f;->x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    add-int v27, p8, v19

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p15

    move/from16 v21, p16

    move-object/from16 v22, p15

    move-object/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v26, p7

    move-object/from16 v28, p9

    move/from16 v29, p10

    move/from16 v30, p13

    move-object/from16 v32, p15

    invoke-virtual/range {v17 .. v33}, Ldl/q;->j(Ldl/x;Ldl/w;[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;III[Ldl/g;I)V

    iget-object v0, v8, Ldl/q;->b:Ldl/f;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, p15

    move/from16 p9, p16

    move-object/from16 p10, p15

    move/from16 p11, v34

    move/from16 p12, p14

    invoke-virtual/range {p5 .. p12}, Ldl/f;->q([Ldl/g;I[Ldl/g;I[Ldl/g;II)V

    return-void
.end method

.method public k([SILdl/v;[BI[BI[BI[BI[SII[Ldl/g;I)V
    .locals 18

    :cond_0
    new-instance v0, Ldl/w;

    move-object v2, v0

    invoke-direct {v0}, Ldl/w;-><init>()V

    new-instance v3, Ldl/x;

    move-object v1, v3

    invoke-direct {v3}, Ldl/x;-><init>()V

    move-object/from16 v15, p0

    iget-object v3, v15, Ldl/q;->a:Ldl/b;

    iget-object v3, v3, Ldl/b;->e:[Ldl/g;

    aget-object v3, v3, p14

    iput-object v3, v0, Ldl/w;->a:Ldl/g;

    iget-object v0, v0, Ldl/w;->b:Ldl/p;

    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Ldl/p;->e(Ldl/v;)V

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    invoke-virtual/range {v0 .. v17}, Ldl/q;->b(Ldl/x;Ldl/w;[SI[BI[BI[BI[BI[SII[Ldl/g;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public l([SILdl/v;[Ldl/g;I[SII[Ldl/g;I)V
    .locals 14

    :cond_0
    new-instance v2, Ldl/w;

    invoke-direct {v2}, Ldl/w;-><init>()V

    new-instance v1, Ldl/x;

    invoke-direct {v1}, Ldl/x;-><init>()V

    move-object v12, p0

    iget-object v0, v12, Ldl/q;->a:Ldl/b;

    iget-object v0, v0, Ldl/b;->e:[Ldl/g;

    aget-object v0, v0, p8

    iput-object v0, v2, Ldl/w;->a:Ldl/g;

    iget-object v0, v2, Ldl/w;->b:Ldl/p;

    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Ldl/p;->e(Ldl/v;)V

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Ldl/q;->c(Ldl/x;Ldl/w;[SI[Ldl/g;I[SII[Ldl/g;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public m(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(I)I
    .locals 0

    invoke-static {p1}, Ldl/q;->a(I)I

    move-result p1

    return p1
.end method

.method public o(I)I
    .locals 0

    invoke-static {p1}, Ldl/q;->a(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public p(I)I
    .locals 0

    invoke-static {p1}, Ldl/q;->a(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public q(I)I
    .locals 0

    invoke-static {p1}, Ldl/q;->a(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public r([Ldl/g;I[BII)V
    .locals 5

    invoke-static {p5}, Ldl/q;->a(I)I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/q;->a:Ldl/b;

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
