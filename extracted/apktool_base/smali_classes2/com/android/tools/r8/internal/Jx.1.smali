.class public abstract Lcom/android/tools/r8/internal/Jx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Jx;->c:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiPredicate;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jx;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Ix;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Iw0;)V
.end method

.method public final a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)V
    .locals 2

    .line 2
    iget-object v0, p2, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/jK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/jK0;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Deque;)V
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Jx;->c:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-interface {p1, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Jx;->c:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiPredicate;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/iK0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/iK0;-><init>(Ljava/util/function/BiPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Jx;)Z
    .locals 0

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    .line 7
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/android/tools/r8/internal/Kx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Jx;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/kK0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/kK0;-><init>(Lcom/android/tools/r8/internal/Jx;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public abstract d()Lcom/android/tools/r8/internal/Iw0;
.end method

.method public abstract e()Lcom/android/tools/r8/graph/M2;
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/zv0;

    return v0
.end method
