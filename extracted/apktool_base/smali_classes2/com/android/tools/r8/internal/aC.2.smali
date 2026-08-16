.class public final Lcom/android/tools/r8/internal/aC;
.super Lcom/android/tools/r8/internal/mC;
.source "SourceFile"


# instance fields
.field public final transient f:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/mC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/aC;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/aC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/tools/r8/internal/Av0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/Av0;

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/yK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/yK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final o()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aC;->f:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
