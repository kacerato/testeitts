.class public final Lcom/android/tools/r8/internal/I00;
.super Lcom/android/tools/r8/internal/Y9;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/android/tools/r8/internal/iZ;

.field public final e:Lcom/android/tools/r8/internal/EI;

.field public final f:Lcom/android/tools/r8/internal/em;

.field public final g:[[Lcom/android/tools/r8/internal/X9;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/tools/r8/internal/Y9;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/tools/r8/internal/I00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    new-instance v8, Lcom/android/tools/r8/internal/m2;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/tools/r8/internal/m2;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/H2;->f()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lcom/android/tools/r8/internal/T2;

    move-object/from16 v11, p2

    invoke-direct {v10, v1, v11}, Lcom/android/tools/r8/internal/T2;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/nJ$f;->a()Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v9, v0, Lcom/android/tools/r8/internal/I00;->d:Lcom/android/tools/r8/internal/iZ;

    iput-object v9, v0, Lcom/android/tools/r8/internal/I00;->e:Lcom/android/tools/r8/internal/EI;

    iput-object v9, v0, Lcom/android/tools/r8/internal/I00;->f:Lcom/android/tools/r8/internal/em;

    new-instance v2, Lcom/android/tools/r8/internal/dK;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/dK;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/L40;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/L40;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/Qv0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Qv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/I00;->a()[[Lcom/android/tools/r8/internal/X9;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/I00;->g:[[Lcom/android/tools/r8/internal/X9;

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lcom/android/tools/r8/internal/iZ;

    invoke-direct {v10, v1}, Lcom/android/tools/r8/internal/iZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_1

    :cond_5
    new-instance v10, Lcom/android/tools/r8/internal/Ni;

    invoke-direct {v10, v1}, Lcom/android/tools/r8/internal/Ni;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_1

    :cond_6
    move-object v10, v9

    :goto_1
    iput-object v10, v0, Lcom/android/tools/r8/internal/I00;->d:Lcom/android/tools/r8/internal/iZ;

    new-instance v11, Lcom/android/tools/r8/internal/H5;

    invoke-direct {v11, v1}, Lcom/android/tools/r8/internal/H5;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/nm;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/nC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    :goto_2
    move-object v13, v9

    goto :goto_3

    :cond_8
    new-instance v13, Lcom/android/tools/r8/internal/nm;

    invoke-direct {v13, v1, v12}, Lcom/android/tools/r8/internal/nm;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nC;)V

    :goto_3
    if-eqz v13, :cond_9

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CU;->r()Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v12, Lcom/android/tools/r8/internal/om;

    invoke-direct {v12, v1}, Lcom/android/tools/r8/internal/om;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_4

    :cond_a
    move-object v12, v9

    :goto_4
    if-eqz v12, :cond_b

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v13

    if-eqz v13, :cond_c

    new-instance v13, Lcom/android/tools/r8/internal/j5;

    invoke-direct {v13, v1}, Lcom/android/tools/r8/internal/j5;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_5

    :cond_c
    move-object v13, v9

    :goto_5
    if-eqz v13, :cond_d

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    if-eqz v9, :cond_e

    new-instance v9, Lcom/android/tools/r8/internal/jm;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/jm;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    goto :goto_6

    :cond_f
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_10

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/android/tools/r8/internal/mJ;->a:[I

    iget-object v15, v9, Lcom/android/tools/r8/internal/nJ;->R0:Lcom/android/tools/r8/internal/Z30;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v4, :cond_12

    if-ne v14, v5, :cond_11

    iget-object v14, v9, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v14

    if-eqz v14, :cond_12

    sget-object v14, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v9, v14}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v9

    if-nez v9, :cond_12

    new-instance v9, Lcom/android/tools/r8/internal/st0;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/st0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_12
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ;->N0:Z

    if-eqz v9, :cond_13

    new-instance v9, Lcom/android/tools/r8/internal/yu0;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/yu0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v9

    invoke-static {v9}, Lcom/android/tools/r8/c;->b(I)I

    move-result v9

    if-eqz v9, :cond_16

    if-eq v9, v4, :cond_15

    if-ne v9, v5, :cond_14

    new-instance v9, Lcom/android/tools/r8/internal/tc0;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/tc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_9

    :cond_14
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_15
    new-instance v9, Lcom/android/tools/r8/internal/uc0;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/uc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_9

    :cond_16
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_17

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    new-instance v14, Lcom/android/tools/r8/internal/Vp0;

    invoke-direct {v14, v1}, Lcom/android/tools/r8/internal/Vp0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/tools/r8/internal/oR;

    invoke-direct {v15, v1}, Lcom/android/tools/r8/internal/oR;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/android/tools/r8/internal/X9;

    aput-object v8, v3, v2

    aput-object v11, v3, v4

    aput-object v13, v3, v5

    const/4 v8, 0x3

    aput-object v12, v3, v8

    invoke-static {v3}, Lcom/android/tools/r8/internal/Al0;->c([Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v3

    new-array v13, v8, [Lcom/android/tools/r8/internal/X9;

    aput-object v15, v13, v2

    aput-object v14, v13, v4

    aput-object v9, v13, v5

    invoke-static {v13}, Lcom/android/tools/r8/internal/Al0;->c([Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v13

    invoke-static {v13}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/nJ;)I

    move-result v13

    if-ne v13, v8, :cond_18

    const/4 v8, 0x0

    goto :goto_a

    :cond_18
    new-instance v8, Lcom/android/tools/r8/internal/EI;

    invoke-direct {v8, v1, v3, v9, v13}, Lcom/android/tools/r8/internal/EI;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;I)V

    :goto_a
    iput-object v8, v0, Lcom/android/tools/r8/internal/I00;->e:Lcom/android/tools/r8/internal/EI;

    if-eqz v8, :cond_19

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/tools/r8/internal/L40;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/L40;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zm;->a()Z

    move-result v3

    if-eqz v3, :cond_1b

    new-instance v3, Lcom/android/tools/r8/internal/em;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/tools/r8/internal/X9;

    aput-object v8, v9, v2

    aput-object v12, v9, v4

    aput-object v11, v9, v5

    invoke-static {v9}, Lcom/android/tools/r8/internal/Al0;->c([Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    if-eqz v8, :cond_1a

    iget-object v4, v8, Lcom/android/tools/r8/internal/EI;->g:Ljava/util/Set;

    goto :goto_c

    :cond_1a
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v4, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    :goto_c
    invoke-direct {v3, v1, v2, v4}, Lcom/android/tools/r8/internal/em;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QC;Ljava/util/Set;)V

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    :goto_d
    iput-object v3, v0, Lcom/android/tools/r8/internal/I00;->f:Lcom/android/tools/r8/internal/em;

    if-eqz v3, :cond_1c

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    new-instance v2, Lcom/android/tools/r8/internal/zh;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/zh;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/dK;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/dK;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v2, :cond_1e

    if-eqz v10, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1e
    :goto_e
    new-instance v2, Lcom/android/tools/r8/internal/jK;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/jK;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Lcom/android/tools/r8/internal/T7;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/T7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v2, v11, Lcom/android/tools/r8/internal/H5;->c:Lcom/android/tools/r8/internal/z5;

    iget-object v3, v2, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v2, v2, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_f

    :cond_21
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    if-eqz v10, :cond_22

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v9, Lcom/android/tools/r8/internal/Pw0;

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/Pw0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_10

    :cond_23
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_24

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v2, Lcom/android/tools/r8/internal/Qv0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Qv0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/I00;->a()[[Lcom/android/tools/r8/internal/X9;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/I00;->g:[[Lcom/android/tools/r8/internal/X9;

    return-void
.end method

.method public static a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/EI;)Lcom/android/tools/r8/internal/DI;
    .locals 2

    .line 142
    new-instance v0, Lcom/android/tools/r8/internal/DI;

    .line 143
    iget-object v1, p2, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 144
    iget p2, p2, Lcom/android/tools/r8/internal/EI;->e:I

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/tools/r8/internal/DI;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/JI;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/X9;)V
    .locals 0

    .line 30
    invoke-interface {p2, p0, p1}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/internal/X9;)V
    .locals 0

    .line 26
    invoke-interface {p3, p1, p2, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/H00;Lcom/android/tools/r8/internal/W9;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->y()I

    move-result p1

    .line 95
    iget v0, p0, Lcom/android/tools/r8/internal/H00;->a:I

    add-int/2addr v0, p1

    .line 96
    iput v0, p0, Lcom/android/tools/r8/internal/H00;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;Lcom/android/tools/r8/internal/X9;)V
    .locals 3

    .line 132
    invoke-interface {p3, p1, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v0

    .line 133
    sget-boolean v1, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/android/tools/r8/internal/EI;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/android/tools/r8/internal/jK;

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/android/tools/r8/internal/iZ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/st0;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/android/tools/r8/internal/EI;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desugaring of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in method "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has multiple matches: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/H5;Ljava/util/Iterator;Lcom/android/tools/r8/internal/X9;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/tools/r8/internal/oI0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/internal/oI0;-><init>(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;)V

    invoke-interface {p2, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 97
    invoke-interface {p0}, Lcom/android/tools/r8/internal/X9;->a()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/X9;)V
    .locals 0

    .line 14
    invoke-interface {p2, p0, p1}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/internal/X9;)V
    .locals 0

    .line 13
    invoke-interface {p3, p1, p2, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 15
    invoke-interface {p0}, Lcom/android/tools/r8/internal/X9;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 9
    invoke-interface {p0}, Lcom/android/tools/r8/internal/X9;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;)Lcom/android/tools/r8/internal/DI;
    .locals 1

    .line 137
    new-instance v0, Lcom/android/tools/r8/internal/fI0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/fI0;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/I00;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/DI;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->e:Lcom/android/tools/r8/internal/EI;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/Collection;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p7

    .line 98
    iget-object v0, v10, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 100
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/tools/r8/internal/X9;

    .line 102
    invoke-interface {v15, v12, v11}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    iget-object v1, v10, Lcom/android/tools/r8/internal/I00;->a:Lcom/android/tools/r8/graph/y;

    .line 103
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p0

    .line 104
    invoke-virtual/range {v0 .. v9}, Lcom/android/tools/r8/internal/am;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/I00;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    sget-boolean v1, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v1, :cond_2

    invoke-static {v11, v12, v13, v15}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/H5;Ljava/util/Iterator;Lcom/android/tools/r8/internal/X9;)V

    goto :goto_0

    :cond_1
    move-object v0, v14

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    .line 106
    :cond_3
    iget-object v0, v10, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 108
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/tools/r8/internal/X9;

    .line 110
    invoke-interface {v15, v12, v11}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    iget-object v1, v10, Lcom/android/tools/r8/internal/I00;->a:Lcom/android/tools/r8/graph/y;

    .line 111
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p0

    .line 112
    invoke-virtual/range {v0 .. v9}, Lcom/android/tools/r8/internal/am;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/I00;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 113
    sget-boolean v1, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v1, :cond_5

    invoke-static {v11, v12, v13, v15}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/H5;Ljava/util/Iterator;Lcom/android/tools/r8/internal/X9;)V

    :cond_5
    return-object v0

    :cond_6
    return-object v14
.end method

.method public final a(ZLcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/H00;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/W9;)Ljava/util/Collection;
    .locals 14

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p10

    .line 69
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v13, p12

    .line 70
    instance-of v2, v13, Lcom/android/tools/r8/internal/Ma;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual/range {p12 .. p12}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move-object/from16 v2, p2

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/tools/r8/internal/B60;

    .line 73
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/lI0;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/lI0;-><init>(Lcom/android/tools/r8/internal/IH;)V

    .line 74
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/mI0;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/mI0;-><init>(Lcom/android/tools/r8/internal/IH;)V

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 75
    invoke-virtual/range {v2 .. v10}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual/range {p10 .. p10}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v3

    .line 77
    iget v4, v0, Lcom/android/tools/r8/internal/IH;->a:I

    .line 78
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/IH;->d(I)V

    .line 79
    invoke-virtual/range {p9 .. p9}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    if-le v4, v0, :cond_2

    move-object/from16 v0, p9

    .line 80
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/IH;->d(I)V

    .line 81
    :cond_2
    iget v0, v12, Lcom/android/tools/r8/graph/G;->g:I

    .line 82
    iget v3, v1, Lcom/android/tools/r8/internal/IH;->a:I

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IH;->d(I)V

    .line 84
    invoke-virtual/range {p11 .. p11}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    if-le v3, v0, :cond_3

    move-object/from16 v0, p11

    .line 85
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/IH;->d(I)V

    .line 86
    :cond_3
    invoke-virtual/range {p12 .. p12}, Lcom/android/tools/r8/internal/W9;->y()I

    move-result v0

    neg-int v0, v0

    .line 87
    iget v1, v11, Lcom/android/tools/r8/internal/H00;->a:I

    add-int/2addr v1, v0

    .line 88
    iput v1, v11, Lcom/android/tools/r8/internal/H00;->a:I

    .line 89
    new-instance v0, Lcom/android/tools/r8/internal/nI0;

    invoke-direct {v0, v11}, Lcom/android/tools/r8/internal/nI0;-><init>(Lcom/android/tools/r8/internal/H00;)V

    invoke-interface {v2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v2

    .line 90
    :cond_4
    sget-boolean v3, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    invoke-virtual/range {p10 .. p10}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v4

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_0
    if-nez v3, :cond_8

    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    .line 92
    iget v1, v12, Lcom/android/tools/r8/graph/G;->g:I

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 93
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_1
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    const/4 v2, 0x2

    .line 127
    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/X9;

    .line 129
    sget-boolean v2, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v2, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected instruction to be desugared, but matched by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I00;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/jI0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/jI0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/kI0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/kI0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)V
    .locals 18

    .line 31
    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/I00;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 33
    new-instance v14, Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v1

    invoke-direct {v14, v1}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 34
    new-instance v5, Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v1

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 35
    new-instance v15, Lcom/android/tools/r8/internal/IH;

    .line 36
    iget v1, v0, Lcom/android/tools/r8/graph/G;->g:I

    .line 37
    invoke-direct {v15, v1}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 38
    new-instance v6, Lcom/android/tools/r8/internal/IH;

    .line 39
    iget v1, v0, Lcom/android/tools/r8/graph/G;->g:I

    .line 40
    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 41
    new-instance v7, Lcom/android/tools/r8/internal/H00;

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W9;

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W9;->y()I

    move-result v8

    .line 44
    sget-boolean v9, Lcom/android/tools/r8/graph/G;->n:Z

    if-nez v9, :cond_1

    if-gtz v8, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W9;->A()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_1
    add-int/2addr v3, v8

    goto :goto_0

    .line 45
    :cond_2
    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/H00;-><init>(I)V

    .line 46
    new-instance v4, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/C7;-><init>()V

    move-object/from16 v13, p0

    .line 47
    iget-object v1, v13, Lcom/android/tools/r8/internal/I00;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->H0()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 54
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v1

    .line 56
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 57
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v12

    new-instance v11, Lcom/android/tools/r8/internal/dI0;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v16, v11

    move-object v11, v14

    move-object/from16 v17, v14

    move-object v14, v12

    move-object v12, v0

    move-object v13, v15

    invoke-direct/range {v1 .. v13}, Lcom/android/tools/r8/internal/dI0;-><init>(Lcom/android/tools/r8/internal/I00;ZLcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/H00;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/IH;)V

    move-object/from16 v1, v16

    .line 58
    invoke-static {v14, v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 59
    sget-boolean v2, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v2, :cond_7

    .line 60
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v2

    .line 61
    iget v3, v0, Lcom/android/tools/r8/graph/G;->g:I

    if-lt v2, v3, :cond_6

    goto :goto_3

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/G;->a(Ljava/util/List;)V

    .line 64
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v1

    .line 65
    iput v1, v0, Lcom/android/tools/r8/graph/G;->f:I

    .line 66
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v1

    .line 67
    iput v1, v0, Lcom/android/tools/r8/graph/G;->g:I

    return-void

    .line 68
    :cond_8
    sget-boolean v0, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/I00;->c(Lcom/android/tools/r8/graph/H5;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/X9;I)V
    .locals 2

    .line 17
    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {p1, p3, v0}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 23
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/I00;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/pI0;

    invoke-direct {v1, p3, p1, p2}, Lcom/android/tools/r8/internal/pI0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/qI0;

    invoke-direct {v1, p3, p1, p2}, Lcom/android/tools/r8/internal/qI0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->f:Lcom/android/tools/r8/internal/em;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 7

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 118
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    .line 120
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->E()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v3

    .line 121
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/I00;->g:[[Lcom/android/tools/r8/internal/X9;

    aget-object v3, v4, v3

    .line 122
    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 123
    invoke-interface {v6, p1, v2}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    :cond_5
    sget-boolean v3, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)V

    goto :goto_0

    :cond_6
    return v1

    .line 125
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Unexpected attempt to determine if non-CF code needs desugaring"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[[Lcom/android/tools/r8/internal/X9;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    .line 2
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/I00;->c:Ljava/util/ArrayList;

    const/4 v3, 0x2

    .line 4
    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/X9;

    .line 6
    new-instance v5, Lcom/android/tools/r8/internal/rI0;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/tools/r8/internal/rI0;-><init>(Lcom/android/tools/r8/internal/I00;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/X9;)V

    invoke-interface {v3, v5}, Lcom/android/tools/r8/internal/X9;->a(Ljava/util/function/IntConsumer;)V

    .line 7
    new-instance v5, Lcom/android/tools/r8/internal/eI0;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/tools/r8/internal/eI0;-><init>(Lcom/android/tools/r8/internal/I00;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/X9;)V

    invoke-interface {v3, v5}, Lcom/android/tools/r8/internal/X9;->b(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xd4

    .line 8
    new-array v3, v2, [[Lcom/android/tools/r8/internal/X9;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 10
    new-instance v5, Lcom/android/tools/r8/internal/WG;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 12
    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 13
    :goto_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/RG;

    .line 14
    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v7, Lcom/android/tools/r8/internal/X9;->a:[Lcom/android/tools/r8/internal/X9;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/X9;

    aput-object v0, v3, v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v2, :cond_3

    .line 15
    aget-object v0, v3, v4

    if-nez v0, :cond_2

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/X9;->a:[Lcom/android/tools/r8/internal/X9;

    aput-object v0, v3, v4

    :cond_2
    add-int/2addr v4, v1

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/I00;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 11
    invoke-static {p1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p1

    const-string v3, "Unsupported attempt to desugar non-CF code"

    invoke-direct {v1, v3, v2, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/X9;I)V
    .locals 2

    .line 1
    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1, p3, v0}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/gI0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/gI0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected code to be desugared"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/internal/hI0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/hI0;-><init>()V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/X9;

    .line 5
    invoke-interface {v4, p1, v2}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    .line 6
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/I00;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/internal/iI0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/iI0;-><init>()V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/X9;

    .line 7
    sget-boolean v5, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v5, :cond_7

    invoke-interface {v4, p1, v2}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_9
    sget-boolean p1, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez p1, :cond_b

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    return-void
.end method
