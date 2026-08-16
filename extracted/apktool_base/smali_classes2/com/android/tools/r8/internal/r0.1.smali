.class public final Lcom/android/tools/r8/internal/r0;
.super Lcom/android/tools/r8/internal/sV;
.source "SourceFile"


# instance fields
.field public final transient d:Ljava/util/HashMap;

.field public final synthetic e:Lcom/android/tools/r8/internal/A0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/A0;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sV;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast v1, Lcom/android/tools/r8/internal/Q3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    instance-of v2, p1, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/tools/r8/internal/v0;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/android/tools/r8/internal/v0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/z0;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/android/tools/r8/internal/z0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {p1, v0, v2}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/A0;->clear()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/q0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/q0;-><init>(Lcom/android/tools/r8/internal/r0;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/q0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/q0;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/q0;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/p0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/p0;-><init>(Lcom/android/tools/r8/internal/r0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    check-cast v2, Lcom/android/tools/r8/internal/Q3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v3, v0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/tools/r8/internal/v0;

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/android/tools/r8/internal/v0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    return-object v3

    :cond_1
    new-instance v3, Lcom/android/tools/r8/internal/z0;

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/android/tools/r8/internal/z0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    return-object v3
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    check-cast v0, Lcom/android/tools/r8/internal/Q3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget v0, v0, Lcom/android/tools/r8/internal/Q3;->h:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v0, Lcom/android/tools/r8/internal/A0;->g:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/android/tools/r8/internal/A0;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
