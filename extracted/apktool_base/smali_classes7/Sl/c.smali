.class public LSl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:LSl/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LSl/c;->g:LSl/b;

    iget v8, v1, LSl/b;->d:I

    iget v9, v1, LSl/b;->e:I

    iget v10, v1, LSl/b;->f:I

    iget v11, v1, LSl/b;->g:I

    iget v12, v1, LSl/b;->h:I

    iget v13, v1, LSl/b;->i:I

    iget v14, v1, LSl/b;->n:I

    iget-boolean v15, v1, LSl/b;->B:Z

    iget-boolean v1, v1, LSl/b;->A:Z

    const/4 v2, 0x0

    move-object/from16 v16, v2

    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v2, v0, LSl/c;->g:LSl/b;

    iget v3, v2, LSl/b;->C:I

    if-eqz v15, :cond_1

    if-nez v3, :cond_0

    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v10, v1, v2}, LZl/b;->a(IIIZLjava/security/SecureRandom;)LYl/m;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v13

    invoke-static/range {v2 .. v7}, LYl/j;->i(IIIIILjava/security/SecureRandom;)LYl/j;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, LYl/i;->b()LYl/e;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, LYl/e;->E(I)V

    iget-object v4, v3, LYl/e;->a:[I

    aget v5, v4, v17

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v17

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v3, v1, v2}, LZl/b;->a(IIIZLjava/security/SecureRandom;)LYl/m;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-static/range {v2 .. v7}, LYl/j;->i(IIIIILjava/security/SecureRandom;)LYl/j;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, LYl/i;->b()LYl/e;

    move-result-object v3

    invoke-virtual {v3}, LYl/e;->x()LYl/e;

    move-result-object v16

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {v3, v9}, LYl/e;->y(I)LYl/e;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v15, :cond_5

    new-instance v1, LYl/e;

    invoke-direct {v1, v8}, LYl/e;-><init>(I)V

    iget-object v4, v1, LYl/e;->a:[I

    aput v18, v4, v17

    goto :goto_4

    :cond_5
    move-object/from16 v1, v16

    :cond_6
    :goto_4
    add-int/lit8 v4, v14, -0x1

    iget-object v5, v0, LSl/c;->g:LSl/b;

    invoke-virtual {v5}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v8, v14, v4, v5}, LYl/d;->Y(IIILjava/security/SecureRandom;)LYl/d;

    move-result-object v4

    invoke-virtual {v4, v9}, LYl/e;->y(I)LYl/e;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v3, v9}, LYl/d;->e(LYl/e;I)LYl/e;

    move-result-object v5

    invoke-virtual {v5, v9}, LYl/e;->G(I)V

    invoke-virtual {v5, v9}, LYl/e;->o(I)V

    invoke-virtual {v4}, LYl/e;->clear()V

    invoke-virtual {v3}, LYl/e;->clear()V

    new-instance v3, LSl/f;

    iget-object v4, v0, LSl/c;->g:LSl/b;

    invoke-virtual {v4}, LSl/b;->d()LSl/e;

    move-result-object v4

    invoke-direct {v3, v5, v2, v1, v4}, LSl/f;-><init>(LYl/e;LYl/i;LYl/e;LSl/e;)V

    new-instance v1, LSl/g;

    iget-object v2, v0, LSl/c;->g:LSl/b;

    invoke-virtual {v2}, LSl/b;->d()LSl/e;

    move-result-object v2

    invoke-direct {v1, v5, v2}, LSl/g;-><init>(LYl/e;LSl/e;)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v3}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, LSl/b;

    iput-object p1, p0, LSl/c;->g:LSl/b;

    return-void
.end method
