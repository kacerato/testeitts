.class public final Lcom/android/tools/r8/dex/k0;
.super Lcom/android/tools/r8/dex/i0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Collection;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/dex/i0;-><init>(Lcom/android/tools/r8/dex/k;)V

    iput-object p2, p0, Lcom/android/tools/r8/dex/k0;->d:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/android/tools/r8/dex/k0;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/dex/t0;

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 24
    iget-object p2, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/dex/k0;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 4
    iget-boolean v4, p0, Lcom/android/tools/r8/dex/k0;->e:Z

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 10
    new-instance v5, Lu/b1;

    invoke-direct {v5}, Lu/b1;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v10, Lcom/android/tools/r8/dex/t0;

    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v9

    const/4 v8, 0x0

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 13
    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, v10}, Lcom/android/tools/r8/dex/i0;->a(Lcom/android/tools/r8/dex/t0;)V

    .line 15
    invoke-virtual {v10, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, v10, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Lu/c1;

    invoke-direct {v2, v0}, Lu/c1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    return-object v0
.end method
