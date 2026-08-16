.class public abstract Lcom/android/tools/r8/internal/O50;
.super Lcom/android/tools/r8/internal/D1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/D1<",
        "Lcom/android/tools/r8/internal/O50;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Vf;Z)Lcom/android/tools/r8/internal/O50;
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 5

    check-cast p2, Lcom/android/tools/r8/internal/O50;

    instance-of p1, p0, Lcom/android/tools/r8/internal/w7;

    if-nez p1, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Lcom/android/tools/r8/internal/xv0;

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    instance-of p1, p2, Lcom/android/tools/r8/internal/w7;

    if-nez p1, :cond_a

    instance-of p1, p0, Lcom/android/tools/r8/internal/xv0;

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/rg;->b(Lcom/android/tools/r8/internal/rg;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/rg;->b(Lcom/android/tools/r8/internal/rg;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    :cond_3
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p2, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object v1, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/R50;

    iget-object v4, p2, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/R50;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    :goto_1
    invoke-virtual {v0, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object p2, p2, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/R50;

    iget-object v3, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/R50;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    if-ne v1, v3, :cond_8

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    :goto_3
    invoke-virtual {v0, v2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/rg;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/rg;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_a
    return-object p0

    :cond_b
    return-object p2
.end method

.method public final c()Lcom/android/tools/r8/internal/D1;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/rg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
