.class public final Lcom/android/tools/r8/internal/jE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jE;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jE;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)Lcom/android/tools/r8/internal/hE;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/tools/r8/internal/hE;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/hE;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/hE;
    .locals 0

    .line 116
    new-instance p3, Lcom/android/tools/r8/internal/hE;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/hE;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V

    return-object p3
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd0;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/wA;)Lcom/android/tools/r8/internal/jE;
    .locals 10

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    sget-boolean p1, Lcom/android/tools/r8/internal/jE;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 128
    invoke-static {p2}, Lcom/android/tools/r8/internal/jE;->a(Lcom/android/tools/r8/internal/AA;)V

    .line 129
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/jE;

    .line 130
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/jE;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p0

    .line 132
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 134
    new-instance v8, Lcom/android/tools/r8/internal/xS;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/xS;-><init>()V

    .line 135
    new-instance v9, Lcom/android/tools/r8/internal/rf1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, p1

    move-object v5, p3

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/rf1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;)V

    invoke-interface {p2, v9}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    new-instance v1, Lcom/android/tools/r8/internal/sf1;

    invoke-direct {v1, p2, v8, v0}, Lcom/android/tools/r8/internal/sf1;-><init>(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/m80;Ljava/util/Map;)V

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    new-instance v3, Lcom/android/tools/r8/internal/tf1;

    invoke-direct {v3, v2, p0, p1, p3}, Lcom/android/tools/r8/internal/tf1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V

    invoke-interface {v8, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/hE;

    .line 142
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/hE;->a(Lcom/android/tools/r8/internal/AA;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 143
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/uf1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/uf1;-><init>()V

    .line 144
    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 146
    new-instance p0, Lcom/android/tools/r8/internal/jE;

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/internal/jE;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 118
    sget-boolean v0, Lcom/android/tools/r8/internal/jE;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->K1()Lcom/android/tools/r8/internal/sK;

    move-result-object p0

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p0

    .line 120
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H2;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/e8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/e8;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/vf1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/vf1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {p6, v8, v0}, Lcom/android/tools/r8/graph/H2;->e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H5;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 2
    new-instance v3, Lcom/android/tools/r8/internal/dE;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/dE;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)V

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v4

    .line 5
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    .line 6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 7
    new-instance v12, Lcom/android/tools/r8/internal/Yx0;

    const/4 v6, 0x2

    invoke-direct {v12, v6}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 8
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v4

    const/4 v13, 0x0

    if-eqz v4, :cond_17

    .line 10
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 12
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1

    const/16 v8, 0x18

    if-eq v7, v8, :cond_16

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_2

    const/16 v6, 0x38

    if-eq v7, v6, :cond_1

    const/16 v6, 0xf

    if-eq v7, v6, :cond_1

    const/16 v6, 0x10

    if-eq v7, v6, :cond_1

    goto/16 :goto_6

    .line 13
    :cond_2
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v14

    .line 14
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 15
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez v6, :cond_3

    goto/16 :goto_6

    .line 16
    :cond_3
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    sget-object v9, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 20
    sget-object v11, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v7, v15

    move-object v10, v5

    .line 21
    invoke-virtual/range {v6 .. v11}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v6

    .line 22
    iget-object v6, v6, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 23
    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/AA;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 27
    invoke-virtual {v7, v8, v6}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    .line 28
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 29
    iget-object v7, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    iget-object v7, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 32
    invoke-static {v7}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/uK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/uK;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 33
    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/cE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_6

    .line 34
    :cond_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_6
    iget-object v7, v3, Lcom/android/tools/r8/internal/dE;->e:Lcom/android/tools/r8/graph/A2;

    if-nez v7, :cond_18

    .line 36
    iput-object v15, v3, Lcom/android/tools/r8/internal/dE;->e:Lcom/android/tools/r8/graph/A2;

    .line 37
    iput-object v6, v3, Lcom/android/tools/r8/internal/dE;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 38
    :cond_7
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 40
    iget-boolean v7, v7, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez v7, :cond_8

    goto/16 :goto_6

    .line 41
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 44
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 45
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_6

    .line 46
    :cond_9
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v7

    if-nez v7, :cond_a

    goto/16 :goto_6

    .line 47
    :cond_a
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/cE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;

    move-result-object v6

    if-nez v6, :cond_b

    goto/16 :goto_6

    .line 48
    :cond_b
    sget-boolean v8, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v8, :cond_d

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_2

    .line 50
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_2
    if-nez v8, :cond_f

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_3

    .line 52
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    :goto_3
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    .line 55
    iget-object v10, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-ne v9, v10, :cond_10

    goto :goto_5

    :cond_10
    if-nez v8, :cond_12

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_4

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_12
    :goto_4
    iget-object v8, v1, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    .line 58
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/android/tools/r8/internal/m6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/g1;

    .line 59
    new-instance v8, Lcom/android/tools/r8/graph/F5;

    .line 60
    iget-object v9, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 61
    invoke-direct {v8, v7, v9}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    move-object v7, v8

    .line 62
    :goto_5
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/l1;

    .line 63
    iget-object v8, v3, Lcom/android/tools/r8/internal/dE;->e:Lcom/android/tools/r8/graph/A2;

    if-nez v8, :cond_13

    .line 64
    iget-object v8, v3, Lcom/android/tools/r8/internal/dE;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :cond_13
    iget-object v9, v3, Lcom/android/tools/r8/internal/dE;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v8, v9, :cond_15

    .line 66
    invoke-interface {v6}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 67
    invoke-interface {v6}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object v8

    .line 68
    iget v8, v8, Lcom/android/tools/r8/internal/RD;->a:I

    if-eqz v8, :cond_15

    .line 69
    :cond_14
    iget-object v8, v3, Lcom/android/tools/r8/internal/dE;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :cond_15
    iget-object v8, v3, Lcom/android/tools/r8/internal/dE;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :cond_16
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_6

    .line 72
    :cond_17
    iget-object v1, v3, Lcom/android/tools/r8/internal/dE;->e:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_18

    .line 73
    sget-boolean v4, Lcom/android/tools/r8/internal/dE;->g:Z

    .line 74
    new-instance v4, Lcom/android/tools/r8/internal/eE;

    iget-object v15, v3, Lcom/android/tools/r8/internal/dE;->c:Ljava/util/LinkedHashMap;

    iget-object v5, v3, Lcom/android/tools/r8/internal/dE;->d:Ljava/util/LinkedHashMap;

    iget-object v6, v3, Lcom/android/tools/r8/internal/dE;->f:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/tools/r8/internal/dE;->b:Lcom/android/tools/r8/graph/O2;

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/android/tools/r8/internal/eE;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/O2;)V

    goto :goto_7

    :cond_18
    :goto_6
    move-object v4, v13

    :goto_7
    if-eqz v4, :cond_1e

    .line 75
    new-instance v1, Lcom/android/tools/r8/internal/wf1;

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-direct {v1, v0, v3, v5}, Lcom/android/tools/r8/internal/wf1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V

    .line 76
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    move-object/from16 v1, p2

    .line 77
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hE;

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_8
    if-ge v5, v3, :cond_1c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/util/List;

    .line 80
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_a

    :cond_19
    move v7, v4

    .line 81
    :goto_9
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v8

    if-ge v7, v8, :cond_1b

    .line 82
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/iE;->a(ILjava/util/List;)Ljava/util/Set;

    move-result-object v8

    .line 83
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lcom/android/tools/r8/internal/hE;->a:Lcom/android/tools/r8/graph/y;

    .line 84
    invoke-static {v8, v9}, Lcom/android/tools/r8/graph/P2;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 85
    invoke-static {v9, v8}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 86
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_8

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_1b
    :goto_a
    move-object v13, v6

    :cond_1c
    if-nez v13, :cond_1d

    .line 87
    iput v4, v0, Lcom/android/tools/r8/internal/hE;->c:I

    .line 88
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v0, v0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1d
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 91
    :cond_1e
    invoke-virtual/range {p5 .. p6}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/android/tools/r8/internal/xf1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xf1;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/m80;Ljava/util/Map;Lcom/android/tools/r8/internal/eE;Lcom/android/tools/r8/internal/hE;)V
    .locals 2

    .line 93
    invoke-virtual {p4, p0, p3}, Lcom/android/tools/r8/internal/hE;->a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;)Ljava/util/List;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/iE;

    .line 95
    iget-object v0, p4, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object p4, p4, Lcom/android/tools/r8/internal/iE;->e:Ljava/util/List;

    .line 98
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/Vn;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 100
    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 102
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/qf1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/qf1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V

    .line 103
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/hE;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->q0()I

    move-result p1

    .line 106
    iget p2, p0, Lcom/android/tools/r8/internal/hE;->c:I

    add-int/2addr p2, p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/hE;->a:Lcom/android/tools/r8/graph/y;

    .line 107
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 108
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    .line 109
    iget p3, p3, Lcom/android/tools/r8/internal/nJ$p;->E0:I

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x3fff

    .line 110
    :goto_0
    div-int/lit8 p3, p3, 0x2

    if-le p2, p3, :cond_1

    iget p2, p0, Lcom/android/tools/r8/internal/hE;->c:I

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 111
    iput p2, p0, Lcom/android/tools/r8/internal/hE;->c:I

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object p3, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget p2, p0, Lcom/android/tools/r8/internal/hE;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/r8/internal/hE;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/tools/r8/internal/pf1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pf1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jE;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/jE;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v0, p0, Lcom/android/tools/r8/internal/jE;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
