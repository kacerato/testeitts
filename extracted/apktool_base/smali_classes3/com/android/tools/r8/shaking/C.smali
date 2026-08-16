.class public abstract Lcom/android/tools/r8/shaking/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/H1;
    .locals 0

    .line 40
    iget-object p1, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 41
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/H1;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/k1;
    .locals 0

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 35
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/k1;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/p1;
    .locals 0

    .line 37
    iget-object p1, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 38
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/p1;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/p5;

    invoke-direct {v0, p1, p4}, Lcom/android/tools/r8/shaking/p5;-><init>(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;)V

    new-instance p1, Lcom/android/tools/r8/shaking/q5;

    invoke-direct {p1, p2, p4}, Lcom/android/tools/r8/shaking/q5;-><init>(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;)V

    new-instance p2, Lcom/android/tools/r8/shaking/r5;

    invoke-direct {p2, p3, p4}, Lcom/android/tools/r8/shaking/r5;-><init>(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;)V

    invoke-virtual {p5, p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)V
    .locals 1

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/shaking/d0;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/d0;

    move-result-object p2

    .line 50
    instance-of v0, p2, Lcom/android/tools/r8/shaking/b0;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 52
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/shaking/s2;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)Z
    .locals 1

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/d0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/d0;->a()Lcom/android/tools/r8/shaking/Y;

    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    .line 22
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/o0;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 24
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/C;->b:Z

    if-nez v0, :cond_3

    .line 25
    instance-of p2, p2, Lcom/android/tools/r8/shaking/c0;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 27
    :cond_3
    :goto_0
    sget-boolean p2, Lcom/android/tools/r8/shaking/C;->b:Z

    if-nez p2, :cond_5

    .line 28
    iget-object p2, p3, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 29
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 30
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_5
    :goto_1
    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    .line 32
    iget-object p0, p3, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B;
    .locals 2

    .line 43
    const-string v0, "Rewrite DependentMinimumKeepInfoCollection"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 45
    new-instance v1, Lcom/android/tools/r8/shaking/B;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/B;-><init>(I)V

    .line 46
    new-instance v0, Lcom/android/tools/r8/shaking/n5;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/shaking/n5;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/C;)V

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/shaking/H1;
    .locals 1

    .line 39
    new-instance v0, Lcom/android/tools/r8/shaking/m5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/m5;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/C;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/k1;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/tools/r8/shaking/j5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/j5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/C;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/k1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/p1;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/shaking/o5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/o5;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/C;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/p1;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/shaking/s1;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/s2;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/s2;

    :cond_1
    return-object p1
.end method

.method public abstract a()Lcom/android/tools/r8/shaking/s2;
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/i5;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/i5;-><init>(Lcom/android/tools/r8/shaking/C;)V

    .line 11
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 12
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/s5;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/s5;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/k5;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/k5;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/C;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/android/tools/r8/shaking/l5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/l5;-><init>(Lcom/android/tools/r8/shaking/C;)V

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/shaking/s2;)V

    return-void
.end method

.method public final a(Ljava/util/function/Predicate;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s2;

    return-object p1
.end method
