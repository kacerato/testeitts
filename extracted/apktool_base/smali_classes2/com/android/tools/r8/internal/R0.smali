.class public Lcom/android/tools/r8/internal/R0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/A0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/A0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/A0;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    new-instance v1, Lcom/android/tools/r8/internal/o0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/o0;-><init>(Lcom/android/tools/r8/internal/A0;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    iget v0, v0, Lcom/android/tools/r8/internal/A0;->g:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R0;->b:Lcom/android/tools/r8/internal/A0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/A0;->g()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
