.class public final Lcom/android/tools/r8/internal/g3;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/n6;

.field public final g:Lcom/android/tools/r8/internal/eA;

.field public final h:Lcom/android/tools/r8/internal/eA;

.field public final i:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/g3;->g:Lcom/android/tools/r8/internal/eA;

    new-instance v0, Lcom/android/tools/r8/internal/eA;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/g3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    invoke-virtual {p2, v4, v2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    if-eq v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/tools/r8/internal/g3;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v5, v2, v4, v3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    sget-boolean v3, Lcom/android/tools/r8/internal/g3;->j:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    invoke-virtual {p2, v5, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    if-ne v5, v4, :cond_6

    iget-object v4, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v4, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    invoke-static {p1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/AbstractMap;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-static {p1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/AbstractMap;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Hz;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Nb1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Nb1;-><init>(Lcom/android/tools/r8/internal/g3;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/g3;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 11
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->g:Lcom/android/tools/r8/internal/eA;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->h:Lcom/android/tools/r8/internal/eA;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/l6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/g3;->f:Lcom/android/tools/r8/internal/n6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 4
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method
