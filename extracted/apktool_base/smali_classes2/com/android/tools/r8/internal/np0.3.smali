.class public final Lcom/android/tools/r8/internal/np0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/Pp0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v0, Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Pp0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V
    .locals 3

    .line 1
    new-instance p7, Lcom/android/tools/r8/internal/Yx0;

    const/4 v0, 0x2

    invoke-direct {p7, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {p7, p8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {p0, p8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 6
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Hp0;

    .line 7
    invoke-interface {p1, p0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v1, p0, Lcom/android/tools/r8/internal/Cp0;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hp0;->k()Lcom/android/tools/r8/internal/Cp0;

    move-result-object v1

    invoke-interface {p2, p8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Hp0;

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/np0;->f:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hp0;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hp0;->j()Lcom/android/tools/r8/internal/yp0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->f()Lcom/android/tools/r8/internal/wp0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    .line 15
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {p3, p8, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 16
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_2
    instance-of v1, p0, Lcom/android/tools/r8/internal/Ap0;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {p4, p8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    instance-of v1, p0, Lcom/android/tools/r8/internal/vp0;

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {p5, p8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p6, p8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    instance-of v1, p0, Lcom/android/tools/r8/internal/Gp0;

    if-nez v1, :cond_5

    .line 23
    instance-of v1, p0, Lcom/android/tools/r8/internal/wp0;

    if-eqz v1, :cond_6

    .line 24
    :cond_5
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_6
    instance-of v1, p0, Lcom/android/tools/r8/internal/zp0;

    if-eqz v1, :cond_7

    .line 26
    invoke-interface {p5, p8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_7
    iget-object p0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/On1;

    invoke-direct {v1, p7}, Lcom/android/tools/r8/internal/On1;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "StringBuilderAppendOptimizer"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;)Ljava/util/IdentityHashMap;
    .locals 18

    move-object/from16 v0, p0

    .line 36
    new-instance v10, Ljava/util/IdentityHashMap;

    invoke-direct {v10}, Ljava/util/IdentityHashMap;-><init>()V

    .line 37
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v11

    .line 39
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v12

    .line 40
    new-instance v13, Ljava/util/IdentityHashMap;

    invoke-direct {v13}, Ljava/util/IdentityHashMap;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v14

    .line 42
    new-instance v15, Ljava/util/IdentityHashMap;

    invoke-direct {v15}, Ljava/util/IdentityHashMap;-><init>()V

    .line 43
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    .line 44
    new-instance v7, Lcom/android/tools/r8/internal/Mn1;

    move-object v1, v7

    move-object v2, v13

    move-object v3, v15

    move-object v4, v9

    move-object v5, v8

    move-object v6, v12

    move-object/from16 v16, v15

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v17, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/internal/Mn1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v8, p2

    invoke-interface {v8, v15}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 45
    new-instance v15, Lcom/android/tools/r8/internal/Mp0;

    iget-object v7, v0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    new-instance v6, Lcom/android/tools/r8/internal/Nn1;

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lcom/android/tools/r8/internal/Nn1;-><init>(Lcom/android/tools/r8/internal/np0;Lcom/android/tools/r8/internal/fB;)V

    move-object v1, v15

    move-object v2, v10

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    move-object v11, v6

    move-object v6, v13

    move-object v12, v7

    move-object v7, v9

    move-object v8, v12

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/internal/Mp0;-><init>(Ljava/util/IdentityHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Pp0;Ljava/util/function/Supplier;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_5

    if-eqz v4, :cond_5

    .line 46
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 47
    new-instance v5, Lcom/android/tools/r8/internal/lp0;

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct {v5, v7, v6, v4}, Lcom/android/tools/r8/internal/lp0;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/LinkedHashSet;)V

    .line 48
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/Uj;->b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/Zs0;

    .line 49
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Hp0;

    .line 50
    new-instance v9, Lcom/android/tools/r8/internal/Yx0;

    const/4 v11, 0x2

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 51
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 52
    :goto_1
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 53
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Hp0;

    .line 54
    iget-boolean v12, v11, Lcom/android/tools/r8/internal/Hp0;->c:Z

    if-eqz v12, :cond_1

    goto :goto_3

    .line 55
    :cond_1
    sget-object v12, Lcom/android/tools/r8/internal/Op0;->a:[Lcom/android/tools/r8/internal/Np0;

    move v13, v2

    :goto_2
    const/4 v14, 0x4

    if-ge v13, v14, :cond_3

    aget-object v14, v12, v13

    .line 56
    invoke-interface {v14, v8, v11, v15}, Lcom/android/tools/r8/internal/Np0;->a(Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Mp0;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v12, v1

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v12, v2

    :goto_4
    or-int/2addr v5, v12

    .line 57
    iget-object v11, v11, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    .line 58
    new-instance v12, Lcom/android/tools/r8/internal/On1;

    invoke-direct {v12, v9}, Lcom/android/tools/r8/internal/On1;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v11, v12}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_0

    :cond_5
    return-object v10
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 30
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->R:Z

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 32
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x31

    .line 33
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mB;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/qp0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qp0;-><init>(Lcom/android/tools/r8/internal/Pp0;)V

    new-instance v1, Lcom/android/tools/r8/internal/EJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    sget-object v3, Lcom/android/tools/r8/internal/pp0;->g:Lcom/android/tools/r8/internal/pp0;

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/android/tools/r8/internal/EJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pp0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/qp0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/CJ;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Yi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yi;->a()Lcom/android/tools/r8/internal/Yi$a;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/kp0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/tools/r8/internal/kp0;-><init>(Lcom/android/tools/r8/internal/np0;Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/qp0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Uj;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mp0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/np0;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_2
    new-instance v8, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v8}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jp0;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, p0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    move-object v3, p1

    move-object v4, v9

    move-object v6, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v8, v0, p1, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v1, Lcom/android/tools/r8/internal/pu0;->a:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method
