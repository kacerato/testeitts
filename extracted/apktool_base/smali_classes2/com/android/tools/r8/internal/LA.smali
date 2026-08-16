.class public final Lcom/android/tools/r8/internal/LA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/LA;->b:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/LA;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/JA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/JA;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j;Ljava/util/Set;)V
    .locals 5

    .line 62
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v2, Lu/K0;

    invoke-direct {v2}, Lu/K0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 66
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/android/tools/r8/internal/LA;->a(Lcom/android/tools/r8/graph/j;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 3

    .line 67
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/LA;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 77
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/tools/r8/internal/LA;->a(Lcom/android/tools/r8/graph/j;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    .line 79
    iget-object v2, p0, Lcom/android/tools/r8/internal/LA;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/BU;Ljava/util/function/BiConsumer;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/LA;->a(Lcom/android/tools/r8/graph/j;Ljava/util/Set;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-interface {p2, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/internal/LA;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/JA;

    .line 8
    new-instance v6, Lcom/android/tools/r8/internal/SL0;

    invoke-direct {v6, v5, p2}, Lcom/android/tools/r8/internal/SL0;-><init>(Lcom/android/tools/r8/internal/JA;Lcom/android/tools/r8/graph/j;)V

    new-instance v7, Lcom/android/tools/r8/internal/TL0;

    invoke-direct {v7, p0, v4, p1, p2}, Lcom/android/tools/r8/internal/TL0;-><init>(Lcom/android/tools/r8/internal/LA;Ljava/util/Map;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {v3, v7, v6}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 9
    new-instance v3, Lcom/android/tools/r8/internal/eu;

    .line 10
    iget-object v5, v5, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 11
    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/internal/eu;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V

    .line 12
    iget-object v4, p3, Lcom/android/tools/r8/internal/BU;->k:Lcom/android/tools/r8/internal/kC;

    .line 13
    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/LA;->c:Ljava/util/Set;

    const-string p2, "Missing emulated interfaces: "

    invoke-interface {p4, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H0;)V
    .locals 16

    move-object/from16 v0, p0

    .line 18
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 19
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 20
    new-instance v3, Lcom/android/tools/r8/internal/Yj;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v6

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/JA;

    .line 24
    iget-object v6, v6, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 27
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 28
    new-instance v6, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 29
    new-instance v5, Lcom/android/tools/r8/internal/Yj;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v2}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 30
    iget-object v7, v0, Lcom/android/tools/r8/internal/LA;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 31
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v9, p2

    .line 32
    iget-object v9, v9, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 33
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    .line 34
    invoke-virtual {v11, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 35
    iget-object v12, v0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 37
    iget-object v12, v12, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 39
    new-instance v14, Lcom/android/tools/r8/internal/Yx0;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 40
    invoke-virtual {v14, v12}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 41
    :cond_1
    :goto_1
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 42
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/M2;

    if-ne v13, v12, :cond_2

    .line 43
    iget-object v12, v0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 45
    iget-object v13, v0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    .line 46
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v13

    .line 47
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v13, v14, v12, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 48
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    new-instance v13, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {v13, v12}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v8, v11, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_2
    iget-object v15, v0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v15, v12}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 50
    iget-object v12, v12, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14, v12}, Lcom/android/tools/r8/internal/Yx0;->a([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    if-eqz v7, :cond_9

    .line 51
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v9

    :goto_2
    if-ltz v10, :cond_b

    .line 52
    iget-object v9, v0, Lcom/android/tools/r8/internal/LA;->a:Lcom/android/tools/r8/graph/j;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    .line 53
    sget-boolean v11, Lcom/android/tools/r8/internal/LA;->d:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 54
    :cond_5
    :goto_3
    invoke-virtual {v9, v2}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 55
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v13

    if-nez v13, :cond_8

    if-nez v11, :cond_7

    .line 56
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_7
    :goto_4
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    .line 58
    iget-object v9, v9, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v12, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {v12, v4, v11}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v8, v9, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 59
    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/internal/LA;->d:Z

    if-nez v2, :cond_b

    invoke-virtual {v8}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-gt v2, v9, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 60
    :cond_b
    :goto_5
    new-instance v2, Lcom/android/tools/r8/internal/cu;

    invoke-direct {v2, v6, v5, v3, v8}, Lcom/android/tools/r8/internal/cu;-><init>(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Ljava/util/LinkedHashMap;)V

    move-object/from16 v3, p1

    .line 61
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
