.class public final Lcom/android/tools/r8/internal/Qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Cs0;
.implements Lcom/android/tools/r8/internal/BZ;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/hC;

.field public static final f:Lcom/android/tools/r8/internal/hC;

.field public static final g:Lcom/android/tools/r8/internal/hC;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/o40;

.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/tools/r8/internal/O9;

    const-class v1, Lcom/android/tools/r8/internal/z9;

    const-class v2, Lcom/android/tools/r8/internal/M9;

    const-class v3, Lcom/android/tools/r8/internal/wb;

    invoke-static {v0, v1, v2, v1, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Qc;->e:Lcom/android/tools/r8/internal/hC;

    const-class v0, Lcom/android/tools/r8/internal/ra;

    invoke-static {v1, v0, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Qc;->f:Lcom/android/tools/r8/internal/hC;

    const-class v0, Lcom/android/tools/r8/internal/pa;

    const-class v2, Lcom/android/tools/r8/internal/Z8;

    invoke-static {v0, v1, v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Qc;->g:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qc;->b:Lcom/android/tools/r8/internal/o40;

    const-string v0, "ENABLED"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qc;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->f1:Lcom/android/tools/r8/internal/A4;

    iget-object p1, p1, Lcom/android/tools/r8/internal/A4;->c:Ljava/util/AbstractCollection;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/qT0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qT0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qc;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 16

    move-object/from16 v0, p0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    move v4, v3

    .line 10
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xb3

    const/16 v7, 0xb6

    const/4 v8, 0x1

    if-ge v4, v5, :cond_13

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W9;

    .line 12
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v10

    if-ne v10, v7, :cond_11

    .line 15
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v9, v10, :cond_11

    add-int/lit8 v9, v4, 0x1

    .line 16
    sget-object v10, Lcom/android/tools/r8/internal/Qc;->e:Lcom/android/tools/r8/internal/hC;

    move v13, v3

    move v12, v9

    const/4 v14, 0x0

    .line 17
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_9

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W9;

    .line 19
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v15, v14, Lcom/android/tools/r8/internal/ka;

    if-nez v15, :cond_8

    .line 21
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v15

    if-nez v15, :cond_8

    .line 22
    instance-of v15, v14, Lcom/android/tools/r8/internal/Ma;

    if-eqz v15, :cond_1

    goto/16 :goto_4

    .line 23
    :cond_1
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v15, v11, :cond_7

    .line 24
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Lcom/android/tools/r8/internal/Qc;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v11, v7, :cond_5

    move v7, v12

    .line 25
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    sub-int v11, v7, v12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v3, v11, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    sub-int/2addr v7, v12

    .line 28
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ne v7, v3, :cond_5

    .line 29
    sget-object v3, Lcom/android/tools/r8/internal/Qc;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v12, v3

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v12, v3, :cond_4

    goto :goto_5

    .line 31
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    move-object v14, v3

    .line 32
    :cond_5
    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v3, v14, Lcom/android/tools/r8/internal/ka;

    if-nez v3, :cond_8

    .line 34
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v3

    if-nez v3, :cond_8

    .line 35
    instance-of v3, v14, Lcom/android/tools/r8/internal/Ma;

    if-eqz v3, :cond_6

    goto :goto_4

    .line 36
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v3, v7, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v13, v13, 0x1

    :cond_8
    :goto_4
    add-int/2addr v12, v8

    const/4 v3, 0x0

    const/16 v7, 0xb6

    goto/16 :goto_1

    .line 37
    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ne v13, v3, :cond_a

    .line 38
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v3

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_10

    .line 39
    sget-object v3, Lcom/android/tools/r8/internal/Qc;->f:Lcom/android/tools/r8/internal/hC;

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 40
    :goto_7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_e

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W9;

    .line 42
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v11, v10, Lcom/android/tools/r8/internal/yb;

    if-nez v11, :cond_d

    .line 44
    instance-of v11, v10, Lcom/android/tools/r8/internal/pa;

    if-eqz v11, :cond_b

    goto :goto_8

    .line 45
    :cond_b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eq v11, v12, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v7, v7, 0x1

    :cond_d
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 46
    :cond_e
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v7, v3, :cond_f

    .line 47
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v11

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    :cond_10
    move-object v11, v3

    :goto_a
    if-eqz v11, :cond_11

    .line 48
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v2

    if-ne v2, v6, :cond_13

    .line 49
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->K0:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v3, :cond_13

    goto/16 :goto_d

    .line 50
    :cond_11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 51
    :cond_13
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/f;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_17

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v2

    .line 54
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_17

    add-int/lit8 v3, v8, -0x1

    .line 55
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v5

    const/16 v7, 0xb6

    if-ne v5, v7, :cond_15

    .line 59
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v5, :cond_15

    .line 60
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 61
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v5

    if-ne v5, v6, :cond_15

    .line 63
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Qc;->c:Lcom/android/tools/r8/graph/L2;

    if-ne v4, v5, :cond_15

    .line 64
    :goto_d
    iget-object v2, v0, Lcom/android/tools/r8/internal/Qc;->b:Lcom/android/tools/r8/internal/o40;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    .line 66
    iget v2, v1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit16 v2, v2, 0x80

    .line 67
    iput v2, v1, Lcom/android/tools/r8/internal/WY;->u:I

    return-void

    :cond_14
    const/16 v7, 0xb6

    .line 68
    :cond_15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_17
    :goto_e
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->K0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qc;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object p2, p2, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    iget-object p2, p2, Lcom/android/tools/r8/kotlin/f;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Qc;->d:Ljava/util/List;

    new-instance p2, Lcom/android/tools/r8/internal/rT0;

    invoke-direct {p2, p4, p3}, Lcom/android/tools/r8/internal/rT0;-><init>(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/H5;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
