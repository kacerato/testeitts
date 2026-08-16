.class public final Lcom/android/tools/r8/shaking/N4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


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

    iput-object v0, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/N4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kR;)V
    .locals 0

    .line 27
    sget-boolean p0, Lcom/android/tools/r8/shaking/N4;->c:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/H0;
    .locals 3

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/N4;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N4;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N4;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/t91;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/t91;-><init>()V

    .line 13
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 14
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 22
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/N4;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N4;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/fa;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/fa;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/i;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/shaking/ga;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/shaking/ga;-><init>(Lcom/android/tools/r8/shaking/N4;Lcom/android/tools/r8/shaking/i;Ljava/util/Set;)V

    new-instance v0, Lcom/android/tools/r8/shaking/ha;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/ha;-><init>()V

    .line 19
    iget-object v2, p2, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 20
    invoke-virtual {v2, p1, v1, v0, p2}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/i;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/tools/r8/shaking/ea;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/ea;-><init>(Lcom/android/tools/r8/shaking/N4;Ljava/util/Set;)V

    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N4;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
