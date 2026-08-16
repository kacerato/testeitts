.class public final Lcom/android/tools/r8/internal/XZ;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/XZ;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p3, p1, :cond_0

    return-object p3

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/XZ;->c:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Cq;
    .locals 3

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/internal/XZ;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    .line 48
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/XZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V

    .line 50
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 52
    sget-boolean v2, Lcom/android/tools/r8/internal/XZ;->d:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_3
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/XZ;->a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V

    .line 54
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/XZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/a21;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/a21;-><init>(Lcom/android/tools/r8/internal/XZ;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/b21;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/b21;-><init>(Lcom/android/tools/r8/internal/XZ;)V

    .line 8
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Cq;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/AA;

    .line 11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Cq;

    .line 12
    iget-object v7, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/F2;

    .line 16
    iget-object v9, v5, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    iget-object v7, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 18
    new-instance v8, Lcom/android/tools/r8/internal/Dq;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 19
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/F2;

    .line 20
    iget-object v10, v5, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 21
    iget-object v10, v8, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_4
    iget-object v7, v8, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/F2;

    .line 24
    iget-object v8, v5, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 25
    iget-object v8, v5, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 26
    iget-object v8, p0, Lcom/android/tools/r8/internal/XZ;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v7, v8, :cond_5

    goto/16 :goto_2

    .line 27
    :cond_5
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/Cq;->putAll(Ljava/util/Map;)V

    .line 28
    iget-object v3, v6, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 29
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 30
    :cond_6
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/Cq;->putAll(Ljava/util/Map;)V

    .line 31
    iget-object v3, v6, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_7
    new-instance v4, Lcom/android/tools/r8/internal/AA;

    .line 34
    invoke-direct {v4}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 35
    iget-object v5, v4, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 39
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40
    invoke-static {v0}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 4

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 56
    iget-object v2, p0, Lcom/android/tools/r8/internal/XZ;->b:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 59
    :goto_1
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/F7;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/c21;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/c21;-><init>(Lcom/android/tools/r8/internal/XZ;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 42
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Z11;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/Z11;-><init>(Lcom/android/tools/r8/internal/XZ;Lcom/android/tools/r8/graph/H2;)V

    .line 44
    invoke-virtual {p1, p3, v0, v1}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Cq;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/XZ;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    sget-boolean v2, Lcom/android/tools/r8/internal/XZ;->d:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/XZ;->a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/XZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoDefaultInterfaceMethodMerging"

    return-object v0
.end method
