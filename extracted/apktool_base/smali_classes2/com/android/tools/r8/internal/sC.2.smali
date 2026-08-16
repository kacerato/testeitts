.class public abstract Lcom/android/tools/r8/internal/sC;
.super Lcom/android/tools/r8/internal/JC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JC;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->l()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/We0;

    return v0
.end method

.method public abstract k()Lcom/android/tools/r8/internal/nC;
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
