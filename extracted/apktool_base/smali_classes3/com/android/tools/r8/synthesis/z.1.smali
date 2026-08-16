.class public final Lcom/android/tools/r8/synthesis/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/J;

.field public final b:Lcom/android/tools/r8/synthesis/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/synthesis/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/z;->a:Lcom/android/tools/r8/synthesis/J;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    return-void
.end method

.method public static synthetic a(ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/synthesis/t;)I
    .locals 6

    move-object v0, p4

    move-object v1, p5

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 418
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/t;->a(Lcom/android/tools/r8/synthesis/t;ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 514
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/Set;)Lcom/android/tools/r8/graph/x0;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v4

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v5

    .line 133
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v12

    .line 134
    new-instance v13, Lcom/android/tools/r8/synthesis/u;

    move-object/from16 v14, p1

    invoke-direct {v13, v14, v3}, Lcom/android/tools/r8/synthesis/u;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/v;)V

    .line 135
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v11, Lcom/android/tools/r8/synthesis/x1;

    move-object v6, v11

    move-object/from16 v7, p1

    move-object v8, v5

    move-object/from16 v9, p7

    move-object v10, v12

    move-object v14, v11

    move-object v11, v15

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/synthesis/x1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v1, v14}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 137
    new-instance v14, Lcom/android/tools/r8/synthesis/I1;

    move-object v6, v14

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/synthesis/I1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v2, v14}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 138
    iget-object v5, v3, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    .line 139
    iget-object v5, v5, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 140
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 141
    sget-boolean v5, Lcom/android/tools/r8/synthesis/v;->d:Z

    if-nez v5, :cond_1

    iget-object v6, v3, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    .line 142
    iget-object v6, v6, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 143
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v5, :cond_3

    .line 145
    iget-object v5, v3, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    .line 146
    iget-object v5, v5, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 147
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v5, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v5, :cond_f

    .line 150
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_7
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 154
    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 155
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    :cond_9
    sget-boolean v6, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v6, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_b
    :goto_4
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v4

    .line 158
    :cond_c
    sget-boolean v5, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v5, :cond_d

    invoke-static {v4, v2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/x0;Ljava/util/Map;)V

    :cond_d
    if-nez v5, :cond_e

    .line 159
    invoke-static {v4, v1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/x0;Ljava/util/Map;)V

    .line 160
    :cond_e
    const-string v5, "Tree fixing"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 161
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v5

    .line 162
    invoke-virtual {v13, v15}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    .line 164
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v4

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 166
    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    const-string v6, "R8$$SyntheticClass"

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    goto :goto_6

    .line 168
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    const-string v6, "D8$$SyntheticClass"

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 169
    :goto_6
    const-string v6, "Add final synthetics"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 170
    new-instance v6, Lcom/android/tools/r8/synthesis/P1;

    move-object/from16 v7, p5

    invoke-direct {v6, v4, v5, v7}, Lcom/android/tools/r8/synthesis/P1;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;)V

    invoke-interface {v2, v6}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 171
    new-instance v6, Lcom/android/tools/r8/synthesis/Q1;

    move-object/from16 v7, p6

    invoke-direct {v6, v4, v5, v7}, Lcom/android/tools/r8/synthesis/Q1;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;)V

    invoke-interface {v1, v6}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 173
    const-string v5, "Finish lens"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 174
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x2

    .line 175
    new-array v7, v7, [Ljava/lang/Iterable;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-static {v7}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v5

    .line 176
    new-instance v6, Lcom/android/tools/r8/synthesis/R1;

    invoke-direct {v6, v13, v3}, Lcom/android/tools/r8/synthesis/R1;-><init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;)V

    .line 177
    invoke-interface {v5, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 179
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 180
    sget-boolean v3, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v3, :cond_11

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_13
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 182
    sget-boolean v2, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v2, :cond_14

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    return-object v4
.end method

.method public static synthetic a(Ljava/lang/String;)Lcom/android/tools/r8/internal/z10;
    .locals 0

    .line 461
    new-instance p0, Lcom/android/tools/r8/internal/z10;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/z10;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/t;
    .locals 5

    .line 419
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 420
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    const/4 v1, 0x1

    .line 421
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 422
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/synthesis/t;

    .line 423
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/t;->g()Lcom/android/tools/r8/synthesis/a0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/synthesis/a0;->b()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->g()Lcom/android/tools/r8/synthesis/a0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/a0;->b()Lcom/android/tools/r8/graph/J2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result v3

    if-gez v3, :cond_2

    .line 424
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    .line 425
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)Ljava/util/Collection;
    .locals 8

    .line 462
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->g0:Z

    if-nez v0, :cond_1

    .line 465
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/synthesis/V1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/V1;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 469
    :cond_2
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 470
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 472
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/tools/r8/synthesis/n1;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/synthesis/n1;-><init>(Ljava/util/Set;Lcom/android/tools/r8/graph/y;)V

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->E0:Z

    .line 478
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/synthesis/t;

    .line 479
    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 480
    sget-object v6, Lcom/android/tools/r8/shaking/Q4;->v:Lcom/android/tools/r8/shaking/Q4;

    .line 481
    iget-object v7, p0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    if-eqz v7, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v6

    .line 483
    :cond_4
    iget-boolean v5, v6, Lcom/android/tools/r8/shaking/l1;->o:Z

    if-eqz v5, :cond_8

    .line 484
    new-instance v5, Lcom/android/tools/r8/internal/mA;

    sget v6, Lcom/android/tools/r8/internal/pA;->a:I

    sget v6, Lcom/android/tools/r8/internal/SY;->b:I

    .line 485
    new-instance v6, Lcom/android/tools/r8/internal/RY;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/RY;-><init>()V

    .line 486
    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/mA;-><init>(Lcom/android/tools/r8/internal/lA;)V

    .line 487
    iget-object v7, v4, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 488
    iget v7, v7, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 489
    invoke-interface {v6, v7}, Lcom/android/tools/r8/internal/lA;->a(I)Lcom/android/tools/r8/internal/lA;

    .line 490
    iget-object v7, v4, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 491
    invoke-virtual {v7}, Lcom/android/tools/r8/synthesis/S$b;->f()Z

    move-result v7

    if-nez v7, :cond_5

    .line 492
    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/nA;)V

    .line 493
    invoke-interface {v6}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v5

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    .line 494
    iget-object v7, v4, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    if-eqz v3, :cond_6

    .line 495
    iget-object v7, v7, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    goto :goto_3

    .line 496
    :cond_6
    iget-object v7, v7, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 497
    :goto_3
    invoke-interface {v7, v5}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/nA;)V

    .line 498
    :cond_7
    iget-object v7, v4, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 499
    iget-object v7, v7, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    .line 500
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 501
    invoke-interface {v6, v7}, Lcom/android/tools/r8/internal/lA;->a(I)Lcom/android/tools/r8/internal/lA;

    .line 502
    invoke-virtual {v4, v5, v1}, Lcom/android/tools/r8/synthesis/t;->a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V

    .line 503
    invoke-interface {v6}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v5

    .line 504
    :goto_4
    new-instance v6, Lcom/android/tools/r8/synthesis/o1;

    invoke-direct {v6}, Lcom/android/tools/r8/synthesis/o1;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 505
    :cond_8
    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    .line 506
    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 508
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 509
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 510
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nC;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 516
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 517
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/a0;

    .line 518
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/xb;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/xb;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/a0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/synthesis/t;

    move-result-object v2

    if-nez v2, :cond_1

    .line 519
    sget-boolean v1, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 520
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/t;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/a0;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 522
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p1

    .line 363
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 364
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    .line 365
    new-instance v1, Lcom/android/tools/r8/synthesis/w;

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 366
    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 367
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/synthesis/w;-><init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V

    .line 368
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 369
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 370
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 371
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v10

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v4, :cond_4

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->v()Lcom/android/tools/r8/internal/HE;

    move-result-object v4

    .line 375
    iget-boolean v5, v4, Lcom/android/tools/r8/internal/HE;->b:Z

    if-nez v5, :cond_4

    .line 376
    iget-object v4, v4, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v11, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v3

    .line 377
    :goto_2
    new-instance v4, Lcom/android/tools/r8/synthesis/p1;

    move-object/from16 v12, p2

    invoke-direct {v4, v11, v10, v12, v1}, Lcom/android/tools/r8/synthesis/p1;-><init>(ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;)V

    .line 378
    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/synthesis/t;

    .line 382
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v3

    move-object v14, v4

    move-object v15, v5

    .line 383
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_6

    .line 384
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/tools/r8/synthesis/t;

    move-object v4, v15

    move-object v5, v8

    move v6, v11

    move-object v7, v10

    move-object v2, v8

    move-object/from16 v8, p2

    move/from16 v16, v9

    move-object v9, v1

    .line 385
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/synthesis/t;->a(Lcom/android/tools/r8/synthesis/t;ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;)I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 386
    :cond_5
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    move-object v14, v4

    .line 388
    :goto_4
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v16, 0x1

    const/4 v2, 0x0

    goto :goto_3

    .line 389
    :cond_6
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_10

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/util/List;

    .line 392
    sget-boolean v5, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v5, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 393
    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_9

    const/4 v5, 0x0

    .line 394
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/synthesis/t;

    .line 395
    new-instance v6, Lcom/android/tools/r8/synthesis/w;

    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 396
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 397
    sget-object v8, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v6, v4, v7, v8}, Lcom/android/tools/r8/synthesis/w;-><init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V

    .line 398
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p0

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    .line 400
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 401
    :cond_a
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 402
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/synthesis/t;

    move-object/from16 v9, p0

    .line 403
    invoke-static {v9, v8}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/t;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v7, :cond_b

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 405
    :cond_b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_c
    move-object/from16 v9, p0

    if-eqz v7, :cond_f

    .line 407
    sget-boolean v6, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 408
    :cond_e
    :goto_8
    new-instance v6, Lcom/android/tools/r8/synthesis/q1;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/synthesis/q1;-><init>(Ljava/util/List;)V

    .line 409
    invoke-static {v7, v6}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/List;Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/t;

    move-result-object v6

    .line 410
    new-instance v7, Lcom/android/tools/r8/synthesis/w;

    .line 411
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sget-object v8, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v7, v6, v4, v8}, Lcom/android/tools/r8/synthesis/w;-><init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V

    .line 412
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 413
    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    new-instance v7, Lcom/android/tools/r8/synthesis/r1;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/synthesis/r1;-><init>(Ljava/util/List;)V

    invoke-static {v4, v7}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/List;Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/t;

    move-result-object v4

    .line 415
    new-instance v7, Lcom/android/tools/r8/synthesis/w;

    .line 416
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sget-object v8, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v7, v4, v6, v8}, Lcom/android/tools/r8/synthesis/w;-><init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V

    .line 417
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gA;)Ljava/util/List;
    .locals 0

    .line 515
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V
    .locals 1

    .line 183
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 184
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 185
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected definition for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    if-nez p3, :cond_2

    .line 187
    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    .line 188
    :cond_2
    iget-object p1, p4, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 189
    check-cast p1, Lcom/android/tools/r8/synthesis/X;

    .line 190
    new-instance p3, Lcom/android/tools/r8/synthesis/Y;

    .line 191
    iget-object p4, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 192
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p3, p4, p1, v0}, Lcom/android/tools/r8/synthesis/Y;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    .line 194
    invoke-interface {p2, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/t;)V
    .locals 1

    .line 209
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Ljava/util/Map;)V
    .locals 2

    .line 207
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/w;

    .line 208
    new-instance v1, Lcom/android/tools/r8/synthesis/A1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/synthesis/A1;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/w;->b(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/graph/y;)V

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 32
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_6

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 34
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/tools/r8/synthesis/z;

    .line 36
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 37
    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/synthesis/z;-><init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/synthesis/d;)V

    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/x;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->a:Lcom/android/tools/r8/synthesis/b;

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->d:Lcom/android/tools/r8/shaking/o2;

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/x;->b:Lcom/android/tools/r8/synthesis/y;

    if-eqz v1, :cond_7

    .line 43
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/lZ;Lcom/android/tools/r8/internal/ns0;)V

    .line 44
    :cond_7
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/x;->c:Lcom/android/tools/r8/graph/O5;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V
    .locals 2

    .line 536
    iget-object v0, p6, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 537
    check-cast v0, Lcom/android/tools/r8/synthesis/O;

    .line 538
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 539
    invoke-virtual {v1, p0, p5}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 540
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 541
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 542
    invoke-static {v1, v0, p0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    .line 543
    invoke-virtual {p6, p1}, Lcom/android/tools/r8/synthesis/w;->a(Lcom/android/tools/r8/shaking/o2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 544
    invoke-interface {p2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    new-instance p0, Lcom/android/tools/r8/synthesis/U1;

    invoke-direct {p0, p3, p4}, Lcom/android/tools/r8/synthesis/U1;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p6, p0}, Lcom/android/tools/r8/synthesis/w;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 288
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/t;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    instance-of v2, v1, Lcom/android/tools/r8/synthesis/O;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/t;->b()Lcom/android/tools/r8/synthesis/O;

    move-result-object v0

    .line 292
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 293
    new-instance v1, Lcom/android/tools/r8/synthesis/a;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/synthesis/a;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 294
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 295
    iget-object p0, v1, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 297
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 298
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 1

    .line 299
    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 3

    .line 340
    invoke-static {p0, p4, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 341
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/synthesis/w;

    .line 342
    iget-object v0, p4, Lcom/android/tools/r8/synthesis/w;->c:Lcom/android/tools/r8/internal/t40;

    .line 343
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 344
    :cond_1
    iget-object v0, p4, Lcom/android/tools/r8/synthesis/w;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 345
    :cond_2
    iget-object v0, p4, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    invoke-static {p0, v0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/t;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p4, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 347
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/synthesis/w;

    .line 348
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 349
    :cond_4
    iget-object v0, p4, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 352
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 353
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v1, :cond_5

    .line 354
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 355
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 356
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 357
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 358
    :cond_5
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 359
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/synthesis/S;->b(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_2
    new-instance v1, Lcom/android/tools/r8/synthesis/D1;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/D1;-><init>()V

    .line 361
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 362
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/graph/G5;)V
    .locals 1

    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    instance-of v0, p2, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 199
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    .line 200
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 201
    invoke-virtual {p1, p0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 202
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 204
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    .line 205
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 206
    invoke-virtual {p1, p0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/synthesis/w;)V
    .locals 1

    .line 546
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 547
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    new-instance v0, Lcom/android/tools/r8/synthesis/K1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/synthesis/K1;-><init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/synthesis/v;)V

    .line 548
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/P;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 109
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/Y;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 106
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;Lcom/android/tools/r8/synthesis/a0;)V
    .locals 0

    .line 111
    invoke-virtual {p3}, Lcom/android/tools/r8/synthesis/a0;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 113
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V
    .locals 7

    .line 210
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 211
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v1, :cond_10

    .line 212
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->W0:Z

    if-nez v0, :cond_10

    .line 213
    sget-boolean v0, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 214
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 215
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 217
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 218
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 220
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 222
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 223
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 225
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 226
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 228
    invoke-interface {v3}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    sget-object p2, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_2

    .line 230
    :cond_5
    invoke-interface {p2, v3}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 231
    :cond_6
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    :cond_7
    :goto_2
    sget-object v2, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 233
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->r6:Lcom/android/tools/r8/synthesis/S;

    .line 234
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 235
    new-instance v3, Lcom/android/tools/r8/graph/t0;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->p1:Lcom/android/tools/r8/graph/L2;

    .line 236
    iget p0, p0, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 237
    invoke-static {p0}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 238
    new-instance p0, Lcom/android/tools/r8/graph/t0;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->q1:Lcom/android/tools/r8/graph/L2;

    new-instance v5, Lcom/android/tools/r8/graph/R2$k;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-direct {p0, v4, v5}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 239
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 p2, -0x2

    goto :goto_4

    .line 240
    :cond_8
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 p2, -0x1

    goto :goto_4

    .line 241
    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v2, :cond_b

    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 242
    :cond_b
    :goto_3
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result p2

    .line 243
    :goto_4
    new-instance v2, Lcom/android/tools/r8/graph/t0;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->r1:Lcom/android/tools/r8/graph/L2;

    .line 244
    invoke-static {p2}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p2

    invoke-direct {v2, v4, p2}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    .line 245
    filled-new-array {v2, v3, p0}, [Lcom/android/tools/r8/graph/t0;

    move-result-object p0

    .line 246
    new-instance p2, Lcom/android/tools/r8/graph/r0;

    new-instance v2, Lcom/android/tools/r8/graph/e1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->P5:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v1, p0}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 p0, 0x0

    invoke-direct {p2, p0, v2}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    .line 247
    iget-object v1, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 248
    array-length v2, v1

    move v3, p0

    move v4, v3

    :goto_5
    if-ge v3, v2, :cond_e

    aget-object v5, v1, v3

    .line 249
    iget-object v5, v5, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v6, :cond_d

    .line 250
    iget-object p0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-virtual {p0}, [Lcom/android/tools/r8/graph/r0;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/tools/r8/graph/r0;

    .line 251
    aput-object p2, p0, v4

    .line 252
    sget-boolean p2, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 253
    array-length p2, p0

    if-nez p2, :cond_c

    .line 254
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    goto :goto_6

    :cond_c
    new-instance p2, Lcom/android/tools/r8/graph/u0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    move-object p0, p2

    goto :goto_6

    :cond_d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 255
    :cond_e
    iget-object v1, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lcom/android/tools/r8/graph/r0;

    .line 256
    array-length v4, v1

    invoke-static {v1, p0, v3, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object p0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length p0, p0

    aput-object p2, v3, p0

    .line 258
    sget-boolean p0, Lcom/android/tools/r8/internal/X3;->a:Z

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    goto :goto_6

    :cond_f
    new-instance p0, Lcom/android/tools/r8/graph/u0;

    invoke-direct {p0, v3}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    .line 259
    :goto_6
    iput-object p0, p1, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    :cond_10
    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/t;)V
    .locals 0

    .line 336
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 337
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    .line 338
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    .line 339
    sget-boolean p2, Lcom/android/tools/r8/synthesis/v;->d:Z

    if-nez p2, :cond_1

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V
    .locals 1

    .line 335
    new-instance v0, Lcom/android/tools/r8/synthesis/N1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/synthesis/N1;-><init>(Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/synthesis/w;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/synthesis/t;)V
    .locals 1

    .line 511
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 512
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 513
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/synthesis/t;)V
    .locals 3

    .line 527
    new-instance v0, Lcom/android/tools/r8/synthesis/w;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 528
    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 529
    sget-object v2, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/synthesis/w;-><init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V

    .line 530
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 129
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 130
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/synthesis/O;)V
    .locals 1

    .line 21
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p0, p2, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 25
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/synthesis/X;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    .line 2
    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p2, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    .line 4
    check-cast p0, Lcom/android/tools/r8/graph/H2;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 118
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/t;)Z
    .locals 6

    .line 426
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 429
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 430
    sget-boolean v3, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v3, :cond_3

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 433
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 434
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 435
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 436
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 437
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    .line 438
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 439
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 441
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 442
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/h1;

    .line 443
    invoke-virtual {v0, v4, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/F1;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_7
    return v1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 526
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V
    .locals 1

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    if-nez p3, :cond_0

    .line 30
    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    .line 31
    :cond_0
    iget-object p1, p4, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 32
    check-cast p1, Lcom/android/tools/r8/synthesis/O;

    .line 33
    sget-boolean p3, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p4

    .line 34
    iget-object p4, p4, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 35
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-nez p3, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object p4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/N4;->a(Ljava/util/function/Predicate;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 40
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p3

    sget-object p4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 41
    iget-object p3, p3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 42
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    .line 43
    new-instance p4, Lcom/android/tools/r8/synthesis/P;

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 46
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p4, v0, p1, p3}, Lcom/android/tools/r8/synthesis/P;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V

    .line 47
    invoke-interface {p2, p0, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/graph/y;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_4
    :goto_1
    new-instance v1, Lcom/android/tools/r8/synthesis/z;

    .line 10
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/synthesis/z;-><init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/synthesis/d;)V

    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/x;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->a:Lcom/android/tools/r8/synthesis/b;

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->d:Lcom/android/tools/r8/shaking/o2;

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/x;->b:Lcom/android/tools/r8/synthesis/y;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 18
    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/x;->c:Lcom/android/tools/r8/graph/O5;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V
    .locals 2

    .line 50
    iget-object v0, p6, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 51
    check-cast v0, Lcom/android/tools/r8/synthesis/X;

    .line 52
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 53
    invoke-virtual {v1, p0, p5}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 54
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 55
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    .line 56
    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-static {v1, v0, p0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    .line 57
    invoke-virtual {p6, p1}, Lcom/android/tools/r8/synthesis/w;->a(Lcom/android/tools/r8/shaking/o2;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    new-instance p0, Lcom/android/tools/r8/synthesis/m1;

    invoke-direct {p0, p3, p4}, Lcom/android/tools/r8/synthesis/m1;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p6, p0}, Lcom/android/tools/r8/synthesis/w;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/tools/r8/synthesis/z;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/synthesis/z;-><init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/synthesis/d;)V

    invoke-virtual {v1, p0, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->d:Lcom/android/tools/r8/shaking/o2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/shaking/i;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    iget-object v1, v0, Lcom/android/tools/r8/synthesis/x;->b:Lcom/android/tools/r8/synthesis/y;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->a:Lcom/android/tools/r8/synthesis/b;

    iget-object v2, v2, Lcom/android/tools/r8/synthesis/b;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/tools/r8/synthesis/x;->a:Lcom/android/tools/r8/synthesis/b;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/b;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/x;->a:Lcom/android/tools/r8/synthesis/b;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/x;->c:Lcom/android/tools/r8/graph/O5;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/w;Lcom/android/tools/r8/synthesis/w;)I
    .locals 0

    .line 531
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 532
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 534
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 535
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/M2;
    .locals 7

    .line 444
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 445
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v1

    const-string v2, "$$ExternalSynthetic"

    const-string v3, ""

    if-eqz v1, :cond_3

    .line 446
    sget-boolean p3, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 447
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    move-object v2, v3

    .line 448
    :cond_2
    invoke-static {v2, p1, p2, v3}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 449
    :cond_3
    new-instance v1, Lcom/android/tools/r8/synthesis/O1;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/O1;-><init>()V

    .line 450
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/z10;

    .line 451
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    sget-boolean v4, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 453
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v3

    goto :goto_2

    :cond_7
    move-object v4, v2

    .line 454
    :goto_2
    invoke-static {v4, p1, p2, v1}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 455
    invoke-interface {p5, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 456
    :cond_8
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 457
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 458
    iget-object v5, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 459
    iget-object v6, v5, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 460
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v5, v5, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v1, 0x0

    :cond_a
    :goto_4
    if-eqz v1, :cond_4

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/x;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 45
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_0
    if-nez v0, :cond_1

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/synthesis/z;->a()V

    .line 47
    :cond_1
    new-instance v15, Lcom/android/tools/r8/synthesis/v;

    invoke-direct {v15}, Lcom/android/tools/r8/synthesis/v;-><init>()V

    .line 48
    new-instance v14, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    .line 49
    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 50
    new-instance v13, Lcom/android/tools/r8/internal/kC;

    .line 51
    invoke-direct {v13, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 52
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v12

    .line 53
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v9, Lcom/android/tools/r8/synthesis/s1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/s1;-><init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)V

    .line 55
    const-string v0, "Method equivalence"

    invoke-virtual {v7, v0, v9}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    new-instance v10, Lcom/android/tools/r8/synthesis/t1;

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/t1;-><init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)V

    .line 56
    const-string v0, "Class equivalence"

    invoke-virtual {v7, v0, v10}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map;

    new-instance v0, Lcom/android/tools/r8/synthesis/u1;

    invoke-direct {v0, v13}, Lcom/android/tools/r8/synthesis/u1;-><init>(Lcom/android/tools/r8/internal/kC;)V

    new-instance v1, Lcom/android/tools/r8/synthesis/v1;

    invoke-direct {v1, v14}, Lcom/android/tools/r8/synthesis/v1;-><init>(Lcom/android/tools/r8/internal/kC;)V

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object v11, v15

    move-object v2, v12

    move-object v12, v0

    move-object v0, v13

    move-object v13, v1

    move-object v1, v14

    move-object v14, v2

    .line 57
    invoke-static/range {v7 .. v14}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/Set;)Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    .line 58
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v9

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v10

    .line 60
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 61
    iget-object v1, v6, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    new-instance v4, Lcom/android/tools/r8/synthesis/w1;

    invoke-direct {v4, v9, v10, v0}, Lcom/android/tools/r8/synthesis/w1;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;)V

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/function/Consumer;)V

    .line 62
    iget-object v1, v15, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    .line 63
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 64
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, v15, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    .line 66
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, v15, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    .line 69
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 70
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v8, p1

    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Lcom/android/tools/r8/synthesis/y;

    iget-object v4, v15, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v5, v15, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    iget-object v7, v15, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    move-object/from16 v8, p1

    invoke-direct {v1, v8, v4, v5, v7}, Lcom/android/tools/r8/synthesis/y;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/n6;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 72
    new-instance v4, Lcom/android/tools/r8/synthesis/y1;

    invoke-direct {v4, v6, v1}, Lcom/android/tools/r8/synthesis/y1;-><init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/synthesis/y;)V

    invoke-static {v4}, Lcom/android/tools/r8/internal/Al0;->b(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    :goto_1
    move-object v12, v4

    goto :goto_2

    .line 73
    :cond_3
    iget-object v4, v6, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    iget-object v4, v4, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_1

    .line 74
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    new-instance v5, Lcom/android/tools/r8/shaking/m2;

    iget-boolean v7, v4, Lcom/android/tools/r8/shaking/o2;->e:Z

    invoke-direct {v5, v7}, Lcom/android/tools/r8/shaking/m2;-><init>(Z)V

    .line 76
    iget-object v7, v5, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    iget-object v8, v4, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v7, v5, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    iget-object v8, v4, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v7, v5, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    iget-object v8, v4, Lcom/android/tools/r8/shaking/o2;->c:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v7, v5, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    new-instance v4, Lcom/android/tools/r8/synthesis/z1;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/synthesis/z1;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {v2, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    new-instance v2, Lcom/android/tools/r8/synthesis/x;

    new-instance v4, Lcom/android/tools/r8/synthesis/b;

    new-instance v19, Lcom/android/tools/r8/synthesis/d;

    iget-object v7, v6, Lcom/android/tools/r8/synthesis/z;->a:Lcom/android/tools/r8/synthesis/J;

    .line 82
    iget-object v8, v7, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 83
    iget-object v7, v6, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 84
    iget-object v11, v7, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    move-object/from16 v7, v19

    .line 85
    invoke-direct/range {v7 .. v12}, Lcom/android/tools/r8/synthesis/d;-><init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V

    .line 86
    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 87
    sget-object v20, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 88
    iget-object v7, v6, Lcom/android/tools/r8/synthesis/z;->a:Lcom/android/tools/r8/synthesis/J;

    .line 89
    iget-object v7, v7, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    const/16 v17, 0x2

    move-object/from16 v16, v4

    move-object/from16 v18, v3

    move-object/from16 v21, v7

    .line 90
    invoke-direct/range {v16 .. v21}, Lcom/android/tools/r8/synthesis/b;-><init>(ILcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/d;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/synthesis/E;)V

    .line 91
    new-instance v7, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v7}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 92
    iput-object v3, v7, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 93
    iget-object v3, v7, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v3, v7, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v0

    .line 96
    new-instance v3, Lcom/android/tools/r8/shaking/o2;

    iget-object v8, v5, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    iget-object v9, v5, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    iget-object v10, v5, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    iget-object v11, v5, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    iget-boolean v12, v5, Lcom/android/tools/r8/shaking/m2;->e:Z

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/tools/r8/shaking/o2;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 97
    invoke-direct {v2, v4, v1, v0, v3}, Lcom/android/tools/r8/synthesis/x;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/synthesis/y;Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/o2;)V

    return-object v2
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;
    .locals 15

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .line 260
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 261
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    .line 262
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    .line 263
    const-string v0, "Groups"

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v4, Lcom/android/tools/r8/synthesis/E1;

    invoke-direct {v4, v2, v1, v0}, Lcom/android/tools/r8/synthesis/E1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 267
    new-instance v4, Lcom/android/tools/r8/synthesis/F1;

    invoke-direct {v4, v2, v7, v8}, Lcom/android/tools/r8/synthesis/F1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 268
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    move v10, v9

    :cond_0
    if-ge v10, v5, :cond_1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/util/List;

    .line 270
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 271
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/synthesis/t;

    .line 272
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    instance-of v14, v12, Lcom/android/tools/r8/synthesis/O;

    if-eqz v14, :cond_0

    .line 274
    invoke-virtual {v12}, Lcom/android/tools/r8/synthesis/t;->b()Lcom/android/tools/r8/synthesis/O;

    move-result-object v12

    .line 275
    iget-object v12, v12, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 276
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    .line 277
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 278
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/synthesis/t;

    invoke-virtual {v14}, Lcom/android/tools/r8/synthesis/t;->b()Lcom/android/tools/r8/synthesis/O;

    move-result-object v14

    .line 279
    iget-object v14, v14, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 280
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/A2;

    .line 281
    invoke-virtual {v4, v14, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 282
    :cond_1
    new-instance v0, Lcom/android/tools/r8/synthesis/G1;

    invoke-direct {v0, v2, v7, v4, v8}, Lcom/android/tools/r8/synthesis/G1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 283
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 284
    const-string v0, "External creation"

    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 285
    new-instance v9, Lcom/android/tools/r8/synthesis/H1;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/H1;-><init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;ZLjava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 286
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 287
    new-instance v0, Lcom/android/tools/r8/synthesis/J1;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/synthesis/J1;-><init>(Lcom/android/tools/r8/synthesis/v;)V

    invoke-virtual {v8, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v8
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/Map;
    .locals 8

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 99
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 100
    invoke-static {p1, v0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nC;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 101
    const-string v1, "Potential equivalences"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 102
    invoke-static {p1, v0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)Ljava/util/Collection;

    move-result-object v3

    .line 103
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/Collection;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 122
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 123
    new-instance v2, Lcom/android/tools/r8/synthesis/B1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/synthesis/B1;-><init>(Ljava/util/Set;)V

    .line 124
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 125
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 126
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 127
    new-instance v2, Lcom/android/tools/r8/synthesis/C1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/synthesis/C1;-><init>(Ljava/util/Set;)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    new-instance v1, Lcom/android/tools/r8/synthesis/T1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/synthesis/T1;-><init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/a0;)V
    .locals 3

    .line 5
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/a0;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/synthesis/S;->b(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v1, :cond_2

    sget-object v2, Lcom/android/tools/r8/synthesis/S$a;->b:Lcom/android/tools/r8/synthesis/S$a;

    invoke-static {v2}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 11
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-nez v1, :cond_6

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    :cond_3
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 16
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    if-eq v0, p2, :cond_4

    return-void

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/z;->a:Lcom/android/tools/r8/synthesis/J;

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/synthesis/J;->f(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;ZLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    .line 300
    new-instance v9, Lcom/android/tools/r8/synthesis/L1;

    invoke-direct {v9, p0}, Lcom/android/tools/r8/synthesis/L1;-><init>(Lcom/android/tools/r8/synthesis/z;)V

    .line 301
    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v10, v0

    .line 302
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_8

    .line 303
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/tools/r8/synthesis/w;

    .line 304
    sget-boolean v0, Lcom/android/tools/r8/synthesis/z;->c:Z

    if-nez v0, :cond_2

    .line 305
    iget-object v1, v11, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 308
    iget-object v3, v2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 309
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v2, :cond_0

    .line 310
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 312
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 313
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v12, p5

    goto :goto_2

    .line 314
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 315
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/tools/r8/synthesis/S;->b(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 316
    :goto_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object/from16 v12, p5

    :goto_3
    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    add-int/lit8 v1, v10, -0x1

    .line 318
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/w;

    .line 319
    invoke-interface {v9, v1, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v0, :cond_4

    if-gez v2, :cond_3

    goto :goto_4

    .line 320
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :cond_4
    :goto_4
    invoke-interface {v9, v11, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v0, :cond_6

    if-lez v1, :cond_5

    goto :goto_5

    .line 322
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_6
    :goto_5
    iget-object v0, v11, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 324
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-eqz p2, :cond_7

    .line 325
    iget-object v2, v6, Lcom/android/tools/r8/synthesis/z;->a:Lcom/android/tools/r8/synthesis/J;

    .line 326
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 327
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 328
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 329
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    .line 330
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, v11, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 332
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    move-object v13, p1

    goto :goto_6

    .line 333
    :cond_7
    new-instance v5, Lcom/android/tools/r8/synthesis/M1;

    move-object v13, p1

    invoke-direct {v5, p1, v7}, Lcom/android/tools/r8/synthesis/M1;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    move-object v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 334
    :goto_6
    invoke-interface {v7, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/synthesis/y;Ljava/util/function/Consumer;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    new-instance v1, Lcom/android/tools/r8/synthesis/S1;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/synthesis/S1;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/d;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/Map;
    .locals 8

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/z;->b:Lcom/android/tools/r8/synthesis/d;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 21
    invoke-static {p1, v0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nC;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 22
    const-string v1, "Potential equivalences"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 23
    invoke-static {p1, v0}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)Ljava/util/Collection;

    move-result-object v3

    .line 24
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/Collection;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method
