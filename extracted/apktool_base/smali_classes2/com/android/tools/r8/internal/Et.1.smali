.class public final Lcom/android/tools/r8/internal/Et;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Lcom/android/tools/r8/internal/j80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Et;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Et;->e:Lcom/android/tools/r8/internal/j80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/dA0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dA0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/m80;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aX;)Lcom/android/tools/r8/internal/Vf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Et;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Et;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Et;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vf;

    return-object p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget v1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vf;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    .line 15
    iget-object p1, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17
    iget-object p1, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    .line 19
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/Et;->e:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Ft;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 25
    iget-object v2, p1, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Gt;

    .line 27
    iget-boolean v4, v3, Lcom/android/tools/r8/internal/Gt;->e:Z

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Gt;

    .line 31
    iget-object v3, v2, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    .line 32
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Gt;->a()V

    .line 34
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Ft;->b(Lcom/android/tools/r8/internal/Gt;)V

    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 37
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 38
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget-object v1, v2, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    check-cast v0, Lcom/android/tools/r8/internal/Gt;

    .line 43
    sget-boolean v1, Lcom/android/tools/r8/internal/Et;->f:Z

    if-nez v1, :cond_5

    .line 44
    new-instance v1, Lcom/android/tools/r8/internal/aX;

    .line 45
    iget-object v3, v0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 46
    iget v4, v0, Lcom/android/tools/r8/internal/Gt;->b:I

    .line 47
    invoke-direct {v1, v3, v4}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 48
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ft;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Gt;->b()V

    .line 51
    iget-object v1, v0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Gt;->c()V

    .line 54
    iget-object v1, v0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    .line 55
    new-instance v3, Lcom/android/tools/r8/internal/TD0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/TD0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Gt;->a()V

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ft;->b(Lcom/android/tools/r8/internal/Gt;)V

    goto :goto_3

    .line 58
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/TD0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/TD0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ft;->a(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/UD0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/UD0;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/VD0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/VD0;-><init>(Lcom/android/tools/r8/internal/Et;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
