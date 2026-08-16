.class public final Lcom/android/tools/r8/internal/iR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/oR;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/internal/kR;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Lcom/android/tools/r8/internal/hR;

.field public h:Lcom/android/tools/r8/graph/H2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/oR;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/tools/r8/internal/iR;->h:Lcom/android/tools/r8/graph/H2;

    sget-boolean v4, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iput-object v4, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/tools/r8/internal/iR;->b:Lcom/android/tools/r8/internal/oR;

    iput-object v2, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v6, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v6, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v2, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    iget-object v8, v6, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/iR;->c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/internal/iR;->g:Lcom/android/tools/r8/internal/hR;

    if-nez p7, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v5, v5, Lcom/android/tools/r8/internal/nJ$p;->g1:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    const-string v5, "create"

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v6, v4, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    :cond_3
    iput-object v3, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v3, v2, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/List;)Lcom/android/tools/r8/synthesis/m;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/16 v6, 0x1001

    const/4 v7, 0x1

    if-ge v5, v2, :cond_5

    sget-object v8, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    new-instance v8, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/iR;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ$e;->d:Z

    if-eqz v8, :cond_4

    const/16 v6, 0x1011

    invoke-static {v6}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-static {v6}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    :goto_2
    iput-object v6, v7, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    move v3, v7

    :goto_3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    sget-object v6, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    new-instance v6, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    sget v6, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v14, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    new-instance v6, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v8, v9, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    const/16 v15, 0xb7

    invoke-direct {v8, v15, v9, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v8, v8, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    move v9, v4

    move v10, v7

    move v11, v10

    :goto_4
    array-length v12, v8

    if-ge v9, v12, :cond_9

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/iR;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v12

    sget-boolean v13, Lcom/android/tools/r8/internal/jR;->a:Z

    if-nez v13, :cond_8

    iget-object v13, v12, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    aget-object v5, v8, v9

    if-ne v13, v5, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    :goto_5
    iget-object v5, v12, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    new-instance v13, Lcom/android/tools/r8/internal/pa;

    sget-object v15, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v13, v15, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v13, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v13, v5, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v13, Lcom/android/tools/r8/internal/U9;

    invoke-direct {v13, v12}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v5

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0xb7

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v5, Lcom/android/tools/r8/graph/G;

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v9, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v12

    move-object v8, v5

    move-object v13, v14

    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v3, :cond_b

    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    iget-object v5, v0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    const/16 v5, 0x1009

    invoke-static {v5, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/wa;

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v8}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v6

    new-instance v8, Lcom/android/tools/r8/internal/kb;

    sget-object v9, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move v6, v4

    move v8, v6

    move v13, v8

    const/4 v12, 0x2

    :goto_6
    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v9

    if-ge v6, v9, :cond_a

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v9, v9, v6

    invoke-static {v9}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v10, v9, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v10

    add-int/2addr v12, v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    move v13, v8

    goto :goto_6

    :cond_a
    new-instance v6, Lcom/android/tools/r8/internal/ga;

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->e:Lcom/android/tools/r8/graph/A2;

    const/16 v9, 0xb7

    invoke-direct {v6, v9, v8, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v6

    new-instance v8, Lcom/android/tools/r8/internal/ab;

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    invoke-static {v9}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v6, Lcom/android/tools/r8/graph/G;

    iget-object v11, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v14

    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v6

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    iget-object v2, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v5, v5, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v7}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v6, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    move-object/from16 v6, p6

    invoke-static {v0, v2, v6}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/nR;)Lcom/android/tools/r8/graph/G;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v5, v5, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/I2;

    iget-object v8, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v10, v10, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    const/16 v9, 0x1051

    invoke-static {v9, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v6, v10, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    iput-boolean v4, v10, Lcom/android/tools/r8/internal/cy;->e:Z

    invoke-virtual {v10, v2, v4}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object v6

    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v9

    iput-object v9, v6, Lcom/android/tools/r8/internal/cy;->k:Lcom/android/tools/r8/graph/j;

    iput-boolean v7, v6, Lcom/android/tools/r8/internal/cy;->h:Z

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/synthesis/m;->b(Ljava/util/AbstractCollection;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/graph/l1;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;
    .locals 11

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->d(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/fR;

    iget-object v1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->e()Lcom/android/tools/r8/internal/kK;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/fR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 27
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    .line 28
    iget-object v4, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kR;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 29
    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->b()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v10, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    new-instance v1, Lcom/android/tools/r8/internal/aR;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-object v7, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/aR;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;)V

    return-object v1
.end method

.method public final a()Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v2, v1, Lcom/android/tools/r8/graph/C2;->g:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->l1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->b:Lcom/android/tools/r8/internal/oR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/oR;->c:Ljava/util/Set;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/graph/L2;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$r8$lambda$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    if-nez v1, :cond_3

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v4, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 5
    iget-object v3, v3, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->l1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v4, v4, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 9
    iget-object v3, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 11
    iget-object v3, v3, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_7
    :goto_3
    iget-object p1, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p1

    iget-boolean v0, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/eR;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->B3:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v1, v1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-direct {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/eR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Z)V

    return-object p1

    .line 20
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    if-nez v1, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    if-nez v1, :cond_c

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_c
    :goto_5
    new-instance v0, Lcom/android/tools/r8/internal/gR;

    new-instance v1, Lcom/android/tools/r8/graph/H5;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/gR;-><init>(ZLcom/android/tools/r8/graph/H5;)V

    return-object v0

    :cond_d
    if-nez v1, :cond_f

    .line 25
    iget-object p1, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_f
    :goto_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 27
    iget-object p1, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 28
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 29
    array-length v1, v0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    .line 30
    iget-object v4, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 31
    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/dR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v3, v3, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v3, v3, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-object v4, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v5, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v5, p1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/android/tools/r8/internal/dR;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)V

    return-object v0

    .line 36
    :cond_10
    new-instance p1, Lcom/android/tools/r8/internal/cR;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v1, v1, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v4, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/tools/r8/internal/bm;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 40
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/cR;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)V

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->h:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->h:Lcom/android/tools/r8/graph/H2;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;
    .locals 11

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected method handle type in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-string v0, "Method references to super methods are not yet supported"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_1
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v1, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v1, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 19
    sget-boolean v1, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    if-nez v1, :cond_9

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-object v2, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    if-ne v1, v2, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->d(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/fR;

    iget-object v1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->e()Lcom/android/tools/r8/internal/kK;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/fR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-object v0

    .line 28
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 29
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->b()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v10, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    new-instance v1, Lcom/android/tools/r8/internal/aR;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-object v7, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/aR;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;)V

    return-object v1

    .line 40
    :pswitch_4
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-object v1, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne v0, v1, :cond_b

    goto :goto_4

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 44
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_d
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/hR;

    move-result-object p1

    return-object p1

    .line 48
    :cond_e
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_10
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iR;->d(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/fR;

    iget-object v1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->e()Lcom/android/tools/r8/internal/kK;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/fR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-object v0

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->b()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v10, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    new-instance v1, Lcom/android/tools/r8/internal/aR;

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-object v7, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/aR;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v2, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 7
    iget-object v2, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v3, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 10
    iget-object v2, v0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    if-eqz v2, :cond_10

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 12
    :cond_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v2

    .line 13
    iget-object v5, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v6, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v5, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v4

    .line 16
    :goto_1
    iget-object v6, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v7, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    if-ne v6, v7, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v4

    .line 18
    :goto_2
    sget-boolean v7, Lcom/android/tools/r8/internal/kR;->k:Z

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    if-nez v6, :cond_6

    iget-object v5, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez v7, :cond_8

    .line 19
    iget-object v3, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    const/high16 v5, 0x10000

    .line 21
    iget v3, v3, Lcom/android/tools/r8/graph/g;->c:I

    .line 22
    invoke-static {v3, v5}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 23
    iget-object v3, v0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_8
    :goto_4
    iget-object v3, v0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    if-nez v3, :cond_a

    if-nez v2, :cond_9

    if-eqz v6, :cond_f

    .line 27
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_8

    .line 30
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 31
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 32
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez v7, :cond_e

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_e
    :goto_5
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    :cond_f
    :goto_6
    move p1, v1

    goto :goto_8

    :cond_10
    :goto_7
    move p1, v4

    :goto_8
    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    return v4

    :cond_12
    :goto_9
    return v1
.end method
