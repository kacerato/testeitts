.class public final Lcom/android/tools/r8/internal/Sc;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sc;->e:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    .line 1
    sget-boolean v1, Lcom/android/tools/r8/internal/Sc;->f:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Sc;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 6
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v8

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/mB;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/mB;-><init>()V

    .line 9
    new-instance v16, Lcom/android/tools/r8/internal/z10;

    invoke-direct/range {v16 .. v16}, Lcom/android/tools/r8/internal/z10;-><init>()V

    .line 10
    new-instance v19, Lcom/android/tools/r8/internal/z10;

    invoke-direct/range {v19 .. v19}, Lcom/android/tools/r8/internal/z10;-><init>()V

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 12
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 13
    iget-object v3, v0, Lcom/android/tools/r8/internal/Sc;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 14
    sget-boolean v5, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 15
    new-instance v5, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 17
    iput-object v4, v5, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 18
    iput-object v8, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 19
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v4

    .line 20
    invoke-virtual {v2, v4, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    goto :goto_1

    .line 21
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/internal/yk0;->l:Z

    .line 22
    new-instance v3, Lcom/android/tools/r8/internal/xk0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/xk0;-><init>()V

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 24
    iput-object v4, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 25
    iget-object v4, v3, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/android/tools/r8/internal/yk0;

    iget-object v5, v3, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 26
    :goto_2
    iget-object v3, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 28
    :cond_4
    invoke-virtual {v2, v4, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    const/4 v7, 0x1

    .line 29
    iput-boolean v7, v2, Lcom/android/tools/r8/internal/W5;->i:Z

    .line 30
    new-instance v6, Lcom/android/tools/r8/internal/fB;

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v11

    .line 32
    sget-boolean v3, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 33
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 34
    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v10, v6

    move-object/from16 v12, p1

    move-object v13, v8

    move-object/from16 v15, v19

    move-object/from16 v17, v1

    move-object/from16 v18, p3

    .line 35
    invoke-direct/range {v10 .. v18}, Lcom/android/tools/r8/internal/fB;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/EW$a;)V

    .line 36
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v10

    .line 37
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v11

    .line 39
    iget-object v2, v0, Lcom/android/tools/r8/internal/Sc;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/tools/r8/graph/H5;

    .line 40
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 41
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :cond_5
    move-object v14, v1

    .line 42
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 43
    sget-boolean v2, Lcom/android/tools/r8/internal/Sc;->f:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_7
    :goto_4
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 46
    iget-object v5, v9, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 47
    sget-object v15, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 p3, v6

    move-object/from16 v6, v19

    move v0, v7

    move-object v7, v8

    move-object/from16 v16, v8

    move-object v8, v15

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;

    move-result-object v4

    .line 49
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 50
    iput-boolean v0, v1, Lcom/android/tools/r8/graph/j1;->t:Z

    .line 51
    invoke-interface {v14}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v10

    move-object v6, v11

    .line 52
    invoke-interface/range {v1 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;

    move-object/from16 v6, p3

    move v7, v0

    move-object/from16 v8, v16

    move-object/from16 v0, p0

    goto :goto_3

    :cond_8
    move-object v1, v6

    .line 53
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {v1, v0, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 56
    sget-boolean v0, Lcom/android/tools/r8/internal/Sc;->f:Z

    if-nez v0, :cond_a

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_5
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 59
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 57
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 58
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final k0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final x0()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
