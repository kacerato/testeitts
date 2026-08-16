.class public final Lcom/android/tools/r8/internal/UA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fB;

.field public final b:Lcom/android/tools/r8/internal/bT;

.field public final c:Lcom/android/tools/r8/internal/v8;

.field public final d:Lcom/android/tools/r8/internal/PS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/UA;->a:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    iput-object p1, p0, Lcom/android/tools/r8/internal/UA;->c:Lcom/android/tools/r8/internal/v8;

    new-instance v0, Lcom/android/tools/r8/internal/PS;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p2

    invoke-direct {v0, v1, p2, p4, p3}, Lcom/android/tools/r8/internal/PS;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p2, Lcom/android/tools/r8/internal/dH;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object p2, v0, Lcom/android/tools/r8/internal/PS;->j:Lcom/android/tools/r8/internal/dH;

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)Lcom/android/tools/r8/internal/WS;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/UA;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/UA;-><init>(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->C()V

    .line 3
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v1, p3, p1}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 6
    iget-object v3, v0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v3, v2, p2}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, v0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    .line 9
    iget-object v4, v4, Lcom/android/tools/r8/internal/PS;->n:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 11
    sget-boolean v3, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bT;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v3, v2, p2}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    iget-object v4, v0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    .line 19
    iget-object v4, v4, Lcom/android/tools/r8/internal/PS;->n:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 21
    sget-boolean v3, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UA;->a()V

    .line 24
    iget-object p0, v0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/TA;)[I
    .locals 9

    .line 96
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/hY0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/hY0;-><init>(Lcom/android/tools/r8/internal/TA;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 99
    new-instance p1, Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jd0;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 100
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 101
    new-instance v5, Lcom/android/tools/r8/internal/iY0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/iY0;-><init>()V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/TH;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/TH;->add(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-array p0, v0, [I

    :cond_1
    if-ge v2, v0, :cond_6

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 104
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Jd0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/TH;

    .line 105
    sget-boolean v4, Lcom/android/tools/r8/internal/UA;->e:Z

    if-nez v4, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 106
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    add-int/lit8 v6, v2, 0x1

    :goto_1
    add-int v7, v2, v4

    if-ge v6, v7, :cond_5

    .line 107
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 108
    sget-boolean v8, Lcom/android/tools/r8/internal/UA;->e:Z

    if-nez v8, :cond_4

    if-ne v5, v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    :cond_5
    :goto_3
    invoke-interface {v3}, Lcom/android/tools/r8/internal/TH;->iterator()Lcom/android/tools/r8/internal/UH;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 110
    aput v2, p0, v4

    move v2, v5

    goto :goto_4

    :cond_6
    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/TH;
    .locals 1

    new-instance p0, Lcom/android/tools/r8/internal/CH;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)I
    .locals 8

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/jY0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/jY0;-><init>(Lcom/android/tools/r8/internal/bT;)V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/UA;->a(Ljava/util/List;Lcom/android/tools/r8/internal/TA;)[I

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/tools/r8/internal/xw0;

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/f60;

    .line 90
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    move v5, v1

    .line 91
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 92
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 93
    aget v7, v0, v5

    aput-object v6, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v7, 0xd2

    invoke-virtual {v4, v7, v6, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final a()V
    .locals 12

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/UA;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 26
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 27
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 28
    iget-object v3, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iput-object v3, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 29
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/bT;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/UA;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v4

    add-int/2addr v2, v4

    .line 31
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v4

    .line 33
    iget-object v5, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    iget-object v6, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    .line 34
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v6

    new-instance v7, Lcom/android/tools/r8/internal/N8;

    .line 35
    iget-object v8, v4, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 36
    iget-object v4, v4, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 37
    iget-object v9, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/tools/r8/internal/kY0;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/internal/kY0;-><init>(Lcom/android/tools/r8/internal/bT;)V

    invoke-static {v4, v10}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 38
    iget-object v4, v5, Lcom/android/tools/r8/internal/PS;->m:Lcom/android/tools/r8/internal/dH;

    .line 39
    invoke-virtual {v4, v6, v7}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v3

    .line 41
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 42
    sget-boolean v4, Lcom/android/tools/r8/internal/UA;->e:Z

    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    .line 43
    sget-boolean v6, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v6, :cond_4

    .line 44
    iget v6, v5, Lcom/android/tools/r8/internal/PS;->g:I

    .line 45
    iget v5, v5, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr v6, v5

    if-ne v6, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    if-nez v4, :cond_7

    .line 48
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    .line 49
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lcom/android/tools/r8/internal/bT;->b(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 50
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    iget-object v6, p0, Lcom/android/tools/r8/internal/UA;->c:Lcom/android/tools/r8/internal/v8;

    .line 52
    iget-object v6, v6, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    .line 53
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/s8;

    .line 54
    iput-object v6, v4, Lcom/android/tools/r8/internal/PS;->i:Lcom/android/tools/r8/internal/s8;

    .line 55
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-boolean v7, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v7, :cond_9

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_9
    :goto_4
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v7

    if-nez v7, :cond_a

    .line 58
    iput-object v6, v4, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    .line 59
    :cond_a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 60
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    .line 62
    new-array v8, v7, [I

    .line 63
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v1

    :goto_5
    if-ge v9, v7, :cond_b

    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 65
    iget-object v11, v4, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/bT;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 66
    iget-object v11, v4, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 67
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/bT;->a()Lcom/android/tools/r8/internal/uT;

    move-result-object v11

    .line 68
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object v11

    .line 69
    invoke-virtual {v11, v2, v10}, Lcom/android/tools/r8/internal/mT;->a(ILjava/lang/Object;)I

    move-result v10

    .line 70
    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 71
    :cond_b
    iget-object v4, v4, Lcom/android/tools/r8/internal/PS;->o:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v4, v2, v8}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_c
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 73
    invoke-static {v0}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 74
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-ne v6, v4, :cond_d

    .line 75
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    .line 76
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 77
    iget-object v4, v4, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v5, 0xd3

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/wT;->a(I)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 78
    :cond_d
    iget-object v4, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/PS;)V

    goto :goto_6

    .line 79
    :cond_e
    sget-boolean v3, Lcom/android/tools/r8/internal/UA;->e:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/UA;->d:Lcom/android/tools/r8/internal/PS;

    .line 80
    sget-boolean v4, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v4, :cond_10

    .line 81
    iget v4, v3, Lcom/android/tools/r8/internal/PS;->g:I

    .line 82
    iget v3, v3, Lcom/android/tools/r8/internal/PS;->f:I

    add-int/2addr v4, v3

    if-ne v4, v2, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    .line 84
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/UA;->b:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bT;->b()Z

    move-result v0

    if-nez v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/UA;->a:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/lY0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/lY0;-><init>(Lcom/android/tools/r8/internal/UA;)V

    invoke-interface {v0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_12
    return-void
.end method
