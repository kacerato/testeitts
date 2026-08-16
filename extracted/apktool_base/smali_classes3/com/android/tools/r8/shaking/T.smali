.class public final Lcom/android/tools/r8/shaking/T;
.super Lcom/android/tools/r8/shaking/S;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/N;

.field public final c:Lcom/android/tools/r8/shaking/N$a;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Lcom/android/tools/r8/shaking/U;

.field public final f:Lcom/android/tools/r8/internal/e80;

.field public final g:Lcom/android/tools/r8/internal/f80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/N$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/S;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/e80;->k()Lcom/android/tools/r8/internal/e80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T;->g:Lcom/android/tools/r8/internal/f80;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/T;->c:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    new-instance p2, Lcom/android/tools/r8/shaking/U;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/U;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/T;->e:Lcom/android/tools/r8/shaking/U;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 97
    iget-object p0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 98
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n3;Ljava/util/Map;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/F5;Ljava/util/Set;)V
    .locals 0

    .line 81
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/l1;

    .line 82
    iget-object p0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 83
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/o3;

    .line 84
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/tools/r8/graph/uc;

    invoke-direct {p4, p2}, Lcom/android/tools/r8/graph/uc;-><init>(Lcom/android/tools/r8/internal/m80;)V

    .line 86
    iget-object p2, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 87
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/d;->a(Ljava/util/function/Consumer;)V

    .line 88
    iget-object p2, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/d;->a(Ljava/util/function/Consumer;)V

    .line 89
    new-instance p2, Lcom/android/tools/r8/shaking/Ta;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/shaking/Ta;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V

    .line 90
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    .line 91
    iget-object p3, p0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/graph/o3;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/d;Ljava/util/Set;)V

    .line 92
    iget-object p3, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/graph/o3;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/d;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 93
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/p1;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 179
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object p0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/tools/r8/shaking/Va;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/Va;-><init>(Lcom/android/tools/r8/shaking/T;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 99
    iget-object v3, v0, Lcom/android/tools/r8/shaking/T;->c:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget-object v3, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v4, Lcom/android/tools/r8/internal/EW;->a:Z

    .line 101
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-static {v3}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    goto :goto_1

    :cond_0
    if-nez v4, :cond_2

    .line 103
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_2
    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/EW$a;

    sget-object v4, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/EW$a;-><init>(Lcom/android/tools/r8/internal/FW;)V

    goto :goto_1

    .line 105
    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v3}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    .line 106
    :goto_1
    iget-object v4, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v4

    .line 107
    new-instance v5, Lcom/android/tools/r8/ir/optimize/q;

    iget-object v6, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/ir/optimize/q;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 108
    iget-object v11, v0, Lcom/android/tools/r8/shaking/T;->e:Lcom/android/tools/r8/shaking/U;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v12

    .line 110
    new-instance v13, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v13}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 111
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v14

    const/4 v15, 0x0

    move v5, v15

    .line 112
    :goto_2
    iget-object v6, v14, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 113
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 114
    iget-object v6, v14, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    iput-object v6, v14, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 115
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v10

    move/from16 v16, v5

    .line 116
    :goto_3
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 117
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 118
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v6

    const/16 v7, 0x1c

    const/16 v17, 0x1

    if-eq v6, v7, :cond_d

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_a

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_6

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/tools/r8/graph/F5;

    if-nez v18, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object v5, v11

    move-object v6, v4

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v9, p1

    move-object/from16 p4, v10

    move-object/from16 v10, v18

    .line 121
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/shaking/U;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/graph/H5;Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V

    move-object/from16 v7, p4

    goto/16 :goto_a

    :cond_6
    move-object/from16 p4, v10

    .line 122
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v18

    .line 123
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/android/tools/r8/graph/F5;

    if-nez v19, :cond_7

    :goto_4
    move-object/from16 v10, p4

    goto/16 :goto_7

    .line 124
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 125
    invoke-interface/range {p4 .. p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 126
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    .line 127
    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 129
    iget-object v5, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    .line 130
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v10

    const-wide/16 v8, 0x0

    move-object/from16 v5, p4

    move-object v6, v4

    invoke-interface/range {v5 .. v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    goto :goto_5

    .line 131
    :cond_8
    iget-object v5, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    .line 132
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-interface/range {v18 .. v18}, Lcom/android/tools/r8/internal/ew;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    const-wide/16 v8, 0x0

    move-object/from16 v5, p4

    move-object v6, v4

    .line 133
    invoke-interface/range {v5 .. v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 134
    :goto_5
    invoke-interface/range {v18 .. v18}, Lcom/android/tools/r8/internal/ew;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6, v5, v13}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 135
    invoke-interface/range {p4 .. p4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_9
    move-object v5, v11

    move-object v6, v4

    move-object/from16 v7, p4

    move-object v8, v12

    move-object/from16 v9, p1

    move-object/from16 v10, v19

    .line 136
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/shaking/U;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/graph/H5;Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V

    goto/16 :goto_a

    :cond_a
    move-object/from16 p4, v10

    .line 137
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/F5;

    if-nez v6, :cond_b

    goto :goto_4

    .line 139
    :cond_b
    invoke-interface {v5}, Lcom/android/tools/r8/internal/WD;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 140
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v6

    if-nez v6, :cond_c

    .line 141
    iget-object v6, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    .line 142
    invoke-interface {v5}, Lcom/android/tools/r8/internal/WD;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    move-object/from16 v10, p4

    .line 143
    invoke-interface {v10, v6, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    :goto_6
    move-object v7, v10

    goto/16 :goto_a

    :cond_c
    move-object/from16 v10, p4

    .line 144
    invoke-interface {v10}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_6

    .line 145
    :cond_d
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v18

    .line 146
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/F5;

    if-nez v5, :cond_e

    :goto_7
    move-object v7, v10

    move/from16 v17, v15

    goto/16 :goto_a

    .line 147
    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 148
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 149
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    .line 150
    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 152
    iget-object v5, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    .line 153
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v19

    const-wide/16 v8, 0x0

    move-object v5, v10

    move-object v6, v4

    move-object/from16 p4, v10

    move-object/from16 v10, v19

    invoke-interface/range {v5 .. v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    goto :goto_8

    :cond_f
    move-object/from16 p4, v10

    .line 154
    iget-object v5, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    .line 155
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-interface/range {v18 .. v18}, Lcom/android/tools/r8/internal/ew;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    const-wide/16 v8, 0x0

    move-object/from16 v5, p4

    move-object v6, v4

    .line 156
    invoke-interface/range {v5 .. v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 157
    :goto_8
    invoke-interface/range {v18 .. v18}, Lcom/android/tools/r8/internal/ew;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6, v5, v13}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 158
    invoke-interface/range {p4 .. p4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_10
    move-object/from16 p4, v10

    .line 159
    :goto_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 160
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v5

    if-nez v5, :cond_11

    .line 161
    iget-object v5, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    .line 162
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    move-object/from16 v7, p4

    .line 163
    invoke-interface {v7, v5, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_a

    :cond_11
    move-object/from16 v7, p4

    .line 164
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->i()V

    :goto_a
    or-int v16, v16, v17

    move-object v10, v7

    goto/16 :goto_3

    :cond_12
    move/from16 v5, v16

    goto/16 :goto_2

    .line 165
    :cond_13
    iget-object v1, v11, Lcom/android/tools/r8/shaking/U;->a:Lcom/android/tools/r8/graph/y;

    .line 166
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v13, v1, v4, v6}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-eqz v5, :cond_14

    .line 167
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 168
    :cond_14
    new-instance v1, Lcom/android/tools/r8/internal/Pr0;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v5}, Lcom/android/tools/r8/internal/Pr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 169
    iget-object v1, v0, Lcom/android/tools/r8/shaking/T;->e:Lcom/android/tools/r8/shaking/U;

    .line 170
    iget-object v1, v1, Lcom/android/tools/r8/shaking/U;->b:Lcom/android/tools/r8/ir/optimize/F;

    .line 171
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 172
    iget-object v1, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v4}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 173
    iget-object v1, v0, Lcom/android/tools/r8/shaking/T;->e:Lcom/android/tools/r8/shaking/U;

    .line 174
    iget-object v1, v1, Lcom/android/tools/r8/shaking/U;->b:Lcom/android/tools/r8/ir/optimize/F;

    .line 175
    iget-object v5, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v5, v1}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)Lcom/android/tools/r8/internal/lB;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v3

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 177
    iget-object v3, v0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 63
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 64
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 66
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    new-instance v4, Lcom/android/tools/r8/shaking/Wa;

    invoke-direct {v4, v0, v2, v1}, Lcom/android/tools/r8/shaking/Wa;-><init>(Lcom/android/tools/r8/graph/n3;Ljava/util/Map;Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 67
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    .line 68
    iget-object v3, v3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 69
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 70
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 71
    new-instance v4, Lcom/android/tools/r8/shaking/Xa;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/tools/r8/shaking/Xa;-><init>(Lcom/android/tools/r8/shaking/T;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v5, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/internal/Kr0$a;->c:Lcom/android/tools/r8/internal/Kr0$a;

    .line 73
    invoke-static {v1, v4, v5, p1, v6}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/zT;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Kr0$a;)V

    .line 74
    new-instance p1, Lcom/android/tools/r8/shaking/Ya;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/shaking/Ya;-><init>(Lcom/android/tools/r8/shaking/T;)V

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 75
    sget-boolean p1, Lcom/android/tools/r8/shaking/T;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 76
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 77
    iget-object p1, p1, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/shaking/Za;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/Za;-><init>(Lcom/android/tools/r8/graph/n3;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->a0:Z

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    .line 5
    sget-object v4, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    const/4 v5, 0x1

    if-eq p4, v4, :cond_3

    sget-object v6, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

    if-ne p4, v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v5

    :goto_1
    if-eq v3, v6, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p3, v3}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 9
    :cond_5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 11
    :cond_6
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p2

    .line 16
    iget-object p2, p2, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p2

    if-nez p2, :cond_7

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 19
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 21
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->c(Lcom/android/tools/r8/graph/F5;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/T;->b(Lcom/android/tools/r8/graph/F5;)V

    return v2

    .line 23
    :cond_9
    iget-object p2, p5, Lcom/android/tools/r8/shaking/K;->a:Lcom/android/tools/r8/shaking/K;

    .line 24
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    if-eqz p5, :cond_d

    if-eq p5, v5, :cond_c

    const/4 v3, 0x2

    if-eq p5, v3, :cond_b

    const/4 v3, 0x3

    if-ne p5, v3, :cond_a

    .line 25
    new-instance p5, Lcom/android/tools/r8/shaking/J0;

    invoke-direct {p5, p1, p3, p2}, Lcom/android/tools/r8/shaking/J0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    goto :goto_2

    .line 26
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 27
    :cond_b
    new-instance p5, Lcom/android/tools/r8/shaking/I0;

    invoke-direct {p5, p1, p3, p2}, Lcom/android/tools/r8/shaking/I0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    goto :goto_2

    .line 28
    :cond_c
    new-instance p5, Lcom/android/tools/r8/shaking/C0;

    invoke-direct {p5, p1, p3, p2}, Lcom/android/tools/r8/shaking/C0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    goto :goto_2

    .line 29
    :cond_d
    new-instance p5, Lcom/android/tools/r8/shaking/B0;

    invoke-direct {p5, p1, p3, p2}, Lcom/android/tools/r8/shaking/B0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    .line 30
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    new-instance p2, Lcom/android/tools/r8/internal/jK0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/jK0;-><init>()V

    .line 31
    invoke-static {p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v3, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 34
    new-instance v6, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v6, v3, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1, p2, v6}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/Set;

    .line 37
    invoke-interface {p1, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq p4, v4, :cond_e

    .line 38
    sget-object p1, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

    if-ne p4, p1, :cond_11

    .line 39
    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 40
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eq p1, p2, :cond_f

    return v2

    .line 42
    :cond_f
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 45
    iget-object p4, p1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz p4, :cond_10

    .line 46
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p3

    .line 47
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p2

    .line 48
    sget-object p4, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p1, p3, p2, p4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    .line 49
    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    .line 53
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/L0;->c(Lcom/android/tools/r8/graph/H2;)V

    :cond_11
    return v5
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/F5;Ljava/util/Set;)Z
    .locals 0

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/T;->c(Lcom/android/tools/r8/graph/F5;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/L0;->a(Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/internal/ns0;)Z
    .locals 2

    .line 56
    const-string v0, "Process deferred tracing"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    new-instance v1, Lcom/android/tools/r8/shaking/ab;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/shaking/ab;-><init>(Lcom/android/tools/r8/shaking/T;Lcom/android/tools/r8/shaking/L0;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiPredicate;)Z

    move-result p1

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->f:Lcom/android/tools/r8/internal/e80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    sget-object v1, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/L0;->a(Ljava/util/Set;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->g:Lcom/android/tools/r8/internal/f80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/F5;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/T;->h:Z

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/o3;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v3

    if-nez v3, :cond_16

    iget v3, v2, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    :cond_6
    iget v3, v2, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_7

    goto/16 :goto_6

    :cond_7
    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    new-instance v4, Lcom/android/tools/r8/shaking/Ua;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/Ua;-><init>()V

    invoke-virtual {v3, p1, v4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v3

    if-nez v3, :cond_c

    if-nez v0, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/H2;)Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    :cond_c
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v5, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v6, v6, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v7, :cond_d

    move v3, v4

    goto :goto_3

    :cond_d
    invoke-static {v5, v6, v3}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_e

    return v1

    :cond_e
    if-nez v0, :cond_10

    iget-object v3, v2, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/android/tools/r8/graph/c;

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_4
    if-nez v0, :cond_12

    iget-object v0, v2, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/graph/c;

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, v2, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v2, v2, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/android/tools/r8/shaking/T;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/t5;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T;->g:Lcom/android/tools/r8/internal/f80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_16
    :goto_6
    return v1
.end method
