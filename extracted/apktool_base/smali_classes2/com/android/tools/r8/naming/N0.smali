.class public final Lcom/android/tools/r8/naming/N0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/vc0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/vc0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/vc0;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/naming/N0;->e:Lcom/android/tools/r8/internal/vc0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RecordInvokeDynamicInvokeCustomRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/naming/N0;->e:Lcom/android/tools/r8/internal/vc0;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->x1()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x20

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b0()Lcom/android/tools/r8/internal/OJ;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, v4, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-static {v7, v6, v5}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move v9, v2

    move-object v5, v4

    goto/16 :goto_7

    :cond_0
    iget-object v6, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v8, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez v8, :cond_2

    iget-object v8, v4, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-static {v8, v6, v5}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_1
    iget-object v5, v4, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/wc0;

    move-result-object v5

    iget-object v6, v5, Lcom/android/tools/r8/internal/wc0;->c:Lcom/android/tools/r8/graph/L2;

    iget-object v8, v5, Lcom/android/tools/r8/internal/wc0;->d:[Lcom/android/tools/r8/graph/l1;

    invoke-static {v6, v8}, Lcom/android/tools/r8/internal/qc0;->a(Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/qc0;

    move-result-object v6

    iget-object v8, v5, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/naming/N0;->e:Lcom/android/tools/r8/internal/vc0;

    iget-object v9, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v5, Lcom/android/tools/r8/internal/wc0;->d:[Lcom/android/tools/r8/graph/l1;

    array-length v11, v10

    move v12, v2

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    iget-object v14, v5, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v15

    invoke-virtual {v9, v15, v13}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v15

    iget-object v14, v14, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v14, v14, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v14, v15}, Lcom/android/tools/r8/graph/s3;->b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v10, v9, [Lcom/android/tools/r8/graph/l1;

    move v11, v2

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/l1;

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    iget-object v8, v5, Lcom/android/tools/r8/internal/wc0;->a:Lcom/android/tools/r8/graph/L2;

    iget-object v11, v5, Lcom/android/tools/r8/internal/wc0;->b:Lcom/android/tools/r8/graph/I2;

    iget-object v5, v5, Lcom/android/tools/r8/internal/wc0;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    sget-object v13, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    iget-object v14, v12, Lcom/android/tools/r8/graph/u1;->n6:Lcom/android/tools/r8/graph/i2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/i2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v12, v13, v14, v2, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {v15, v5}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/tools/r8/graph/R2$k;

    invoke-direct {v15, v6}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v2

    :goto_4
    if-ge v6, v9, :cond_6

    aget-object v15, v10, v6

    iget-object v2, v15, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v15, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v12, v5, v2, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    new-instance v15, Lcom/android/tools/r8/graph/X2;

    move-object/from16 v16, v5

    sget-object v5, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-virtual {v12, v5, v2, v9, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/tools/r8/graph/X2;-><init>(Lcom/android/tools/r8/graph/C2;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v2, v9

    move-object/from16 v5, v16

    move/from16 v9, v17

    goto :goto_4

    :cond_6
    move v9, v2

    new-instance v2, Lcom/android/tools/r8/graph/D0;

    invoke-direct {v2, v8, v11, v13, v14}, Lcom/android/tools/r8/graph/D0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/List;)V

    iget-object v5, v2, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    sget-boolean v6, Lcom/android/tools/r8/naming/N0;->f:Z

    if-nez v6, :cond_8

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v12, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    :goto_5
    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    :goto_6
    new-instance v5, Lcom/android/tools/r8/internal/OJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    iget-object v8, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-direct {v5, v2, v6, v8}, Lcom/android/tools/r8/internal/OJ;-><init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    :goto_7
    if-eq v5, v4, :cond_b

    invoke-interface {v1, v5, v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    const/4 v3, 0x1

    :cond_b
    :goto_8
    move v2, v9

    goto/16 :goto_0

    :cond_c
    move v9, v2

    goto :goto_8

    :cond_d
    if-eqz v3, :cond_e

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_e
    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method
