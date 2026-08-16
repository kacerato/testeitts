.class public final Lcom/android/tools/r8/ir/optimize/Q;
.super Lcom/android/tools/r8/ir/optimize/S;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/internal/NJ;

.field public final c:Lcom/android/tools/r8/ir/optimize/U;

.field public d:Z

.field public e:Lcom/android/tools/r8/internal/f80;

.field public f:Lcom/android/tools/r8/graph/H2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/NJ;Lcom/android/tools/r8/ir/optimize/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/ir/optimize/S;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/Q;->b:Lcom/android/tools/r8/internal/NJ;

    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/Q;->c:Lcom/android/tools/r8/ir/optimize/U;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/xw0;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/G0;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/G0;->c:Ljava/util/AbstractCollection;

    .line 3
    iget v1, p0, Lcom/android/tools/r8/ir/optimize/G0;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 6
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/ir/optimize/G0;->a:I

    invoke-static {v1}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    :cond_2
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/G0;->b:Ljava/util/AbstractCollection;

    invoke-interface {p0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    invoke-interface {v0, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/JD;)Lcom/android/tools/r8/internal/fB;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 13
    iget-object v5, v0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    move-object/from16 v6, p4

    invoke-virtual {v6, v5, v2}, Lcom/android/tools/r8/internal/JD;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;

    move-result-object v5

    .line 14
    iget-boolean v6, v0, Lcom/android/tools/r8/ir/optimize/Q;->d:Z

    if-eqz v6, :cond_0

    move-object/from16 v6, p3

    .line 15
    invoke-static {v1, v6, v5}, Lcom/android/tools/r8/ir/optimize/I0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/G0;

    move-result-object v6

    .line 16
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v8

    new-instance v9, Lv/N;

    invoke-direct {v9, v0, v5}, Lv/N;-><init>(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/fB;)V

    .line 18
    invoke-static {v6, v7, v8, v9}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/ir/optimize/G0;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 19
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 22
    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/Q;->e:Lcom/android/tools/r8/internal/f80;

    if-eqz v8, :cond_1

    new-instance v8, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    .line 23
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 24
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/QJ;)V

    .line 25
    :cond_1
    iget-object v6, v0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    .line 26
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 27
    iget-object v6, v6, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 29
    iget-object v6, v4, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 30
    instance-of v6, v6, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    .line 31
    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    .line 32
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 33
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 35
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v9, :cond_4

    .line 36
    invoke-static {v1, v5}, Lcom/android/tools/r8/ir/optimize/I0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/G0;

    move-result-object v9

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    new-instance v11, Lv/O;

    invoke-direct {v11, v0}, Lv/O;-><init>(Lcom/android/tools/r8/ir/optimize/Q;)V

    new-instance v12, Lv/P;

    invoke-direct {v12, v0, v1, v5, v2}, Lv/P;-><init>(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;)V

    .line 38
    invoke-static {v9, v10, v11, v12}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/ir/optimize/G0;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_4
    if-eqz v6, :cond_10

    .line 39
    iget-object v6, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    .line 41
    invoke-static {v6, v9, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    .line 42
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->w()V

    .line 43
    new-instance v6, Lcom/android/tools/r8/internal/W5;

    .line 44
    iget-object v9, v5, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 45
    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 46
    iget-object v9, v5, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v9

    .line 47
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v10, v5, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v15, 0x0

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    .line 50
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    .line 51
    :cond_5
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 52
    iget-object v12, v11, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 53
    iget-object v14, v12, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 54
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 55
    iget-object v12, v12, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 56
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v14, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v12, v14, :cond_6

    goto :goto_2

    .line 57
    :cond_6
    iget-object v12, v5, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v12

    .line 58
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v14

    .line 59
    iget-object v7, v5, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 60
    invoke-static {v12, v14, v7, v6}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v12

    .line 62
    sget-object v14, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 63
    iput-object v14, v12, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 64
    new-instance v14, Lcom/android/tools/r8/internal/bY;

    .line 65
    invoke-interface {v5, v13, v15}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 66
    iget-object v8, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v14, v15, v8, v4}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    .line 67
    invoke-interface {v12, v14}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 68
    iget-object v8, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11, v7, v8}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;)V

    .line 69
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_2

    .line 70
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 71
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    .line 72
    invoke-static {v9}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    move-object v8, v15

    goto :goto_3

    .line 73
    :cond_8
    new-instance v3, Lcom/android/tools/r8/internal/f60;

    iget-object v7, v5, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v11

    sget-object v7, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    const/4 v14, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object v8, v15

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 74
    new-instance v7, Lv/Q;

    invoke-direct {v7}, Lv/Q;-><init>()V

    .line 75
    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v7

    .line 76
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;)V

    .line 77
    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v15

    .line 78
    sget-boolean v7, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 79
    sget-object v7, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 80
    iput-object v7, v15, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 81
    new-instance v7, Lcom/android/tools/r8/internal/Or0;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v15, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v3, v5, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v3, v5, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v8, v15

    .line 85
    :goto_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 87
    new-instance v9, Lv/S;

    invoke-direct {v9}, Lv/S;-><init>()V

    .line 88
    new-instance v10, Lcom/android/tools/r8/internal/Y60;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/internal/Y60;-><init>(Lcom/android/tools/r8/internal/V60;)V

    .line 89
    invoke-interface {v7, v10}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 90
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v9, 0x0

    .line 91
    invoke-interface {v7, v5, v9, v8}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 92
    sget-boolean v9, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v9, :cond_b

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 93
    :cond_b
    :goto_5
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 95
    iput-object v2, v7, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 96
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 99
    invoke-interface {v5, v2, v8}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 100
    new-instance v3, Lcom/android/tools/r8/internal/jh;

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    const/4 v10, 0x0

    .line 101
    invoke-direct {v3, v2, v9, v10}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    .line 102
    invoke-interface {v7, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_6

    .line 103
    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 104
    :goto_6
    new-instance v3, Lcom/android/tools/r8/internal/WX;

    sget-object v9, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v3, v9, v2}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v7, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-eqz v15, :cond_d

    .line 105
    invoke-interface {v15}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 106
    new-instance v3, Lcom/android/tools/r8/internal/WX;

    sget-object v7, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v3, v7, v2}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v15, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 108
    :cond_d
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v3

    .line 109
    :cond_e
    :goto_7
    iget-object v6, v3, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 110
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 111
    iget-object v6, v3, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    iput-object v6, v3, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 112
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 113
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 114
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 115
    invoke-interface {v7, v5, v3, v4, v8}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 117
    :cond_f
    new-instance v6, Lcom/android/tools/r8/internal/WX;

    sget-object v10, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v6, v10, v2}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    .line 118
    sget-boolean v10, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 119
    sget-object v10, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 120
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 121
    invoke-interface {v7, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 122
    :cond_10
    iget-object v2, v4, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ$p;->w0:Ljava/util/function/Consumer;

    if-eqz v2, :cond_11

    .line 123
    invoke-interface {v2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 124
    :cond_11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 125
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v2, :cond_13

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_13
    :goto_8
    return-object v5
.end method

.method public final a()Lcom/android/tools/r8/ir/optimize/Q;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/QJ;)V
    .locals 4

    .line 157
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 159
    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 160
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 162
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    .line 167
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    const/4 v3, 0x0

    .line 169
    invoke-interface {v1, p2, v0, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    goto :goto_2

    .line 171
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 172
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 173
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 174
    :cond_6
    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/So0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/So0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 175
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 176
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/W5;)V
    .locals 5

    .line 139
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 142
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v3, :cond_1

    .line 143
    iget-boolean v4, v2, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    .line 146
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v1, v0}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    if-nez v3, :cond_4

    .line 148
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 149
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    .line 150
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 151
    iput-object p3, p2, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    .line 153
    new-instance p3, Lcom/android/tools/r8/internal/mK;

    sget p4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 154
    new-instance p4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p4, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 155
    invoke-direct {p3, p1, v0, p4}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-eqz p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unable to synthesize a null check for the receiver"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;)V
    .locals 3

    .line 127
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p2, p1, v2, v1}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;ILjava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    if-nez v0, :cond_4

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/Q;->b:Lcom/android/tools/r8/internal/NJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 135
    iput-object v0, p2, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 136
    new-instance v0, Lcom/android/tools/r8/internal/sD;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    .line 137
    invoke-interface {p1, v2, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 138
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/Q;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {p2, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 177
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/Q;->g:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected position for inlinee call to receiver"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 179
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    const/4 v3, 0x1

    .line 181
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 182
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method
