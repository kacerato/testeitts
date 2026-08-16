.class public final Lcom/android/tools/r8/internal/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/s2;

.field public final b:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/s2;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/s2;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c3;->a:Lcom/android/tools/r8/shaking/s2;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/c3;->b:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Y50;Lcom/android/tools/r8/shaking/N;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/X50;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/tools/r8/graph/D5;

    .line 3
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/tools/r8/graph/y5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/y5;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 9
    iput-object v3, v2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    .line 10
    iget-object v3, v2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 11
    invoke-interface {v3}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/VY;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v4, Lcom/android/tools/r8/internal/N1;->b:Lcom/android/tools/r8/internal/N1;

    .line 14
    iget-object v5, v3, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    iput-object v4, v3, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    goto :goto_2

    .line 16
    :cond_3
    new-instance v5, Lcom/android/tools/r8/internal/I1;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/I1;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v6, v3, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 17
    invoke-virtual {v5, v6, v4, v1}, Lcom/android/tools/r8/internal/I1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 18
    iput-object v1, v3, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 19
    :goto_2
    iput-object v3, v2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/e3;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/c3;->a:Lcom/android/tools/r8/shaking/s2;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/c3;->b:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/d3;->a:Lcom/android/tools/r8/internal/d3;

    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/f3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c3;->a:Lcom/android/tools/r8/shaking/s2;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/c3;->b:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/android/tools/r8/internal/w61;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/w61;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/f3;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Y50;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/c3;->b:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/c3;->a:Lcom/android/tools/r8/shaking/s2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
