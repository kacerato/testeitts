.class public final Lcom/android/tools/r8/internal/T1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Dq;

.field public final b:Lcom/android/tools/r8/internal/Bq;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Bq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/T1;->a:Lcom/android/tools/r8/internal/Dq;

    iput-object p1, p0, Lcom/android/tools/r8/internal/T1;->b:Lcom/android/tools/r8/internal/Bq;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/Gg;)Lcom/android/tools/r8/internal/T1;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bq;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bq;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 4
    new-instance v3, Lcom/android/tools/r8/internal/EW0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/EW0;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/FW0;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/FW0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Bq;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/GW0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/GW0;-><init>(Ljava/util/Set;)V

    new-instance v4, Lcom/android/tools/r8/internal/HW0;

    invoke-direct {v4, v0, p2}, Lcom/android/tools/r8/internal/HW0;-><init>(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/Gg;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/T1;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/T1;-><init>(Lcom/android/tools/r8/internal/Bq;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p0

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 13
    invoke-interface {p1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/Gg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 16
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object p3, p1, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Dq;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Gg;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p3

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object p1, p3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/F2;

    .line 24
    iget-object p3, p0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {p3, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D2;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/T1;->a:Lcom/android/tools/r8/internal/Dq;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/T1;->b:Lcom/android/tools/r8/internal/Bq;

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
