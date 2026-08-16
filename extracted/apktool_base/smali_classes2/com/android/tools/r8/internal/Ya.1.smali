.class public final Lcom/android/tools/r8/internal/Ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Je0;


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/Ku0;

.field public d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/LinkedList;

.field public final h:Ljava/util/LinkedList;

.field public final i:Ljava/util/PriorityQueue;

.field public j:Ljava/util/TreeSet;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Ku0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->g:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->h:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ya;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Ya;->m:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)I
    .locals 1

    .line 23
    instance-of v0, p0, Lcom/android/tools/r8/internal/hx;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lcom/android/tools/r8/internal/hx;

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    .line 26
    invoke-static {p0}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result p0

    return p0

    .line 27
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 32
    iget p0, p0, Lcom/android/tools/r8/internal/FT;->k:I

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;I)I
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result p1

    return p1
.end method

.method public final a(Z)I
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/Ya;->m:I

    if-eq v1, v2, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 39
    :cond_2
    iget p1, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    return p1

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 41
    :cond_4
    iget p1, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    return p1
.end method

.method public final a()Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/u31;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/u31;-><init>(Lcom/android/tools/r8/internal/Ya;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xa;

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/FT;)V
    .locals 3

    .line 42
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/FT;->e(I)V

    .line 43
    iget v0, p2, Lcom/android/tools/r8/internal/FT;->k:I

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    add-int/2addr v0, p1

    .line 50
    iget p1, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    if-lt v0, p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 51
    iput p1, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    .line 52
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/Ya;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/Ya;->l:I

    .line 53
    iget-object p1, p2, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f60;

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->Q()Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v1, v0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-object v1, v0, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 59
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p2, v2}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 62
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p2, v2}, Lcom/android/tools/r8/internal/FT;->a(Lcom/android/tools/r8/internal/FT;Ljava/util/PriorityQueue;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ya;->g:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;ILjava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 65
    new-instance v3, Lcom/android/tools/r8/internal/dH;

    const/16 v4, 0x10

    .line 66
    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    sget-boolean v6, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v6, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 69
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 70
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v8

    .line 71
    new-instance v9, Lcom/android/tools/r8/internal/dH;

    iget-object v10, v8, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    .line 72
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 73
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 74
    new-instance v10, Ljava/util/ArrayDeque;

    iget-object v8, v8, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v8

    sub-int/2addr v8, v2

    .line 76
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v11

    :goto_2
    add-int/lit8 v8, v8, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ltz v8, :cond_13

    .line 77
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 78
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    .line 79
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 80
    iget-object v15, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    goto/16 :goto_4

    .line 82
    :cond_2
    instance-of v15, v14, Lcom/android/tools/r8/internal/JT;

    if-eqz v15, :cond_5

    .line 83
    iget-object v12, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v12}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v12

    .line 85
    sget-boolean v13, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v13, :cond_4

    invoke-virtual {v9, v12}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 86
    :cond_4
    :goto_3
    invoke-virtual {v9, v12}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v10, v12}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    :cond_5
    instance-of v13, v14, Lcom/android/tools/r8/internal/Oo0;

    if-eqz v13, :cond_6

    .line 88
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-static {v12}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v12

    .line 89
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v9, v12, v13}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 90
    :cond_6
    instance-of v13, v14, Lcom/android/tools/r8/internal/v60;

    if-eqz v13, :cond_7

    .line 91
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 92
    :cond_7
    instance-of v13, v14, Lcom/android/tools/r8/internal/tt;

    if-eqz v13, :cond_8

    .line 93
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v10, v12}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 94
    :cond_8
    instance-of v13, v14, Lcom/android/tools/r8/internal/st;

    if-eqz v13, :cond_9

    .line 95
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Ju0;

    .line 96
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Ju0;

    .line 97
    invoke-virtual {v10, v12}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v10, v13}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v10, v12}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 100
    :cond_9
    instance-of v13, v14, Lcom/android/tools/r8/internal/Zq0;

    if-eqz v13, :cond_a

    .line 101
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Ju0;

    .line 102
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Ju0;

    .line 103
    invoke-virtual {v10, v12}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v10, v13}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 105
    :cond_a
    instance-of v13, v14, Lcom/android/tools/r8/internal/ej;

    if-eqz v13, :cond_b

    .line 106
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-static {v12}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v12

    .line 107
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v9, v12, v13}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 108
    :cond_b
    :goto_4
    iget-object v13, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v12

    :goto_5
    if-ltz v13, :cond_d

    .line 110
    iget-object v12, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 112
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 113
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    :cond_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 114
    :cond_d
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    if-nez v12, :cond_e

    goto/16 :goto_2

    .line 115
    :cond_e
    iget-object v13, v0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v13

    .line 116
    sget-boolean v14, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v14, :cond_10

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 117
    :cond_10
    :goto_6
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 118
    invoke-static {v12}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v12

    .line 119
    invoke-virtual {v9, v12, v13}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 120
    :cond_11
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 121
    invoke-virtual {v10, v13}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 122
    :cond_12
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    .line 123
    :cond_13
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 124
    new-instance v8, Lcom/android/tools/r8/internal/dH;

    .line 125
    invoke-direct {v8, v4}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    goto :goto_8

    .line 126
    :cond_14
    sget-boolean v8, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v8, :cond_16

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v12, :cond_15

    goto :goto_7

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 127
    :cond_16
    :goto_7
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    .line 128
    :goto_8
    new-instance v11, Lcom/android/tools/r8/internal/dI;

    .line 129
    iget v14, v8, Lcom/android/tools/r8/internal/dH;->h:I

    mul-int/lit8 v14, v14, 0x2

    .line 130
    invoke-direct {v11, v14}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 131
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/dH;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/android/tools/r8/internal/dI;->a(Lcom/android/tools/r8/internal/JH;)Z

    .line 132
    iget-object v7, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 133
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    move v8, v13

    :goto_9
    if-eqz v7, :cond_1d

    add-int/2addr v8, v12

    if-le v8, v2, :cond_17

    goto :goto_c

    .line 134
    :cond_17
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    if-eqz v14, :cond_1a

    .line 135
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 136
    invoke-static {v14}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v14

    .line 137
    sget-boolean v15, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v15, :cond_19

    invoke-virtual {v11, v14}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v15

    if-eqz v15, :cond_18

    goto :goto_a

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 138
    :cond_19
    :goto_a
    invoke-virtual {v11, v14}, Lcom/android/tools/r8/internal/dI;->remove(I)Z

    .line 139
    :cond_1a
    iget-object v14, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v4, v13

    :goto_b
    if-ge v4, v15, :cond_1c

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v4, v4, 0x1

    check-cast v16, Lcom/android/tools/r8/internal/xw0;

    .line 141
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 142
    invoke-static/range {v16 .. v16}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v12

    .line 143
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    :cond_1b
    const/4 v12, 0x1

    goto :goto_b

    .line 144
    :cond_1c
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    const/16 v4, 0x10

    const/4 v12, 0x1

    goto :goto_9

    .line 145
    :cond_1d
    :goto_c
    new-instance v4, Lcom/android/tools/r8/internal/dH;

    .line 146
    iget v7, v9, Lcom/android/tools/r8/internal/dH;->h:I

    .line 147
    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 148
    new-instance v7, Lcom/android/tools/r8/internal/cI;

    invoke-direct {v7, v11}, Lcom/android/tools/r8/internal/cI;-><init>(Lcom/android/tools/r8/internal/dI;)V

    .line 149
    :goto_d
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/cI;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 150
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/cI;->r()I

    move-result v8

    .line 151
    sget-boolean v11, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v11, :cond_1f

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_e

    :cond_1e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 152
    :cond_1f
    :goto_e
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v4, v8, v11}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 153
    :cond_20
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V

    .line 154
    new-array v4, v13, [Lcom/android/tools/r8/internal/Ju0;

    .line 155
    invoke-virtual {v10, v4}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/internal/Ju0;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 156
    invoke-virtual {v0, v5, v4}, Lcom/android/tools/r8/internal/Ya;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    const/16 v4, 0x10

    goto/16 :goto_1

    .line 157
    :cond_21
    sget-boolean v2, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v2, :cond_23

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ya;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_f

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 158
    :cond_23
    :goto_f
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ya;->e:Ljava/util/HashMap;

    new-instance v4, Lcom/android/tools/r8/internal/Xa;

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/Xa;-><init>(Lcom/android/tools/r8/internal/dH;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V
    .locals 5

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    return-void

    .line 161
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v0, :cond_2

    .line 162
    iget v0, p1, Lcom/android/tools/r8/internal/dH;->h:I

    iget v1, p2, Lcom/android/tools/r8/internal/dH;->h:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 165
    new-instance v1, Lcom/android/tools/r8/internal/WG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 166
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/RG;

    .line 167
    invoke-interface {v0}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ju0;

    .line 169
    sget-boolean v3, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v3, :cond_5

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 170
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v3, v0, v4}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v3

    if-eq v3, v0, :cond_3

    .line 171
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 4

    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 174
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 175
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ju0;

    .line 177
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v2

    if-eq v2, v1, :cond_3

    .line 178
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    iget-object v1, p2, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    move v3, v1

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ju0;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Ju0;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, v0, Lcom/android/tools/r8/internal/bY;

    .line 11
    iget-object v2, p2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v2, v2, Lcom/android/tools/r8/internal/bY;

    if-eq v0, v2, :cond_4

    return v1

    .line 14
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, v0, Lcom/android/tools/r8/internal/bY;

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    .line 20
    iget-object p2, p2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eq p1, p2, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 97
    new-instance v1, Lcom/android/tools/r8/internal/dH;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 98
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 100
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/eB;

    iget-object p1, p1, Lcom/android/tools/r8/internal/eB;->c:Ljava/util/ArrayDeque;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 104
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Xa;

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/Xa;-><init>(Lcom/android/tools/r8/internal/dH;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final b()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    instance-of v3, v1, Lcom/android/tools/r8/internal/ko0;

    if-nez v3, :cond_2

    instance-of v3, v1, Lcom/android/tools/r8/internal/lo0;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    xor-int/2addr v2, v3

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Z)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 9
    iget v6, v0, Lcom/android/tools/r8/internal/fB;->h:I

    .line 10
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-boolean v8, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v8, :cond_5

    if-eq v6, v5, :cond_4

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_5
    :goto_5
    iput v6, v7, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 15
    :cond_6
    iput v6, v0, Lcom/android/tools/r8/internal/fB;->h:I

    goto :goto_3

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->e()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->f:Ljava/util/ArrayList;

    invoke-static {v3, v4, v0, v6}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 19
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 23
    iget-object v3, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ya;->a(Z)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/tools/r8/internal/Ya;->a(ILcom/android/tools/r8/internal/FT;)V

    goto :goto_6

    .line 26
    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/Ya;->k:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/Ya;->m:I

    .line 27
    :goto_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->i:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FT;

    .line 29
    sget-boolean v2, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v2, :cond_a

    .line 30
    iget-object v2, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_a
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->e()I

    move-result v2

    .line 33
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->g:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 34
    :cond_b
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v6, -0x80000000

    if-eqz v4, :cond_11

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v7

    if-lt v2, v7, :cond_d

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 38
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 39
    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ$p;->e:Z

    if-eqz v6, :cond_c

    goto :goto_9

    .line 40
    :cond_c
    iget v6, v4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 41
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, v4, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 44
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 45
    :cond_d
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/FT;->b(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 46
    sget-boolean v7, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v7, :cond_f

    .line 47
    iget v7, v4, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v7, v6, :cond_e

    goto :goto_a

    .line 48
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_f
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 50
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->h:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 52
    iget-object v6, v6, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ$p;->e:Z

    if-eqz v6, :cond_10

    goto :goto_9

    .line 53
    :cond_10
    iget v6, v4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 54
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v4, v4, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 57
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 58
    :cond_11
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ya;->h:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/FT;

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/FT;->b()I

    move-result v7

    if-lt v2, v7, :cond_13

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 63
    :cond_13
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/FT;->b(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 65
    sget-boolean v7, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v7, :cond_15

    .line 66
    iget v7, v4, Lcom/android/tools/r8/internal/FT;->k:I

    if-eq v7, v6, :cond_14

    goto :goto_c

    .line 67
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_15
    :goto_c
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ya;->g:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    iget v7, v4, Lcom/android/tools/r8/internal/FT;->k:I

    .line 70
    iget-object v8, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, v4, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 73
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 74
    :cond_16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->f()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_d

    .line 75
    :cond_17
    iget-object v2, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v2

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->c()I

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v2, :cond_18

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    add-int/lit8 v6, v3, 0x1

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 80
    :cond_18
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->h:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/FT;

    .line 81
    invoke-virtual {v6, v3, v2}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 82
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v6

    if-eq v6, v5, :cond_19

    goto :goto_d

    .line 83
    :cond_1a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FT;->c()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Ya;->a(ILcom/android/tools/r8/internal/FT;)V

    goto/16 :goto_7

    .line 84
    :cond_1b
    :goto_d
    iget-object v2, v0, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v2

    .line 86
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 87
    :goto_e
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Ya;->a(Z)I

    move-result v4

    .line 88
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->h:Ljava/util/LinkedList;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/FT;

    .line 89
    invoke-virtual {v7, v4, v2}, Lcom/android/tools/r8/internal/FT;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 90
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/FT;->c(Lcom/android/tools/r8/internal/FT;)I

    move-result v7

    if-eq v7, v5, :cond_1c

    .line 91
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 92
    :cond_1d
    iput-object v3, p0, Lcom/android/tools/r8/internal/Ya;->j:Ljava/util/TreeSet;

    .line 93
    invoke-virtual {p0, v4, v0}, Lcom/android/tools/r8/internal/Ya;->a(ILcom/android/tools/r8/internal/FT;)V

    goto/16 :goto_7

    .line 94
    :cond_1e
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_1f

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    invoke-static {v1, v0, p0, v2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/hC;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Je0;Ljava/util/IdentityHashMap;)V

    :cond_1f
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 3

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object p2

    .line 108
    sget-boolean v0, Lcom/android/tools/r8/internal/Ya;->n:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    .line 109
    iget v1, v1, Lcom/android/tools/r8/internal/dH;->h:I

    .line 110
    iget-object v2, p2, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    .line 111
    iget v2, v2, Lcom/android/tools/r8/internal/dH;->h:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    iget-object v2, p2, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p1, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p2, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ya;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/graph/y;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ya;->l:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ya;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    return-object v0
.end method
