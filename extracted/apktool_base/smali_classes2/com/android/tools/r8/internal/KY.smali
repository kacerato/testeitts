.class public final Lcom/android/tools/r8/internal/KY;
.super Lcom/android/tools/r8/internal/V0;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/S0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/S0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/V0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)I
    .locals 2

    .line 3
    const-string v0, "occurrences"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/KY;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    return v1

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 9
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/FY;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->a()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/wK0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/wK0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/JY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/FY;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/JY;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/fV;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fV;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/vK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vK0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KY;->d:Lcom/android/tools/r8/internal/S0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/FY;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
