.class public interface abstract Lcom/android/tools/r8/internal/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/H2;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/Vk0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Vk0;-><init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V

    .line 27
    new-instance v3, Lcom/android/tools/r8/internal/fc1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/fc1;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/gc1;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/gc1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Vk0;)Ljava/util/LinkedList;
    .locals 0

    .line 29
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/android/tools/r8/internal/gd;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/Vk0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Vk0;-><init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    .line 8
    invoke-interface {p3, v1, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/gd;->a(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 14
    sget-boolean v3, Lcom/android/tools/r8/internal/ed;->a:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 16
    new-instance v5, Lcom/android/tools/r8/internal/Vk0;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    :goto_4
    invoke-direct {v5, v6, v4}, Lcom/android/tools/r8/internal/Vk0;-><init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V

    .line 19
    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 20
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    if-nez v3, :cond_8

    if-eqz v4, :cond_7

    goto :goto_5

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_5
    if-nez v3, :cond_a

    .line 22
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_a
    :goto_6
    invoke-interface {p3, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vk0;Ljava/util/LinkedList;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/Vk0;

    .line 34
    iget-object v1, p2, Lcom/android/tools/r8/internal/Vk0;->a:Lcom/android/tools/r8/graph/k3;

    .line 35
    iget-object v2, p2, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/Vk0;->b:Lcom/android/tools/r8/graph/M2;

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Vk0;-><init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/ec1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ec1;-><init>()V

    .line 37
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    .line 38
    invoke-virtual {p0, p3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Vk0;)Ljava/util/LinkedList;
    .locals 0

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/g1;)V
.end method

.method public abstract a()[Lcom/android/tools/r8/graph/g1;
.end method
