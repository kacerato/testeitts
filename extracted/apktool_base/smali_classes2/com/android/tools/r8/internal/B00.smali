.class public final Lcom/android/tools/r8/internal/B00;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/b80;

.field public final c:Lcom/android/tools/r8/graph/c4;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B00;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B00;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B00;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/b80;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/B00;->b:Lcom/android/tools/r8/internal/b80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/B00;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 51
    iget-object v1, p0, Lcom/android/tools/r8/internal/B00;->c:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/Mz0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Mz0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/Nz0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/Nz0;-><init>(Lcom/android/tools/r8/internal/B00;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lcom/android/tools/r8/internal/Oz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Oz0;-><init>()V

    .line 54
    new-instance v2, Lcom/android/tools/r8/internal/Gz0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Gz0;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    .line 55
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/B00;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/internal/Dq;
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    return-object p1

    .line 62
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 64
    new-instance v3, Lcom/android/tools/r8/internal/Iz0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Iz0;-><init>()V

    .line 65
    new-instance v4, Lcom/android/tools/r8/internal/Jz0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/Jz0;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    .line 66
    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 67
    iget-object v3, p0, Lcom/android/tools/r8/internal/B00;->c:Lcom/android/tools/r8/graph/c4;

    new-instance v4, Lcom/android/tools/r8/internal/Kz0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Kz0;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/Lz0;

    invoke-direct {v5, p0, v0}, Lcom/android/tools/r8/internal/Lz0;-><init>(Lcom/android/tools/r8/internal/B00;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/B00;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/AA;

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Dq;

    .line 8
    iget-object v6, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    iget-object v6, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    goto :goto_3

    .line 10
    :cond_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/B00;->b:Lcom/android/tools/r8/internal/b80;

    .line 11
    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/i6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 12
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 13
    iget-object v9, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_1
    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/B00;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v5, v5, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 17
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/F2;

    .line 18
    iget-object v8, v6, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    .line 20
    iget-object v6, v4, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 21
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 22
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 23
    iget-object v8, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 24
    iget-object v8, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    goto :goto_6

    .line 25
    :cond_4
    iget-object v8, p0, Lcom/android/tools/r8/internal/B00;->b:Lcom/android/tools/r8/internal/b80;

    .line 26
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/i6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 27
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/H2;

    .line 28
    iget-object v10, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v9, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 29
    :cond_5
    :goto_6
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 30
    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 31
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/B00;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v6

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/B00;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v7, v7, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 34
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/F2;

    .line 35
    iget-object v9, v6, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    :cond_a
    if-nez v4, :cond_b

    .line 36
    new-instance v3, Lcom/android/tools/r8/internal/AA;

    .line 37
    invoke-direct {v3}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 38
    iget-object v4, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Lcom/android/tools/r8/internal/Dq;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 41
    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 42
    :cond_b
    iget-object v3, v4, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/Dq;

    .line 44
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/B00;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 46
    iget-object v3, v4, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 47
    :cond_c
    invoke-static {v0}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/B00;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 59
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Fz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Fz0;-><init>()V

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/Gz0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Gz0;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/B00;->c:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/Hz0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/Hz0;-><init>(Lcom/android/tools/r8/internal/B00;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/E0;)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/B00;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/B00;->b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/B00;->b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/B00;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoWeakerAccessPriviledges"

    return-object v0
.end method
