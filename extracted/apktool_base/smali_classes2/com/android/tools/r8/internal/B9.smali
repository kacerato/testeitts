.class public final Lcom/android/tools/r8/internal/B9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/graph/G;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/G;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ka;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)V
    .locals 3

    .line 88
    new-instance v0, Lcom/android/tools/r8/internal/GA0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/GA0;-><init>(Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    .line 89
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 91
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Db;

    .line 92
    sget-boolean v1, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v1, :cond_1

    .line 93
    iget-object v1, v0, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    .line 94
    iget-object v2, v0, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/C9;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/e9;)Z
    .locals 3

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/internal/e9;->g:Z

    if-nez v0, :cond_1

    .line 39
    iget v1, p2, Lcom/android/tools/r8/internal/f9;->a:I

    if-ltz v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 41
    iget v1, p2, Lcom/android/tools/r8/internal/f9;->a:I

    .line 42
    iget v2, p2, Lcom/android/tools/r8/internal/f9;->c:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 43
    iget v1, p2, Lcom/android/tools/r8/internal/f9;->b:I

    if-ltz v1, :cond_5

    .line 44
    iget v2, p2, Lcom/android/tools/r8/internal/f9;->a:I

    if-gt v2, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 45
    iget v1, p2, Lcom/android/tools/r8/internal/f9;->b:I

    if-ltz v1, :cond_7

    .line 46
    iget v2, p2, Lcom/android/tools/r8/internal/f9;->c:I

    if-gt v1, v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 47
    iget-object v1, p2, Lcom/android/tools/r8/internal/f9;->d:Ljava/util/LinkedHashSet;

    .line 48
    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p2, Lcom/android/tools/r8/internal/f9;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    if-nez v0, :cond_d

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    const/4 v1, 0x0

    .line 51
    iget-object v0, v0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 53
    sget-boolean v1, Lcom/android/tools/r8/internal/C9;->c:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 54
    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/f9;

    if-eq p2, p0, :cond_d

    .line 55
    iget-object p0, p2, Lcom/android/tools/r8/internal/f9;->d:Ljava/util/LinkedHashSet;

    .line 56
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, p2, Lcom/android/tools/r8/internal/f9;->e:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->r()Lcom/android/tools/r8/internal/nJ$c;

    move-result-object p0

    .line 59
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/nJ$c;->a:Z

    if-eqz p0, :cond_c

    goto :goto_6

    .line 60
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_6
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/Db;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/ka;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)V
    .locals 2

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/HA0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/HA0;-><init>(Lcom/android/tools/r8/internal/ka;)V

    .line 16
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/Db;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W9;ILcom/android/tools/r8/internal/e9;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)I
    .locals 7

    .line 2
    iput p2, p3, Lcom/android/tools/r8/internal/f9;->a:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/ka;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/ka;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)V

    .line 6
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-virtual {p4}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Db;

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/DA0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/DA0;-><init>(Ljava/util/Map;)V

    .line 11
    iget-object v4, v2, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 13
    iget-object v2, v2, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/ka;

    invoke-interface {v3, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/internal/Db;->e:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of v1, p1, Lcom/android/tools/r8/internal/ka;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    .line 20
    invoke-static {v1, p4, p5}, Lcom/android/tools/r8/internal/B9;->b(Lcom/android/tools/r8/internal/ka;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)V

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    iget v1, p3, Lcom/android/tools/r8/internal/f9;->b:I

    if-ltz v1, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    iput p2, p3, Lcom/android/tools/r8/internal/f9;->b:I

    .line 24
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    add-int/lit8 v2, p2, 0x1

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_a

    .line 29
    iput p2, p3, Lcom/android/tools/r8/internal/f9;->c:I

    .line 30
    iget-object p4, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    add-int/lit8 p5, p2, 0x1

    .line 31
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_9

    .line 32
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/W9;

    goto :goto_5

    :cond_9
    const/4 p4, 0x0

    .line 33
    :goto_5
    new-instance p5, Lcom/android/tools/r8/internal/EA0;

    invoke-direct {p5, p0, p3}, Lcom/android/tools/r8/internal/EA0;-><init>(Lcom/android/tools/r8/internal/B9;Lcom/android/tools/r8/internal/e9;)V

    invoke-virtual {p1, p5, p4}, Lcom/android/tools/r8/internal/W9;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/W9;)V

    .line 34
    new-instance p1, Lcom/android/tools/r8/internal/FA0;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/internal/FA0;-><init>(Lcom/android/tools/r8/internal/B9;Lcom/android/tools/r8/internal/e9;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return p2

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    add-int/lit8 p2, p2, 0x1

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    goto :goto_2
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/C9;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B9;->a()V

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B9;->b()V

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 64
    iget-object v0, v0, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    instance-of v1, v0, Lcom/android/tools/r8/internal/ka;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/C9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/C9;-><init>(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/G;)V

    .line 71
    sget-boolean v2, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/BA0;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/internal/BA0;-><init>(Lcom/android/tools/r8/internal/C9;Lcom/android/tools/r8/internal/nJ;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final a()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/W9;)V

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 79
    :goto_1
    new-instance v4, Lcom/android/tools/r8/internal/IA0;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/IA0;-><init>(Lcom/android/tools/r8/internal/B9;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/internal/W9;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/W9;)V

    .line 80
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->l()Lcom/android/tools/r8/internal/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ja;->V()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/W9;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Db;

    .line 83
    iget-object v2, v1, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/W9;)V

    .line 85
    iget-object v2, v1, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/W9;)V

    .line 87
    new-instance v2, Lcom/android/tools/r8/internal/JA0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/JA0;-><init>(Lcom/android/tools/r8/internal/B9;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Db;->a(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/CA0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/CA0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/e9;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/e9;

    .line 104
    sget-boolean v0, Lcom/android/tools/r8/internal/e9;->g:Z

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p1, Lcom/android/tools/r8/internal/f9;->f:Ljava/util/LinkedHashMap;

    .line 106
    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 107
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/f9;->f:Ljava/util/LinkedHashMap;

    .line 108
    invoke-virtual {v0, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p2, p3, Lcom/android/tools/r8/internal/f9;->e:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/e9;Lcom/android/tools/r8/internal/W9;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/e9;

    .line 100
    iget-object p2, p2, Lcom/android/tools/r8/internal/f9;->d:Ljava/util/LinkedHashSet;

    .line 101
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 9

    .line 2
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Db;

    .line 5
    iget-object v2, v1, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    .line 6
    new-instance v3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    move v2, v0

    .line 9
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 10
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/B9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/e9;

    if-eqz v3, :cond_1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/W9;ILcom/android/tools/r8/internal/e9;Ljava/util/ArrayDeque;Ljava/util/IdentityHashMap;)I

    move-result v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/B9;->c:Z

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 14
    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method
