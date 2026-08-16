.class public final Lcom/android/tools/r8/internal/Jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/L60;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jc;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/D60;ZZI)Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v0, Lcom/android/tools/r8/internal/Jc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->k:Z

    if-eqz v3, :cond_3

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v5

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W9;

    .line 8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v8, v7, Lcom/android/tools/r8/internal/Ma;

    if-eqz v8, :cond_0

    .line 10
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/B60;

    .line 14
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/B60;

    .line 15
    new-instance v11, Lcom/android/tools/r8/internal/UU;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v12

    invoke-direct {v11, v12, v9}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v9, Lcom/android/tools/r8/internal/Ma;

    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-direct {v9, v11, v8}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    .line 17
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    new-instance v2, Lcom/android/tools/r8/graph/G;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 22
    iget v8, v4, Lcom/android/tools/r8/graph/G;->g:I

    .line 23
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v9

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v11

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object v12

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v4, v0, Lcom/android/tools/r8/internal/Jc;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-object v3

    .line 27
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v5

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W9;

    .line 32
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v11, v10, Lcom/android/tools/r8/internal/Ma;

    if-eqz v11, :cond_4

    .line 34
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->q()Lcom/android/tools/r8/internal/Ma;

    move-result-object v9

    .line 35
    new-instance v10, Lcom/android/tools/r8/internal/Ma;

    .line 36
    iget-object v11, v9, Lcom/android/tools/r8/internal/Ma;->c:Lcom/android/tools/r8/internal/ka;

    .line 37
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    .line 38
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v9

    .line 39
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/B60;

    .line 40
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/B60;

    .line 41
    new-instance v13, Lcom/android/tools/r8/internal/UU;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v14

    invoke-direct {v13, v14, v12}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {v10, v11, v9}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    const/4 v9, 0x1

    .line 43
    :cond_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    if-eqz p3, :cond_6

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 45
    new-instance v9, Lcom/android/tools/r8/internal/Ma;

    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v11

    .line 47
    invoke-virtual {v11, v7}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/B60$c$a;

    .line 48
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/B60$c$a;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v8

    .line 50
    iput-boolean v8, v7, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 51
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v7

    .line 52
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/B60;

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60;

    .line 55
    new-instance v8, Lcom/android/tools/r8/internal/UU;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v11

    invoke-direct {v8, v11, v7}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-direct {v9, v10, v2}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v15, v2

    goto :goto_2

    :cond_6
    move-object v15, v6

    .line 61
    :goto_2
    new-instance v2, Lcom/android/tools/r8/graph/G;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 63
    iget v13, v4, Lcom/android/tools/r8/graph/G;->g:I

    .line 64
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v14

    .line 65
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v16

    .line 66
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object v17

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v4, v0, Lcom/android/tools/r8/internal/Jc;->a:Lcom/android/tools/r8/graph/y;

    .line 67
    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-object v3
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method
