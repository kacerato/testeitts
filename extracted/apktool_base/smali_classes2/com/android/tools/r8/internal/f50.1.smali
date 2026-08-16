.class public final Lcom/android/tools/r8/internal/f50;
.super Lcom/android/tools/r8/internal/S40;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/N40;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/android/tools/r8/graph/y;

.field public final e:Lcom/android/tools/r8/graph/u1;

.field public final f:Lcom/android/tools/r8/ir/optimize/X;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/S40;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/X;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/ir/optimize/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->f:Lcom/android/tools/r8/ir/optimize/X;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Df;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->P:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V
    .locals 11

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget p0, p0, Lcom/android/tools/r8/internal/nJ$l;->b:I

    .line 85
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 86
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v2, 0x4

    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    new-instance v3, Lcom/android/tools/r8/internal/jS;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;)V

    const/4 v4, 0x0

    move-object v7, v1

    move v5, v4

    move v6, v5

    .line 91
    :goto_1
    iget-object v8, v3, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 92
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jS;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 93
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    if-eq v9, v1, :cond_3

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v5, 0x1

    .line 97
    array-length v10, v2

    if-ge v10, v9, :cond_4

    .line 98
    array-length v10, v2

    invoke-static {v10, v9}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 99
    :cond_4
    aput-object v8, v2, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x64

    if-le v6, v5, :cond_5

    .line 100
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-eq v5, v7, :cond_5

    move v5, v9

    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    move v5, v9

    goto :goto_1

    .line 102
    :cond_6
    :goto_3
    iget-object v3, v3, Lcom/android/tools/r8/internal/jS;->d:Ljava/util/Set;

    .line 103
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_9

    .line 104
    sget-boolean v3, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v3, :cond_8

    if-eq v7, v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 105
    :cond_8
    :goto_4
    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-lt v6, p0, :cond_0

    .line 106
    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 107
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/shaking/x1;)V
    .locals 2

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 56
    new-instance v1, Lcom/android/tools/r8/internal/AW0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AW0;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    sget-object v0, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/W40;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 156
    new-instance p2, Lcom/android/tools/r8/internal/X40;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/X40;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/Q40;)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v0, p0

    .line 109
    iget-object v1, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget-boolean v4, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 113
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v5, v0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget v8, v8, Lcom/android/tools/r8/internal/nJ$l;->d:I

    if-lt v7, v8, :cond_2

    .line 116
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W40;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_3
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/W40;

    .line 119
    iget-object v9, v0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 120
    sget-boolean v10, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v10, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 121
    :cond_5
    :goto_3
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/H5;

    const/4 v11, 0x1

    .line 122
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 123
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/H5;

    .line 124
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v13, v14}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v13

    if-gez v13, :cond_6

    move-object v10, v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 125
    :cond_7
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    new-instance v12, Lcom/android/tools/r8/internal/J91;

    invoke-direct {v12, v1, v10}, Lcom/android/tools/r8/internal/J91;-><init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;)V

    .line 126
    invoke-interface {v2, v11, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Df;

    .line 127
    iget-object v12, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 128
    iget-object v12, v12, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 129
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v12

    .line 130
    new-instance v13, Lcom/android/tools/r8/internal/O91;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/O91;-><init>()V

    .line 131
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v11

    iget-object v14, v0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    new-instance v15, Lcom/android/tools/r8/internal/P91;

    invoke-direct {v15, v0, v8, v10}, Lcom/android/tools/r8/internal/P91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;Lcom/android/tools/r8/graph/H5;)V

    .line 132
    invoke-virtual {v12, v13, v11, v14, v15}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    .line 133
    sget-boolean v11, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v11

    const/16 v12, 0xff

    if-gt v11, v12, :cond_9

    :cond_8
    move-object/from16 v11, p1

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 134
    :goto_5
    invoke-interface {v11, v9, v10}, Lcom/android/tools/r8/internal/Q40;->a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V

    .line 135
    iget-object v9, v0, Lcom/android/tools/r8/internal/f50;->c:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    return-object v3
.end method

.method public final a()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N40;->a(Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/N40;->d:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/List;)V
    .locals 0

    .line 108
    new-instance p2, Lcom/android/tools/r8/internal/c50;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/c50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/e50;->a()V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 82
    new-instance p2, Lcom/android/tools/r8/internal/a50;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/android/tools/r8/internal/a50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/e50;->a()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/N40;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/N40;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 139
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 140
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 141
    iget-object v0, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 143
    iget-object v1, p1, Lcom/android/tools/r8/internal/W40;->g:Lcom/android/tools/r8/internal/f50;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    .line 144
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    .line 145
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 146
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 147
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 148
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 149
    new-instance v0, Lcom/android/tools/r8/internal/K91;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/K91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/W40;)V

    .line 150
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 151
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 152
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 153
    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object p1

    .line 155
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 13

    .line 157
    sget-boolean v0, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    instance-of v1, v1, Lcom/android/tools/r8/internal/X40;

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 161
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    .line 162
    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/L91;

    invoke-direct {v2, p0, p1, v8, v9}, Lcom/android/tools/r8/internal/L91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 163
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_3

    .line 164
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 165
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v10

    .line 166
    :goto_2
    iget-object v0, v10, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 167
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, v10, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iput-object v5, v10, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 169
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    .line 170
    new-instance v12, Lcom/android/tools/r8/internal/M91;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v4, v9

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/M91;-><init>(Lcom/android/tools/r8/internal/f50;Ljava/util/Set;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;)V

    invoke-interface {v11, v12}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 172
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v0, :cond_7

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 173
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    if-nez v0, :cond_9

    .line 174
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 73
    sget-boolean v1, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    instance-of v1, v1, Lcom/android/tools/r8/internal/X40;

    if-nez v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return-void

    .line 77
    :cond_3
    const-string v1, "Collect outlines"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/N91;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/android/tools/r8/internal/N91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/List;)V

    invoke-static {v2, p1, v3}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 80
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    iget-object v2, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/N40;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    .line 81
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 7

    .line 175
    new-instance v6, Lcom/android/tools/r8/internal/b50;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/b50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/fB;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/e50;->a()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/fB;)V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    .line 48
    const-string v1, "IR before outlining (SSA)"

    invoke-static {p2, v1, v0, p1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/f50;->b(Lcom/android/tools/r8/internal/fB;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 62
    sget-boolean v1, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 63
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    instance-of p3, p3, Lcom/android/tools/r8/internal/X40;

    if-nez p3, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_3
    :goto_1
    new-instance p3, Lcom/android/tools/r8/internal/dY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-direct {p3, v1}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 67
    iget-object p1, p1, Lcom/android/tools/r8/internal/kB;->x:Lcom/android/tools/r8/ir/optimize/F;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 68
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 69
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 12
    :cond_0
    const-string v0, "Outlining"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/kB;->b(Ljava/lang/String;)V

    .line 13
    const-string v0, "IR conversion phase 3"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N40;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/HashMap;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->e0:Lcom/android/tools/r8/internal/nJ$l;

    iget v5, v5, Lcom/android/tools/r8/internal/nJ$l;->d:I

    if-lt v4, v5, :cond_1

    .line 19
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Vn;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/internal/f50;->a:Lcom/android/tools/r8/internal/N40;

    .line 21
    iget-object v0, v2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 24
    sget-object v1, Lcom/android/tools/r8/internal/P40;->a:Lcom/android/tools/r8/internal/P40;

    .line 25
    invoke-static {v0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v3, v0, Lcom/android/tools/r8/internal/b10;

    if-eqz v3, :cond_3

    goto :goto_1

    .line 28
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/W70;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/W70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    .line 30
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Q91;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Q91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/kB;)V

    invoke-virtual {p0, p1, v2, v0, p3}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/m80;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/Q40;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/f50;->a(Ljava/util/ArrayList;)V

    .line 33
    sget-object v3, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 34
    iget-object v4, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-static {v4}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v4

    .line 36
    invoke-virtual {p1, v0, v3, v4, p3}, Lcom/android/tools/r8/internal/kB;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/EW$a;Ljava/util/concurrent/ExecutorService;)V

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 38
    new-instance v3, Lcom/android/tools/r8/internal/R91;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/internal/R91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/kB;)V

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/m80;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 40
    sget-boolean p1, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez p1, :cond_6

    .line 41
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W40;

    .line 42
    sget-boolean p3, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p3, p0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 43
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/S91;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/S91;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/Q40;->a(Lcom/android/tools/r8/graph/y;)V

    .line 45
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/m80;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->h1:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/W91;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/internal/W91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/kB;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 60
    invoke-static {p2, v0, p1, p4}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->L:Z

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/U91;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/U91;-><init>(Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    .line 176
    invoke-interface {p1, p7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EE;->s()V

    return-void

    .line 178
    :cond_0
    invoke-interface {p3, p7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/T91;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/T91;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 182
    invoke-interface {p2, p5, p6, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)V
    .locals 3

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/f50;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of v2, v2, Lcom/android/tools/r8/internal/X40;

    if-nez v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/V91;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/internal/V91;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/fB;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    .line 4
    const-string v1, "IR after outlining (SSA)"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/kB;->l:Lcom/android/tools/r8/internal/ZV;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/dY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 9
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method
