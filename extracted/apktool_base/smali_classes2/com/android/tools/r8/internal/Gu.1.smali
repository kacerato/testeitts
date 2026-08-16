.class public final Lcom/android/tools/r8/internal/Gu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gu;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Fu;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fu;->a:Lcom/android/tools/r8/graph/H2;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Gu;->d:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    return v0

    .line 3
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Fu;

    sget-boolean v0, Lcom/android/tools/r8/internal/Fu;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fu;->d:Lcom/android/tools/r8/internal/QC;

    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gu;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gu;->b:Ljava/util/IdentityHashMap;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
