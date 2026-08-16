.class public final Lcom/android/tools/r8/ir/optimize/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/M;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/N20;Lcom/android/tools/r8/internal/N20;)I
    .locals 0

    .line 69
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/VJ;)Ljava/util/List;
    .locals 0

    .line 67
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/NJ;)V
    .locals 8

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 93
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 96
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 99
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v0, Lv/n;

    invoke-direct {v0}, Lv/n;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 101
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;Lcom/android/tools/r8/internal/N20;)V
    .locals 9

    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VJ;

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v3

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 74
    iget-object v7, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    .line 75
    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;

    move-result-object v2

    .line 76
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 78
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    invoke-static {p0, v2}, Lcom/android/tools/r8/ir/optimize/M;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/NJ;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    .line 83
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 86
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 87
    :goto_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 88
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/N20;)Z
    .locals 1

    .line 68
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/M20;

    new-instance v1, Lcom/android/tools/r8/ir/optimize/L;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/L;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/M20;-><init>(Lcom/android/tools/r8/internal/Sz;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    iget-object v7, v7, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 14
    iget-object v9, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16
    iget-object v7, p0, Lcom/android/tools/r8/ir/optimize/M;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->A6:Lcom/android/tools/r8/internal/QC;

    .line 17
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_2

    .line 18
    :cond_5
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/M;->c:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 24
    invoke-virtual {v7, v1, v6}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_0

    .line 26
    :cond_9
    invoke-virtual {v5, v6, v1}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v7

    if-nez v7, :cond_a

    goto/16 :goto_0

    .line 27
    :cond_a
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 28
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 29
    iget-object v7, v7, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 30
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 31
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->F()Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    .line 32
    :cond_b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_0

    .line 35
    :cond_c
    :goto_2
    iget-object v6, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_d
    if-ge v8, v7, :cond_e

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 37
    invoke-interface {v9}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 38
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v9, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 39
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_0

    .line 40
    :cond_e
    new-instance v6, Lv/o;

    invoke-direct {v6}, Lv/o;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 41
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M20;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_6

    .line 43
    :cond_10
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/M;->c:Z

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_12
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v2, v0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    if-nez v2, :cond_13

    new-instance v2, Lcom/android/tools/r8/internal/J20;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/J20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    .line 46
    :cond_13
    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lv/p;

    invoke-direct {v2}, Lv/p;-><init>()V

    .line 48
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lv/q;

    invoke-direct {v2}, Lv/q;-><init>()V

    .line 49
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    const-wide/16 v2, 0xf

    .line 50
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lv/r;

    invoke-direct {v2, p1, v1}, Lv/r;-><init>(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;)V

    .line 51
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 55
    :cond_15
    :goto_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 56
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_4

    .line 58
    :cond_16
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 60
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 61
    sget-boolean v5, Lcom/android/tools/r8/ir/optimize/M;->c:Z

    if-nez v5, :cond_18

    if-eqz v4, :cond_17

    goto :goto_5

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_18
    :goto_5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 63
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/M;->c:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/M;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1b
    :goto_6
    return-void
.end method
