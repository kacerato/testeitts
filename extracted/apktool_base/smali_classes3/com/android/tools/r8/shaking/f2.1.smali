.class public final Lcom/android/tools/r8/shaking/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/f2;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/f2;->a:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/w4;)Lcom/android/tools/r8/graph/x0;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f2;->a:Lcom/android/tools/r8/internal/nJ;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->i()Ljava/util/Set;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/shaking/f2;->a:Lcom/android/tools/r8/internal/nJ;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    .line 14
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v8, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v8, p0, Lcom/android/tools/r8/shaking/f2;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v8

    iget-object v9, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v8

    or-int/2addr v6, v8

    .line 19
    iget-object v8, p0, Lcom/android/tools/r8/shaking/f2;->b:Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v5, v0, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 22
    new-instance v4, Lcom/android/tools/r8/shaking/ic;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/ic;-><init>(Lcom/android/tools/r8/shaking/f2;)V

    new-instance v6, Lcom/android/tools/r8/shaking/jc;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/shaking/jc;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v4, v6}, Lcom/android/tools/r8/shaking/V4;->b(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 24
    new-instance v0, Lcom/android/tools/r8/graph/w4$a;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/w4$a;-><init>(Lcom/android/tools/r8/graph/w4;)V

    .line 25
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
