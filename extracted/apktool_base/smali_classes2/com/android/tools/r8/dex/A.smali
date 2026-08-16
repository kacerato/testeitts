.class public final Lcom/android/tools/r8/dex/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u0;

.field public final b:Lcom/android/tools/r8/graph/i3;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/graph/H3$b;

.field public final f:Lcom/android/tools/r8/graph/o5;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/internal/nJ;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/tools/r8/dex/A;->b:Lcom/android/tools/r8/graph/i3;

    iput-object v5, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    iput-object v5, v0, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/dex/A;->e:Lcom/android/tools/r8/graph/H3$b;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v6, v0, Lcom/android/tools/r8/dex/A;->g:Ljava/util/List;

    iput-object v6, v0, Lcom/android/tools/r8/dex/A;->h:Ljava/util/List;

    iput-object v6, v0, Lcom/android/tools/r8/dex/A;->i:Ljava/util/List;

    iput-object v3, v0, Lcom/android/tools/r8/dex/A;->a:Lcom/android/tools/r8/graph/u0;

    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    const/4 v8, 0x0

    :goto_0
    iget-object v12, v3, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v13, v12

    if-ge v8, v13, :cond_21

    aget-object v12, v12, v8

    iget-object v13, v12, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->y5:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v14, :cond_0

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    invoke-static {v12, v6}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    :goto_1
    move-object v13, v5

    goto/16 :goto_14

    :cond_0
    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->z5:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v14, :cond_1

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    invoke-static {v12, v6}, Lcom/android/tools/r8/graph/r0;->b(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    goto :goto_1

    :cond_1
    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->A5:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v14, :cond_b

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    iget-object v13, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    if-nez v13, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v14, v14

    sub-int/2addr v14, v8

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v13, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    :cond_2
    sget-boolean v13, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v13, :cond_4

    iget-object v13, v12, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->A5:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v14, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_2
    iget-object v12, v12, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    new-instance v13, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v13, v5, v5}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v14, v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_9

    aget-object v7, v12, v15

    iget-object v5, v7, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    const-string v3, "name"

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    if-ne v5, v3, :cond_5

    iget-object v3, v7, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v7, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    iput-object v3, v13, Lcom/android/tools/r8/internal/o50;->a:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    sget-boolean v3, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v3, :cond_7

    iget-object v3, v7, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    const-string v5, "accessFlags"

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    if-ne v3, v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_4
    iget-object v3, v7, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v13, Lcom/android/tools/r8/internal/o50;->b:Ljava/lang/Object;

    :cond_8
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p3

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    iget-object v3, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/tools/r8/graph/e4;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/L2;

    const/4 v13, 0x0

    invoke-direct {v5, v7, v1, v13, v12}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_b
    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->B5:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v3, :cond_d

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    invoke-static {v12, v6}, Lcom/android/tools/r8/graph/r0;->c(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v11, :cond_c

    move-object v11, v3

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_c
    if-eqz v3, :cond_a

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_d
    invoke-static {v12, v6}, Lcom/android/tools/r8/graph/r0;->d(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, v4, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-nez v3, :cond_e

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    invoke-static {v12}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/r0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/M2;->x0()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v5, v3, v2, v6, v7}, Lcom/android/tools/r8/graph/H3;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/dex/A;->e:Lcom/android/tools/r8/graph/H3$b;

    goto :goto_6

    :cond_e
    iget-object v3, v12, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->E5:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_10

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    new-instance v3, Lcom/android/tools/r8/graph/o5;

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->E5:Lcom/android/tools/r8/graph/M2;

    invoke-static {v5, v12}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    if-nez v5, :cond_f

    const/4 v13, 0x0

    goto :goto_7

    :cond_f
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/tools/r8/graph/M2;

    :goto_7
    invoke-direct {v3, v13}, Lcom/android/tools/r8/graph/o5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object v3, v0, Lcom/android/tools/r8/dex/A;->f:Lcom/android/tools/r8/graph/o5;

    goto :goto_6

    :cond_10
    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->F5:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_11

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->F5:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v12}, Lcom/android/tools/r8/graph/r0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lcom/android/tools/r8/dex/A;->g:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Lcom/android/tools/r8/graph/M2;

    iget-object v13, v0, Lcom/android/tools/r8/dex/A;->g:Ljava/util/List;

    new-instance v14, Lcom/android/tools/r8/graph/p5;

    invoke-direct {v14, v12}, Lcom/android/tools/r8/graph/p5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->G5:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_12

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->G5:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v12}, Lcom/android/tools/r8/graph/r0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v5, Lu/a;

    invoke-direct {v5}, Lu/a;-><init>()V

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/dex/A;->h:Ljava/util/List;

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_1f

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/dex/A;->a(I)V

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->I5:Lcom/android/tools/r8/graph/L2;

    invoke-static {v3, v12, v5}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v3

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v6, Lcom/android/tools/r8/graph/u1;->J5:Lcom/android/tools/r8/graph/L2;

    invoke-static {v5, v12, v7}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    iget-object v7, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->K5:Lcom/android/tools/r8/graph/L2;

    invoke-static {v7, v12, v13}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v7

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->L5:Lcom/android/tools/r8/graph/L2;

    invoke-static {v13, v12, v14}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v13

    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->H5:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v6, Lcom/android/tools/r8/graph/u1;->M5:Lcom/android/tools/r8/graph/L2;

    invoke-static {v14, v12, v15}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;

    move-result-object v12

    if-eqz v3, :cond_13

    if-eqz v5, :cond_13

    if-eqz v7, :cond_13

    if-eqz v13, :cond_13

    if-nez v12, :cond_15

    :cond_13
    :goto_9
    move-object/from16 v22, v10

    move-object/from16 v21, v11

    :cond_14
    :goto_a
    const/4 v13, 0x0

    goto/16 :goto_11

    :cond_15
    instance-of v14, v3, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v14, :cond_13

    instance-of v14, v5, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v14, :cond_13

    instance-of v14, v7, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v14, :cond_13

    instance-of v14, v13, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v14, :cond_13

    instance-of v14, v12, Lcom/android/tools/r8/graph/R2$b;

    if-nez v14, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v12

    iget-object v14, v3, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v15, v14

    iget-object v4, v5, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v4, v4

    if-ne v15, v4, :cond_13

    array-length v4, v14

    iget-object v15, v7, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v15, v15

    if-ne v4, v15, :cond_13

    array-length v4, v14

    iget-object v15, v13, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v15, v15

    if-ne v4, v15, :cond_13

    array-length v4, v14

    iget-object v14, v12, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v14, v14

    if-eq v4, v14, :cond_17

    goto :goto_9

    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v14, v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_b
    iget-object v15, v3, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    move-object/from16 v16, v3

    array-length v3, v15

    if-ge v14, v3, :cond_1e

    aget-object v3, v15, v14

    iget-object v15, v5, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    aget-object v15, v15, v14

    move-object/from16 v17, v5

    iget-object v5, v7, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    aget-object v5, v5, v14

    move-object/from16 v18, v7

    iget-object v7, v13, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    aget-object v7, v7, v14

    move-object/from16 v19, v13

    iget-object v13, v12, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    aget-object v13, v13, v14

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v20, v12

    instance-of v12, v5, Lcom/android/tools/r8/graph/Z2;

    if-eqz v12, :cond_13

    goto :goto_c

    :cond_18
    move-object/from16 v20, v12

    :goto_c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v7, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v12, :cond_13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v13, Lcom/android/tools/r8/graph/R2$b;

    if-nez v12, :cond_19

    goto/16 :goto_9

    :cond_19
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v12

    iget-object v13, v7, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v13, v13

    move-object/from16 v21, v11

    iget-object v11, v12, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    move-object/from16 v22, v10

    array-length v10, v11

    if-eq v13, v10, :cond_1a

    :goto_d
    goto/16 :goto_a

    :cond_1a
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    array-length v11, v11

    if-lez v11, :cond_1c

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v12, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_e
    iget-object v13, v12, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    move-object/from16 v23, v12

    array-length v12, v13

    if-ge v11, v12, :cond_1c

    iget-object v12, v7, Lcom/android/tools/r8/graph/R2$b;->d:[Lcom/android/tools/r8/graph/R2;

    aget-object v12, v12, v11

    aget-object v13, v13, v11

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2;->J0()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v24

    if-nez v24, :cond_1b

    goto :goto_d

    :cond_1b
    move-object/from16 v24, v7

    new-instance v7, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2;->p0()Lcom/android/tools/r8/graph/R2$d;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/R2$d;->W0()B

    move-result v12

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-direct {v7, v12, v13}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v23

    move-object/from16 v7, v24

    goto :goto_e

    :cond_1c
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    invoke-static {v5}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/e1;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    :goto_f
    const/4 v13, 0x0

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    goto :goto_f

    :goto_10
    invoke-static {v7, v5, v2, v6, v13}, Lcom/android/tools/r8/graph/H3;->b(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v1, v7, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    new-instance v7, Lcom/android/tools/r8/graph/P5;

    invoke-direct {v7, v3, v5, v10}, Lcom/android/tools/r8/graph/P5;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v22

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v13, 0x0

    goto :goto_12

    :goto_11
    move-object v4, v13

    :goto_12
    if-eqz v4, :cond_20

    iput-object v4, v0, Lcom/android/tools/r8/dex/A;->i:Ljava/util/List;

    goto :goto_13

    :cond_1f
    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v13, 0x0

    iget-object v3, v0, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_20

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_13
    move-object/from16 v11, v21

    move-object/from16 v10, v22

    :goto_14
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v13

    goto/16 :goto_0

    :cond_21
    move-object v13, v5

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    if-nez v9, :cond_22

    if-eqz v22, :cond_2b

    :cond_22
    sget-boolean v2, Lcom/android/tools/r8/dex/A;->j:Z

    if-nez v2, :cond_24

    if-eqz v9, :cond_24

    if-nez v22, :cond_23

    goto :goto_15

    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_24
    :goto_15
    if-eqz v22, :cond_25

    new-instance v2, Lcom/android/tools/r8/graph/i3;

    move-object/from16 v5, v22

    invoke-direct {v2, v5}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/A2;)V

    iput-object v2, v0, Lcom/android/tools/r8/dex/A;->b:Lcom/android/tools/r8/graph/i3;

    goto :goto_18

    :cond_25
    iget-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_26
    if-ge v4, v3, :cond_27

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/e4;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-ne v1, v6, :cond_26

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_16

    :cond_27
    move-object v5, v13

    :goto_16
    if-nez v5, :cond_28

    new-instance v2, Lcom/android/tools/r8/graph/i3;

    invoke-direct {v2, v9}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object v2, v0, Lcom/android/tools/r8/dex/A;->b:Lcom/android/tools/r8/graph/i3;

    goto :goto_18

    :cond_28
    sget-boolean v2, Lcom/android/tools/r8/dex/A;->j:Z

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    goto :goto_17

    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2a
    :goto_17
    iget-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/graph/e4;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v4

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-direct {v3, v4, v1, v9, v5}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_18
    if-eqz v21, :cond_2d

    iget-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_2c

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    :cond_2c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_2d

    move-object/from16 v11, v21

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/dex/A;->c:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/tools/r8/graph/e4;

    sget-object v7, Lcom/android/tools/r8/graph/u1;->F6:Lcom/android/tools/r8/graph/L2;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v4, v1, v7}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/dex/A;->a:Lcom/android/tools/r8/graph/u0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/dex/A;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/dex/A;->a:Lcom/android/tools/r8/graph/u0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
