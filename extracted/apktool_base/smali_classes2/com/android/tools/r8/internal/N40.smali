.class public final Lcom/android/tools/r8/internal/N40;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public b:Lcom/android/tools/r8/internal/Hz;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/N40;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/W40;)Lcom/android/tools/r8/internal/W40;
    .locals 0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/W40;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Ljava/util/HashMap;
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/gN0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/gN0;-><init>(Lcom/android/tools/r8/internal/N40;Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/Hz;)Ljava/util/List;
    .locals 1

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/N40;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/eN0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/eN0;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 23
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/N40;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/W40;

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/internal/N40;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W40;

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Ljava/util/List;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p3}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 30
    sget-boolean p1, Lcom/android/tools/r8/internal/N40;->d:Z

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_2
    sget-boolean p3, Lcom/android/tools/r8/internal/N40;->d:Z

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/W40;

    .line 33
    new-instance v0, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    if-ne p1, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/fN0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/fN0;-><init>(Lcom/android/tools/r8/internal/N40;Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/N40;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Ljava/util/List;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/N40;->b:Lcom/android/tools/r8/internal/Hz;

    .line 16
    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/N40;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/N40;->a(Ljava/util/List;Lcom/android/tools/r8/internal/Hz;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 20
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
