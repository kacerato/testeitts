.class public Ljl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:Ljl/g;


# direct methods
.method public constructor <init>(Ljl/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl/a;->a:Ljl/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v0}, Ljl/e;->d()Ljl/f;

    move-result-object v0

    invoke-virtual {v0}, Ljl/f;->g()I

    move-result v0

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method public b([B)[B
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v2}, Ljl/e;->d()Ljl/f;

    move-result-object v2

    invoke-virtual {v2}, Ljl/f;->c()I

    move-result v3

    invoke-virtual {v2}, Ljl/f;->f()I

    move-result v11

    invoke-virtual {v2}, Ljl/f;->m()I

    move-result v12

    invoke-virtual {v2}, Ljl/f;->g()I

    move-result v13

    invoke-virtual {v2}, Ljl/f;->i()I

    move-result v14

    invoke-virtual {v2}, Ljl/f;->j()I

    move-result v15

    invoke-virtual {v2}, Ljl/f;->k()I

    move-result v9

    invoke-virtual {v2}, Ljl/f;->l()I

    move-result v10

    new-array v4, v3, [B

    iget-object v5, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v5}, Ljl/g;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5, v3}, Ljl/q;->l([B[BI)V

    new-array v8, v13, [B

    const/4 v7, 0x0

    invoke-static {v1, v7, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v3, [S

    invoke-static {v5, v8, v3, v11}, Ljl/q;->x([S[BII)V

    const/16 v6, 0x80

    move/from16 v16, v15

    new-array v15, v6, [B

    invoke-static {v1, v13, v15, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x100

    move/from16 v17, v14

    new-array v14, v1, [B

    invoke-static {v14, v15}, Ljl/q;->A([B[B)V

    new-array v6, v3, [S

    invoke-static {v6, v5, v4, v3, v11}, Ljl/q;->I([S[S[BII)V

    new-array v5, v1, [B

    move-object v4, v5

    move-object v1, v5

    move-object v5, v6

    move-object/from16 v18, v15

    const/16 v15, 0x80

    move-object v6, v14

    move v15, v7

    move v7, v11

    move-object/from16 v19, v8

    move v8, v12

    invoke-static/range {v4 .. v10}, Ljl/q;->J([B[S[BIIII)V

    const/16 v10, 0x20

    new-array v9, v10, [B

    invoke-static {v9, v1}, Ljl/q;->m([B[B)V

    invoke-virtual {v2}, Ljl/f;->e()I

    move-result v4

    sub-int/2addr v4, v10

    new-array v5, v4, [B

    iget-object v6, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v6}, Ljl/g;->g()[B

    move-result-object v6

    invoke-static {v6, v10, v5, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v3, [S

    invoke-static {v4, v5, v3, v11}, Ljl/q;->x([S[BII)V

    new-array v5, v10, [B

    iget-object v6, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v6}, Ljl/g;->g()[B

    move-result-object v6

    invoke-static {v6, v15, v5, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v3, [S

    invoke-static {v6, v5, v3, v11}, Ljl/q;->j([S[BII)V

    const/4 v8, 0x1

    new-array v5, v8, [B

    const/4 v7, 0x5

    aput-byte v7, v5, v15

    invoke-static {v5, v9}, Ljl/q;->p([B[B)[B

    move-result-object v5

    array-length v7, v5

    const/16 v20, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-static {v5, v15, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v5

    new-array v7, v3, [I

    invoke-static {v7, v5}, Ljl/q;->h([I[B)V

    new-array v5, v3, [B

    invoke-static {v5, v7, v3, v12}, Ljl/q;->N([B[III)V

    new-array v7, v3, [S

    invoke-static {v7, v6, v5, v3, v11}, Ljl/q;->I([S[S[BII)V

    new-array v6, v3, [S

    invoke-static {v6, v7}, Ljl/q;->K([S[S)V

    new-array v7, v13, [B

    invoke-static {v7, v6, v3, v11}, Ljl/q;->y([B[SII)V

    new-array v6, v3, [S

    invoke-static {v6, v4, v5, v3, v11}, Ljl/q;->I([S[S[BII)V

    const/16 v3, 0x100

    new-array v4, v3, [B

    move-object v5, v6

    move-object v6, v1

    move v7, v11

    move v1, v8

    move/from16 v8, v17

    move-object v3, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Ljl/q;->P([B[S[BIII)V

    const/16 v4, 0x80

    new-array v5, v4, [B

    invoke-static {v5, v14}, Ljl/q;->B([B[B)V

    iget-object v4, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v4}, Ljl/g;->f()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v10

    new-array v4, v4, [B

    invoke-static {v3, v15, v4, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v5}, Ljl/g;->f()[B

    move-result-object v5

    iget-object v6, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v6}, Ljl/g;->f()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v15, v4, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v1, [B

    aput-byte v20, v5, v15

    invoke-static {v5, v4}, Ljl/q;->p([B[B)[B

    move-result-object v4

    const/16 v5, 0x80

    add-int/lit16 v6, v13, 0x80

    array-length v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    new-array v8, v7, [B

    move-object/from16 v9, v19

    invoke-static {v9, v15, v8, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v9, v18

    invoke-static {v9, v15, v8, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v15, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, p1

    invoke-static {v4, v8}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v15

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iget-object v5, v0, Ljl/a;->a:Ljl/g;

    invoke-virtual {v5}, Ljl/g;->h()[B

    move-result-object v5

    invoke-static {v3, v5, v4}, Ljl/q;->R([B[BI)V

    add-int v4, v10, v7

    new-array v4, v4, [B

    invoke-static {v3, v15, v4, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v15, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [B

    aput-byte v1, v3, v15

    invoke-static {v3, v4}, Ljl/q;->p([B[B)[B

    move-result-object v1

    invoke-virtual {v2}, Ljl/f;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-static {v1, v15, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    return-object v1
.end method
