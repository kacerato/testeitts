.class public final Lcom/android/tools/r8/internal/Yc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/JD;

.field public final c:Lcom/android/tools/r8/internal/bd;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/bd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Yc;->d:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yc;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yc;->b:Lcom/android/tools/r8/internal/JD;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Yc;->c:Lcom/android/tools/r8/internal/bd;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/android/tools/r8/internal/Yc;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/Yc;->d:I

    .line 45
    iget-object p1, p0, Lcom/android/tools/r8/internal/Yc;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->j()Lcom/android/tools/r8/internal/nJ$d;

    move-result-object p1

    .line 47
    iget v1, p1, Lcom/android/tools/r8/internal/nJ$d;->a:I

    if-ltz v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$d;->b:Lcom/android/tools/r8/internal/nJ;

    .line 49
    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 50
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_1

    const/16 v1, 0x32

    goto :goto_1

    .line 51
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/nJ$d;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const/16 v1, 0x41

    :goto_1
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H2;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Yc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->A:Lcom/android/tools/r8/internal/W60;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W60;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_1
    const v4, 0x7fffffff

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    move-object/from16 v6, p4

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/H5;

    .line 3
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v7

    .line 4
    invoke-virtual {v7, v4}, Lcom/android/tools/r8/graph/i0;->k(I)I

    move-result v4

    .line 5
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Yc;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 6
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    .line 7
    new-instance v3, Lcom/android/tools/r8/internal/v31;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/v31;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/VJ;

    move-object/from16 v8, p3

    .line 8
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/H5;

    if-nez v9, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v10, v0, Lcom/android/tools/r8/internal/Yc;->b:Lcom/android/tools/r8/internal/JD;

    .line 10
    invoke-virtual {v10, v9, v7}, Lcom/android/tools/r8/internal/JD;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;

    move-result-object v11

    .line 11
    invoke-virtual {v10, v7, v11}, Lcom/android/tools/r8/internal/JD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;)V

    .line 12
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/i0;->k(I)I

    move-result v9

    .line 14
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    move v13, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    .line 15
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v15

    const/16 v4, 0x1c

    if-eq v15, v4, :cond_5

    const/16 v4, 0x1e

    if-eq v15, v4, :cond_5

    const/16 v4, 0x38

    if-eq v15, v4, :cond_4

    const v4, 0x7fffffff

    goto :goto_1

    .line 16
    :cond_4
    iget-object v4, v0, Lcom/android/tools/r8/internal/Yc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 17
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 18
    instance-of v4, v4, Lcom/android/tools/r8/ClassFileConsumer;

    goto/16 :goto_5

    .line 19
    :cond_5
    instance-of v4, v14, Lcom/android/tools/r8/internal/bE;

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 22
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-nez v12, :cond_b

    .line 23
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v12

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v14

    move v15, v2

    .line 25
    :goto_3
    iget-object v2, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_a

    .line 27
    iget-object v2, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 29
    iget-object v5, v0, Lcom/android/tools/r8/internal/Yc;->c:Lcom/android/tools/r8/internal/bd;

    .line 30
    iget-object v5, v5, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 31
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 32
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 33
    :cond_7
    sget-boolean v5, Lcom/android/tools/r8/internal/Yc;->e:Z

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/android/tools/r8/internal/Yc;->c:Lcom/android/tools/r8/internal/bd;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 34
    iget-object v5, v5, Lcom/android/tools/r8/internal/bd;->a:Ljava/util/Set;

    .line 35
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 36
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    move-object v12, v14

    .line 37
    :cond_b
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 38
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 39
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 40
    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_d

    :goto_5
    add-int/lit8 v13, v13, 0x1

    :cond_c
    :goto_6
    const/4 v2, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    :cond_e
    sub-int/2addr v9, v13

    .line 41
    sget-boolean v2, Lcom/android/tools/r8/internal/Yc;->e:Z

    if-nez v2, :cond_10

    if-ltz v9, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 42
    :cond_10
    :goto_7
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/Yc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    return v2

    :cond_11
    const/4 v2, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v1, :cond_12

    goto :goto_8

    :cond_12
    move v5, v2

    const/4 v2, 0x0

    const v4, 0x7fffffff

    goto/16 :goto_0

    .line 43
    :cond_13
    :goto_8
    sget-boolean v2, Lcom/android/tools/r8/internal/Yc;->e:Z

    if-nez v2, :cond_14

    if-ne v6, v1, :cond_15

    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :goto_9
    return v1
.end method
