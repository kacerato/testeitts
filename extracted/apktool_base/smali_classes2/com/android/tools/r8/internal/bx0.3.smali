.class public final Lcom/android/tools/r8/internal/bx0;
.super Lcom/android/tools/r8/internal/od;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r6;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/internal/n6;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Lcom/android/tools/r8/internal/r6;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/Set;

.field public final i:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/od;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->b:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->g:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx0;->i:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cW;)Lcom/android/tools/r8/internal/pd;
    .locals 8

    .line 1
    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/internal/nx0;

    .line 2
    sget-boolean p2, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nx0;->b()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/cx0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    iget-object v4, p0, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    iget-object v5, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    iget-object v6, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    iget-object v7, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/cx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nx0;Lcom/android/tools/r8/internal/r6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/r6;Ljava/util/Set;)V

    return-object p2
.end method

.method public final a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->b:Ljava/util/IdentityHashMap;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 8
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/bx0;->e:Ljava/util/IdentityHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/k61;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/tools/r8/internal/k61;-><init>(Lcom/android/tools/r8/internal/bx0;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bx0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/TY;->a(Ljava/util/Set;)V

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/TY;->putAll(Ljava/util/Map;)V

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/l61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/l61;-><init>(Lcom/android/tools/r8/internal/bx0;)V

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->g:Ljava/util/IdentityHashMap;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    .line 64
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    new-instance v1, Lcom/android/tools/r8/graph/Ra;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Ra;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Ra;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Ra;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 100
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p3, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p3, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 54
    iget-object p3, p3, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 55
    invoke-virtual {p3, v0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 56
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 57
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-nez p4, :cond_5

    goto :goto_3

    .line 58
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 59
    iget-object p2, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 61
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 37
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bx0;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p1, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/r6;->a(Lcom/android/tools/r8/internal/r6;)V

    .line 67
    iget-object v0, p1, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    new-instance v1, Lcom/android/tools/r8/internal/n61;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/n61;-><init>(Lcom/android/tools/r8/internal/bx0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/ft0;)V

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/internal/bx0;->h:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p1, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/r6;->a(Lcom/android/tools/r8/internal/r6;)V

    .line 70
    iget-object p1, p1, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/o61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/o61;-><init>(Lcom/android/tools/r8/internal/bx0;)V

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 26
    invoke-interface {p1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 29
    invoke-virtual {p1, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 30
    sget-boolean p1, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 32
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 33
    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 34
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez p1, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/android/tools/r8/internal/m61;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/m61;-><init>(Lcom/android/tools/r8/internal/bx0;Lcom/android/tools/r8/graph/A2;)V

    .line 72
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 73
    sget-boolean p3, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 76
    iget-object v1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/n6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    if-nez p3, :cond_3

    .line 77
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 80
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 81
    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 83
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    .line 84
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 87
    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 89
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 90
    iget-object v0, v0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 91
    invoke-virtual {v0, p2, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 94
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 95
    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 96
    iget-object p1, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 97
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 98
    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
