.class public final Lcom/android/tools/r8/internal/qo;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/ir/optimize/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/qo;->e:Lcom/android/tools/r8/ir/optimize/z;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 168
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 167
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;)Z
    .locals 5

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 55
    sget-boolean v3, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 57
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 59
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 60
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->d()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W1()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object p0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 10
    :goto_1
    sget-boolean v2, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    return v0
.end method

.method public static c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/dt;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/dt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/EE;
    .locals 2

    .line 63
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 64
    sget-boolean v1, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v1, :cond_1

    if-ne v0, p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 69
    :goto_1
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 70
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/android/tools/r8/internal/cr1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cr1;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 75
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    if-nez v1, :cond_4

    if-ne v0, p1, :cond_3

    goto :goto_2

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_4
    :goto_2
    iget-object v0, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    if-nez v1, :cond_6

    .line 78
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 79
    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 80
    invoke-interface {p3, p4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    goto :goto_4

    .line 82
    :cond_7
    invoke-interface {p3, p4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 83
    :goto_4
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    if-nez v1, :cond_9

    if-ne p1, p5, :cond_8

    goto :goto_5

    .line 84
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    return-object p3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    const-string v0, "DexConstantOptimizer"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Ljava/util/IdentityHashMap;Ljava/util/function/Predicate;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 86
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 87
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    move-object v6, p0

    .line 88
    iget-object v7, v6, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-object v8, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    instance-of v7, v5, Lcom/android/tools/r8/internal/se;

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 92
    :cond_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move-object/from16 v11, p4

    move-object/from16 v7, p5

    goto :goto_0

    :cond_2
    move-object/from16 v7, p5

    .line 94
    invoke-interface {v7, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    :goto_1
    move-object/from16 v11, p4

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v8

    if-nez v8, :cond_7

    .line 96
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 97
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    if-ne v8, v9, :cond_5

    .line 98
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 101
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v10

    if-nez v10, :cond_6

    .line 102
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 103
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v10

    .line 104
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    if-ne v8, v10, :cond_6

    if-ne v9, v10, :cond_6

    .line 105
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 107
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 108
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 109
    :cond_7
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 110
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 111
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/f60;

    .line 113
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v3

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 114
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    if-ne v13, v14, :cond_a

    .line 115
    iget-object v13, v10, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 116
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 117
    :cond_b
    iget-object v9, v1, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 118
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v9

    .line 119
    check-cast v9, Lcom/android/tools/r8/internal/dt;

    .line 120
    sget-boolean v10, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v10, :cond_d

    .line 121
    iget-boolean v10, v9, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v10, :cond_c

    goto :goto_4

    .line 122
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 123
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    :goto_4
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_e

    const/4 v8, 0x0

    goto :goto_7

    .line 125
    :cond_e
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 126
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 127
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 128
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    if-eq v10, v11, :cond_f

    .line 129
    :goto_5
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v13

    if-le v12, v13, :cond_11

    .line 130
    iget-object v12, v9, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v10

    aget-object v10, v12, v10

    goto :goto_5

    .line 131
    :cond_11
    :goto_6
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v12

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v13

    if-le v12, v13, :cond_10

    .line 132
    iget-object v12, v9, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v11

    aget-object v11, v12, v11

    goto :goto_6

    :cond_12
    move-object v8, v10

    .line 133
    :goto_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-nez v9, :cond_3

    .line 135
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-nez v9, :cond_3

    .line 136
    iget-object v9, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v10, 0x2a

    .line 137
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v9

    if-eqz v9, :cond_13

    goto/16 :goto_1

    :cond_13
    if-eqz v4, :cond_14

    .line 138
    iget-object v9, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 139
    new-instance v10, Lcom/android/tools/r8/internal/dr1;

    invoke-direct {v10, v8}, Lcom/android/tools/r8/internal/dr1;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto/16 :goto_1

    .line 140
    :cond_14
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_1b

    const/16 v10, 0x14

    if-eq v9, v10, :cond_1a

    const/16 v10, 0x1c

    if-eq v9, v10, :cond_19

    const/16 v10, 0x3b

    if-eq v9, v10, :cond_18

    const/16 v10, 0x47

    if-eq v9, v10, :cond_17

    const/16 v10, 0xf

    if-eq v9, v10, :cond_16

    const/16 v10, 0x10

    if-ne v9, v10, :cond_15

    .line 141
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v9

    sget-boolean v10, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 142
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 143
    invoke-static {v10, v9}, Lcom/android/tools/r8/internal/vh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/vh;)Lcom/android/tools/r8/internal/vh;

    move-result-object v9

    goto/16 :goto_8

    .line 144
    :cond_15
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    .line 145
    :cond_16
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v9

    sget-boolean v10, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 146
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 147
    invoke-static {v10, v9}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v9

    goto :goto_8

    .line 148
    :cond_17
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object v9

    sget-boolean v10, Lcom/android/tools/r8/internal/Pf0;->m:Z

    .line 149
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 150
    new-instance v11, Lcom/android/tools/r8/internal/Pf0;

    .line 151
    iget v9, v9, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 152
    invoke-direct {v11, v10, v9}, Lcom/android/tools/r8/internal/Pf0;-><init>(Lcom/android/tools/r8/internal/xw0;I)V

    move-object v9, v11

    goto :goto_8

    .line 153
    :cond_18
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/Mo0;

    move-result-object v9

    goto :goto_8

    .line 154
    :cond_19
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/bE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/bE;

    move-result-object v9

    goto :goto_8

    .line 155
    :cond_1a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v9

    sget-boolean v10, Lcom/android/tools/r8/internal/uq;->n:Z

    .line 156
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 157
    invoke-static {v10, v9}, Lcom/android/tools/r8/internal/uq;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/uq;)Lcom/android/tools/r8/internal/uq;

    move-result-object v9

    goto :goto_8

    .line 158
    :cond_1b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v9

    sget-boolean v10, Lcom/android/tools/r8/internal/jh;->n:Z

    .line 159
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    .line 160
    invoke-static {v10, v9}, Lcom/android/tools/r8/internal/jh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;

    move-result-object v9

    .line 161
    :goto_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 162
    new-instance v10, Lcom/android/tools/r8/internal/er1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/er1;-><init>()V

    move-object/from16 v11, p4

    .line 163
    invoke-interface {v11, v8, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    .line 164
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-boolean v8, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v8, :cond_1d

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_1c

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_1d
    :goto_9
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_0

    :cond_1e
    move-object v6, p0

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/z;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    .line 13
    iget-object v0, v6, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->U0:Z

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v8, Lcom/android/tools/r8/internal/sR;

    new-instance v0, Lcom/android/tools/r8/internal/Zq1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Zq1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 15
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    .line 16
    iget-object v0, v7, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 17
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 18
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/ar1;

    move-object/from16 v11, p2

    invoke-direct {v5, v11}, Lcom/android/tools/r8/internal/ar1;-><init>(Lcom/android/tools/r8/ir/optimize/z;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v9

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Ljava/util/IdentityHashMap;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v8

    .line 21
    :cond_2
    :goto_1
    iget-object v0, v8, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23
    iget-object v0, v8, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, v8, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 24
    invoke-virtual {v9, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Map;

    if-nez v10, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v1, :cond_5

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 28
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_6

    .line 29
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/br1;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/br1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 31
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v11

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 33
    :goto_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/tools/r8/internal/zE;

    .line 35
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v11, :cond_7

    .line 36
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_7
    iget-object v1, v6, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object v2, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v12, Lcom/android/tools/r8/internal/se;

    if-eqz v1, :cond_8

    goto :goto_5

    .line 40
    :cond_8
    iget-object v1, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v3, v0

    :cond_9
    :goto_4
    move-object v0, v13

    check-cast v0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 44
    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    if-eqz v4, :cond_9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v5, v12

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/EE;

    move-result-object v3

    goto :goto_4

    :cond_a
    move-object v0, v3

    goto :goto_3

    .line 46
    :cond_b
    :goto_5
    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 47
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v5, v11

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/EE;

    move-result-object v3

    goto :goto_6

    .line 49
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v6, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    invoke-static {v10}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v10

    iget-object v11, v10, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v10, v10, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    :goto_2
    sget-boolean v11, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v11, :cond_5

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_3
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_7
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_0

    :cond_8
    new-instance v10, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput v3, v10, Lcom/android/tools/r8/internal/x1;->b:I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v7

    :cond_9
    invoke-interface {v8}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    add-int/2addr v7, v3

    iget-object v12, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v11

    new-array v13, v2, [Ljava/lang/Iterable;

    aput-object v12, v13, v5

    aput-object v11, v13, v4

    invoke-static {v13}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_4
    move-object v12, v11

    check-cast v12, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v9, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v10, v12}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v10, v7, v12}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_4

    :cond_c
    add-int/2addr v7, v3

    sget-boolean v9, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v9, :cond_e

    if-ne v7, v3, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_5
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    add-int/2addr v7, v4

    invoke-static {v9}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v11

    if-nez v11, :cond_f

    goto/16 :goto_e

    :cond_f
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v11

    iget-object v12, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    goto :goto_6

    :cond_10
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-object v12, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    :goto_6
    sget-boolean v13, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v13, :cond_12

    if-eqz v12, :cond_11

    goto :goto_7

    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_12
    :goto_7
    invoke-virtual {v10, v12}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v14

    if-nez v13, :cond_14

    if-eq v14, v3, :cond_13

    goto :goto_8

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_8
    if-le v14, v7, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v14

    if-eqz v14, :cond_16

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v12

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Iterable;

    aput-object v14, v3, v5

    aput-object v15, v3, v4

    aput-object v12, v3, v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v3

    goto :goto_9

    :cond_16
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v12

    new-array v14, v2, [Ljava/lang/Iterable;

    aput-object v3, v14, v5

    aput-object v12, v14, v4

    invoke-static {v14}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v3

    :goto_9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    move-object v12, v3

    check-cast v12, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/FE;

    invoke-interface {v12}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    if-ne v12, v11, :cond_17

    goto :goto_a

    :cond_17
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    goto :goto_a

    :cond_18
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/W5;->d(Lcom/android/tools/r8/internal/W5;)Z

    move-result v14

    if-eqz v14, :cond_1d

    :goto_b
    sget-boolean v3, Lcom/android/tools/r8/internal/qo;->f:Z

    if-nez v3, :cond_1a

    invoke-static {v9}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_c

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1a
    :goto_c
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v3

    iget-object v11, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    goto :goto_d

    :cond_1b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    :goto_d
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v11

    if-le v11, v4, :cond_1e

    iget-object v11, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v11

    sget-boolean v12, Lcom/android/tools/r8/internal/qh;->m:Z

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v3, v12, v13}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    iget-object v12, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v12, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v13, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v8, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_1d
    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_1e
    :goto_e
    const/4 v3, -0x1

    goto/16 :goto_5

    :cond_1f
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_20
    :goto_f
    iget-object v2, v0, Lcom/android/tools/r8/internal/qo;->e:Lcom/android/tools/r8/ir/optimize/z;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/qo;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/z;)V

    sget-object v1, Lcom/android/tools/r8/internal/we;->c:Lcom/android/tools/r8/internal/we;

    return-object v1
.end method
