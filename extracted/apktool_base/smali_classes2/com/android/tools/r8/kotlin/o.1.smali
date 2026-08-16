.class public final Lcom/android/tools/r8/kotlin/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/p;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/NQ$a;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/hC;

.field public final e:Lcom/android/tools/r8/kotlin/C;

.field public final f:Lcom/android/tools/r8/internal/hC;

.field public final g:Lcom/android/tools/r8/internal/hC;

.field public final h:Lcom/android/tools/r8/internal/hC;

.field public final i:Lcom/android/tools/r8/internal/hC;

.field public final j:Ljava/util/List;

.field public final k:Lcom/android/tools/r8/kotlin/s0;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/android/tools/r8/kotlin/P;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/android/tools/r8/kotlin/p0;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/util/List;

.field public final r:Lcom/android/tools/r8/kotlin/X;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/NQ$a;ZLjava/lang/String;Lcom/android/tools/r8/kotlin/C;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Ljava/util/List;Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;Lcom/android/tools/r8/kotlin/P;Ljava/lang/String;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/X;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->a:Lcom/android/tools/r8/internal/NQ$a;

    move v1, p2

    iput-boolean v1, v0, Lcom/android/tools/r8/kotlin/o;->b:Z

    move-object v1, p3

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->e:Lcom/android/tools/r8/kotlin/C;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->f:Lcom/android/tools/r8/internal/hC;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->d:Lcom/android/tools/r8/internal/hC;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->g:Lcom/android/tools/r8/internal/hC;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->h:Lcom/android/tools/r8/internal/hC;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->i:Lcom/android/tools/r8/internal/hC;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->j:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->k:Lcom/android/tools/r8/kotlin/s0;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->l:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->m:Lcom/android/tools/r8/kotlin/P;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->o:Lcom/android/tools/r8/kotlin/p0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->r:Lcom/android/tools/r8/kotlin/X;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->p:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/tools/r8/kotlin/o;->q:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;
    .locals 5

    .line 90
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 94
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3, p2, v2}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    .line 97
    array-length v4, v0

    if-ge v4, v3, :cond_0

    .line 98
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 99
    :cond_0
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$a;Ljava/lang/String;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/o;
    .locals 31

    move-object/from16 v0, p2

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v9, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/NQ$a;->c()Lcom/android/tools/r8/internal/aQ;

    move-result-object v10

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    sget-object v5, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 10
    new-instance v5, Lcom/android/tools/r8/internal/CL;

    iget-object v6, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/android/tools/r8/internal/CL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-static {v5}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/OL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_1
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v11, 0x4

    .line 16
    new-array v1, v11, [Ljava/lang/Object;

    .line 17
    new-instance v15, Lcom/android/tools/r8/kotlin/X;

    move-object/from16 v4, p3

    invoke-direct {v15, v4}, Lcom/android/tools/r8/kotlin/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 18
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v13, v1

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/eQ;

    .line 19
    new-instance v5, Lcom/android/tools/r8/kotlin/z;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eQ;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v8, v9}, Lcom/android/tools/r8/kotlin/t0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    .line 21
    invoke-static {v1}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lcom/android/tools/r8/kotlin/z;-><init>(Lcom/android/tools/r8/internal/eQ;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/N;)V

    .line 22
    invoke-static {v1}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v14, 0x1

    .line 26
    array-length v6, v13

    if-ge v6, v1, :cond_3

    .line 27
    array-length v6, v13

    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v13, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    .line 28
    :cond_3
    aput-object v5, v13, v14

    move v14, v1

    goto :goto_2

    :cond_4
    move-object v1, v10

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v6, p4

    move-object v7, v15

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/kotlin/C;->a(Lcom/android/tools/r8/internal/hQ;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;Lcom/android/tools/r8/kotlin/X;)Lcom/android/tools/r8/kotlin/C;

    move-result-object v16

    .line 30
    invoke-static {v10}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/android/tools/r8/internal/xL;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 32
    invoke-static {v1, v8, v1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 33
    :goto_3
    iget-object v2, v10, Lcom/android/tools/r8/internal/aQ;->b:Ljava/lang/String;

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v3

    .line 35
    sget-object v4, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 38
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 39
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 41
    :cond_8
    :goto_4
    invoke-static {v3, v5}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 42
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v1, :cond_a

    iget-object v2, v10, Lcom/android/tools/r8/internal/aQ;->b:Ljava/lang/String;

    .line 43
    iget-object v3, v1, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v3, :cond_9

    .line 44
    iget-object v3, v1, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    goto :goto_6

    .line 45
    :cond_9
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3, v5}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    .line 48
    :cond_b
    :goto_7
    new-instance v2, Lcom/android/tools/r8/kotlin/o;

    .line 49
    invoke-static {v10}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v3

    .line 50
    iget-object v3, v3, Lcom/android/tools/r8/internal/xL;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->k()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v8, v9}, Lcom/android/tools/r8/kotlin/q0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v17

    .line 52
    invoke-static {v14, v13}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v18

    .line 53
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->j()Ljava/util/List;

    move-result-object v4

    .line 54
    new-array v6, v11, [Ljava/lang/Object;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/yQ;

    .line 56
    invoke-static {v8, v9, v13}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v13

    .line 57
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v14, v7, 0x1

    .line 58
    array-length v12, v6

    if-ge v12, v14, :cond_c

    .line 59
    array-length v12, v6

    invoke-static {v12, v14}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v12

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 60
    :cond_c
    aput-object v13, v6, v7

    move v7, v14

    goto :goto_8

    .line 61
    :cond_d
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v19

    .line 62
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->i()Ljava/util/List;

    move-result-object v4

    .line 63
    new-array v6, v11, [Ljava/lang/Object;

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v12, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v11, 0x2e

    const/16 v13, 0x24

    .line 65
    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 66
    invoke-static {v11, v8, v7}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v7

    .line 67
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v12, 0x1

    .line 68
    array-length v13, v6

    if-ge v13, v11, :cond_e

    .line 69
    array-length v13, v6

    invoke-static {v13, v11}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v13

    invoke-static {v6, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 70
    :cond_e
    aput-object v7, v6, v12

    move v12, v11

    goto :goto_9

    .line 71
    :cond_f
    invoke-static {v12, v6}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v20

    .line 72
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->h()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4, v8}, Lcom/android/tools/r8/kotlin/o;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;

    move-result-object v21

    .line 73
    invoke-static {v10, v0}, Lcom/android/tools/r8/kotlin/o;->a(Lcom/android/tools/r8/internal/aQ;Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v22

    .line 74
    invoke-static {v10}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v4

    .line 75
    iget-object v4, v4, Lcom/android/tools/r8/internal/xL;->a:Ljava/util/ArrayList;

    .line 76
    invoke-static {v4, v8, v9}, Lcom/android/tools/r8/kotlin/P;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/P;

    move-result-object v25

    .line 77
    iget-object v4, v10, Lcom/android/tools/r8/internal/aQ;->m:Ljava/lang/String;

    .line 78
    iget-object v6, v10, Lcom/android/tools/r8/internal/aQ;->n:Lcom/android/tools/r8/internal/yQ;

    .line 79
    invoke-static {v8, v9, v6}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v27

    .line 80
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_a

    .line 81
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/g1;

    .line 82
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/l1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 83
    new-instance v0, Lcom/android/tools/r8/kotlin/y;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/kotlin/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/kotlin/G;)V

    goto :goto_a

    .line 84
    :cond_12
    invoke-static {v0, v6}, Lcom/android/tools/r8/kotlin/T;->a(Lcom/android/tools/r8/graph/H2;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/T;

    move-result-object v0

    .line 85
    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 86
    :goto_a
    iget-object v0, v10, Lcom/android/tools/r8/internal/aQ;->o:Ljava/util/ArrayList;

    .line 87
    new-instance v7, Lcom/android/tools/r8/kotlin/t4;

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/kotlin/t4;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 88
    invoke-static {v0, v7}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v30

    move-object v12, v2

    move-object/from16 v13, p0

    move v14, v5

    move-object v0, v15

    move-object v15, v3

    move-object/from16 v23, v1

    move-object/from16 v24, p1

    move-object/from16 v26, v4

    move-object/from16 v28, v0

    move-object/from16 v29, v6

    invoke-direct/range {v12 .. v30}, Lcom/android/tools/r8/kotlin/o;-><init>(Lcom/android/tools/r8/internal/NQ$a;ZLjava/lang/String;Lcom/android/tools/r8/kotlin/C;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Ljava/util/List;Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;Lcom/android/tools/r8/kotlin/P;Ljava/lang/String;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/X;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;
    .locals 0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/aQ;Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aQ;->f()Ljava/util/List;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 103
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/kotlin/j4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/j4;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/p0;)Ljava/util/function/Consumer;
    .locals 1

    .line 278
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b1;-><init>(Lcom/android/tools/r8/kotlin/p0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/q0;)Ljava/util/function/Consumer;
    .locals 1

    .line 277
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/X0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/X0;-><init>(Lcom/android/tools/r8/kotlin/q0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/s0;)Ljava/util/function/Consumer;
    .locals 1

    .line 279
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/i1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/i1;-><init>(Lcom/android/tools/r8/kotlin/s0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/z;)Ljava/util/function/Consumer;
    .locals 1

    .line 266
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/u4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/u4;-><init>(Lcom/android/tools/r8/kotlin/z;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/aQ;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object p0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/xL;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    new-instance p0, Lcom/android/tools/r8/kotlin/F;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/kotlin/F;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/kotlin/G;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 264
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/kotlin/p0;)Ljava/util/function/Consumer;
    .locals 1

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b1;-><init>(Lcom/android/tools/r8/kotlin/p0;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/kotlin/s0;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/i1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/i1;-><init>(Lcom/android/tools/r8/kotlin/s0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o50;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 109
    iget-object v1, v0, Lcom/android/tools/r8/kotlin/o;->a:Lcom/android/tools/r8/internal/NQ$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/NQ$a;->c()Lcom/android/tools/r8/internal/aQ;

    move-result-object v10

    .line 110
    new-instance v11, Lcom/android/tools/r8/internal/aQ;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/aQ;-><init>()V

    .line 111
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 112
    const-string v2, "<this>"

    invoke-static {v10, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/android/tools/r8/internal/i5;->b:Lcom/android/tools/r8/internal/Y6;

    const/4 v12, 0x0

    aget-object v3, v1, v12

    invoke-virtual {v2, v10, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v3

    .line 114
    aget-object v4, v1, v12

    invoke-virtual {v2, v11, v4, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 115
    sget-object v2, Lcom/android/tools/r8/internal/i5;->j:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x8

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ax0;

    .line 116
    const-string v5, "<set-?>"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 118
    sget-object v2, Lcom/android/tools/r8/internal/i5;->i:Lcom/android/tools/r8/internal/pu;

    const/4 v3, 0x7

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/HX;

    .line 119
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 121
    sget-object v2, Lcom/android/tools/r8/internal/i5;->k:Lcom/android/tools/r8/internal/pu;

    const/16 v3, 0x9

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/hd;

    .line 122
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 124
    sget-object v2, Lcom/android/tools/r8/internal/i5;->l:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xa

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 125
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 126
    sget-object v2, Lcom/android/tools/r8/internal/i5;->m:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xb

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 127
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 128
    sget-object v2, Lcom/android/tools/r8/internal/i5;->n:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xc

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 129
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 130
    sget-object v2, Lcom/android/tools/r8/internal/i5;->o:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xd

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 131
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 132
    sget-object v2, Lcom/android/tools/r8/internal/i5;->p:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xe

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 133
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 134
    sget-object v2, Lcom/android/tools/r8/internal/i5;->q:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0xf

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 135
    aget-object v3, v1, v3

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 136
    sget-object v2, Lcom/android/tools/r8/internal/i5;->r:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x10

    aget-object v4, v1, v3

    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 137
    aget-object v1, v1, v3

    invoke-virtual {v2, v11, v1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 138
    sget-object v1, Lcom/android/tools/r8/internal/wL;->d:Lcom/android/tools/r8/internal/Y6;

    sget-object v2, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    invoke-virtual {v1, v10, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 139
    aget-object v3, v2, v3

    invoke-virtual {v1, v11, v3, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 140
    sget-object v1, Lcom/android/tools/r8/internal/wL;->c:Lcom/android/tools/r8/internal/Y6;

    const/4 v13, 0x1

    aget-object v3, v2, v13

    invoke-virtual {v1, v10, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v3

    .line 141
    aget-object v2, v2, v13

    invoke-virtual {v1, v11, v2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 142
    iget-object v1, v8, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v13

    .line 145
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/aQ;->g()Ljava/lang/String;

    move-result-object v3

    .line 146
    iget-boolean v4, v0, Lcom/android/tools/r8/kotlin/o;->b:Z

    const/4 v14, 0x0

    if-nez v4, :cond_0

    .line 147
    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object v3, v11, Lcom/android/tools/r8/internal/aQ;->b:Ljava/lang/String;

    goto/16 :goto_4

    .line 149
    :cond_0
    iget-object v4, v0, Lcom/android/tools/r8/kotlin/o;->k:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v4, :cond_2

    .line 150
    iget-object v6, v4, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v6, :cond_1

    .line 151
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v4, v13}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 154
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    new-instance v4, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 156
    iget-object v6, v0, Lcom/android/tools/r8/kotlin/o;->k:Lcom/android/tools/r8/kotlin/s0;

    new-instance v7, Lcom/android/tools/r8/kotlin/f1;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/kotlin/f1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {v6, v7, v9, v14}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    .line 157
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v14

    :goto_1
    if-nez v4, :cond_6

    .line 159
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 162
    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 163
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 164
    :cond_4
    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 165
    :cond_5
    :goto_2
    invoke-static {v2, v13}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_6
    :goto_3
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object v4, v11, Lcom/android/tools/r8/internal/aQ;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v13

    or-int/2addr v1, v2

    .line 169
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v12

    move v4, v3

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    .line 170
    iget-object v6, v5, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    .line 171
    invoke-interface {v6}, Lcom/android/tools/r8/kotlin/Q;->e()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 172
    invoke-interface {v6}, Lcom/android/tools/r8/kotlin/Q;->f()Lcom/android/tools/r8/kotlin/y;

    move-result-object v3

    .line 173
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    iput-object v5, v11, Lcom/android/tools/r8/internal/aQ;->i:Ljava/lang/String;

    .line 177
    iget-object v3, v3, Lcom/android/tools/r8/kotlin/y;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    or-int/2addr v1, v3

    move v3, v13

    goto :goto_5

    .line 178
    :cond_8
    invoke-interface {v6}, Lcom/android/tools/r8/kotlin/Q;->i()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 179
    invoke-interface {v6}, Lcom/android/tools/r8/kotlin/Q;->q()Lcom/android/tools/r8/kotlin/F;

    move-result-object v6

    .line 180
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v7

    .line 181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/aQ;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v7, v6, Lcom/android/tools/r8/kotlin/F;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v13

    or-int/2addr v1, v5

    .line 186
    iget-object v5, v0, Lcom/android/tools/r8/kotlin/o;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/o;->j:Ljava/util/List;

    .line 187
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    iget-object v6, v6, Lcom/android/tools/r8/kotlin/F;->a:Ljava/lang/String;

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    move v1, v13

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_b
    if-nez v3, :cond_c

    .line 190
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->p:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v1, v13

    .line 191
    :cond_c
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_d

    move v1, v13

    .line 192
    :cond_d
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/z;

    .line 193
    invoke-virtual {v3, v11, v14, v9}, Lcom/android/tools/r8/kotlin/z;->a(Lcom/android/tools/r8/internal/aQ;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_6

    .line 194
    :cond_e
    new-instance v15, Lcom/android/tools/r8/kotlin/X;

    invoke-direct {v15, v9}, Lcom/android/tools/r8/kotlin/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v16, v1

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 196
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 197
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/Q;->p()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 198
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 199
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/Q;->h()Lcom/android/tools/r8/kotlin/z;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v11, v1, v9}, Lcom/android/tools/r8/kotlin/z;->a(Lcom/android/tools/r8/internal/aQ;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    or-int v16, v16, v3

    .line 201
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    goto :goto_7

    .line 202
    :cond_10
    iget-object v1, v0, Lcom/android/tools/r8/kotlin/o;->e:Lcom/android/tools/r8/kotlin/C;

    .line 203
    iget-object v2, v11, Lcom/android/tools/r8/internal/aQ;->e:Ljava/util/ArrayList;

    .line 204
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/kotlin/S3;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/kotlin/S3;-><init>(Ljava/util/List;)V

    .line 205
    iget-object v2, v11, Lcom/android/tools/r8/internal/aQ;->f:Ljava/util/ArrayList;

    .line 206
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/kotlin/T3;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/kotlin/T3;-><init>(Ljava/util/List;)V

    .line 207
    iget-object v2, v11, Lcom/android/tools/r8/internal/aQ;->g:Ljava/util/ArrayList;

    .line 208
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/kotlin/U3;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/kotlin/U3;-><init>(Ljava/util/List;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v15

    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/kotlin/C;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/kotlin/X;)Z

    move-result v1

    or-int v1, v16, v1

    .line 210
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->f:Lcom/android/tools/r8/internal/hC;

    .line 211
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/aQ;->k()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/kotlin/e1;

    invoke-direct {v4}, Lcom/android/tools/r8/kotlin/e1;-><init>()V

    .line 212
    invoke-static {v9, v2, v3, v4}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 213
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/aQ;->j()Ljava/util/List;

    move-result-object v2

    .line 214
    iget-object v3, v0, Lcom/android/tools/r8/kotlin/o;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/kotlin/p0;

    .line 215
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    .line 216
    iget-object v6, v9, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    .line 217
    iget-object v7, v4, Lcom/android/tools/r8/kotlin/p0;->b:Lcom/android/tools/r8/kotlin/x;

    .line 218
    invoke-virtual {v7, v5, v6}, Lcom/android/tools/r8/kotlin/x;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-eq v6, v5, :cond_11

    .line 220
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/kotlin/k4;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/kotlin/k4;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5, v9}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_8

    :cond_11
    move v1, v13

    goto :goto_8

    .line 221
    :cond_12
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/aQ;->h()Ljava/util/List;

    move-result-object v2

    .line 222
    iget-object v3, v0, Lcom/android/tools/r8/kotlin/o;->i:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/kotlin/s0;

    .line 223
    new-instance v5, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 224
    new-instance v6, Lcom/android/tools/r8/kotlin/f1;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/kotlin/f1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {v4, v6, v9, v14}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result v6

    .line 225
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v6, :cond_13

    .line 226
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x24

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v13

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 229
    :cond_13
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    .line 230
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    or-int/2addr v1, v6

    goto :goto_9

    .line 231
    :cond_15
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/aQ;->i()Ljava/util/List;

    move-result-object v2

    .line 232
    iget-object v3, v0, Lcom/android/tools/r8/kotlin/o;->h:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/kotlin/s0;

    .line 233
    new-instance v5, Lcom/android/tools/r8/kotlin/l4;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/kotlin/l4;-><init>(Ljava/util/List;)V

    .line 234
    invoke-virtual {v4, v5, v9, v14}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_b

    .line 235
    :cond_16
    iget-object v2, v11, Lcom/android/tools/r8/internal/aQ;->p:Ljava/util/ArrayList;

    iget-object v3, v10, Lcom/android/tools/r8/internal/aQ;->p:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->n:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, v0, Lcom/android/tools/r8/kotlin/o;->o:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v3, :cond_17

    .line 238
    iput-object v2, v11, Lcom/android/tools/r8/internal/aQ;->m:Ljava/lang/String;

    .line 239
    new-instance v2, Lcom/android/tools/r8/kotlin/m4;

    invoke-direct {v2, v11}, Lcom/android/tools/r8/kotlin/m4;-><init>(Lcom/android/tools/r8/internal/aQ;)V

    .line 240
    invoke-virtual {v3, v2, v9}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 241
    :cond_17
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->q:Ljava/util/List;

    .line 242
    iget-object v3, v11, Lcom/android/tools/r8/internal/aQ;->o:Ljava/util/ArrayList;

    .line 243
    new-instance v4, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v4}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 244
    invoke-static {v9, v2, v3, v4}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 245
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->c:Ljava/lang/String;

    .line 246
    invoke-static {v11}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v3

    .line 247
    iput-object v2, v3, Lcom/android/tools/r8/internal/xL;->b:Ljava/lang/String;

    .line 248
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->k:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v2, :cond_18

    .line 249
    new-instance v3, Lcom/android/tools/r8/kotlin/v4;

    invoke-direct {v3, v11}, Lcom/android/tools/r8/kotlin/v4;-><init>(Lcom/android/tools/r8/internal/aQ;)V

    .line 250
    invoke-virtual {v2, v3, v9, v14}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 251
    :cond_18
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->m:Lcom/android/tools/r8/kotlin/P;

    .line 252
    invoke-static {v11}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v3

    .line 253
    iget-object v3, v3, Lcom/android/tools/r8/internal/xL;->a:Ljava/util/ArrayList;

    .line 254
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/kotlin/T3;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/kotlin/T3;-><init>(Ljava/util/List;)V

    .line 255
    invoke-virtual {v2, v4, v9}, Lcom/android/tools/r8/kotlin/P;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 256
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->a:Lcom/android/tools/r8/internal/NQ$a;

    .line 257
    iput-object v11, v2, Lcom/android/tools/r8/internal/NQ$a;->b:Lcom/android/tools/r8/internal/aQ;

    .line 258
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/NQ$a;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v3

    if-gez v3, :cond_19

    .line 259
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/NQ$a;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 260
    :cond_19
    iget-object v2, v0, Lcom/android/tools/r8/kotlin/o;->a:Lcom/android/tools/r8/internal/NQ$a;

    .line 261
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/NQ$a;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object v2

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/tools/r8/kotlin/o;->r:Lcom/android/tools/r8/kotlin/X;

    .line 262
    invoke-virtual {v1, v15, v9}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    move v12, v13

    :cond_1b
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 263
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->d:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/n4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/n4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->e:Lcom/android/tools/r8/kotlin/C;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/C;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 269
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->f:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/o4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/o4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->g:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/p4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/p4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->h:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/q4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/q4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->i:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/r4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/r4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->q:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/kotlin/s4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/s4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->m:Lcom/android/tools/r8/kotlin/P;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/P;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 275
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->k:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/ML;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/o;->a:Lcom/android/tools/r8/internal/NQ$a;

    iget-object v0, v0, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method
