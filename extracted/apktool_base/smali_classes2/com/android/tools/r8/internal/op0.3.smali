.class public final Lcom/android/tools/r8/internal/op0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/Map;

.field public c:Ljava/util/Set;

.field public d:Ljava/util/Set;

.field public final e:Ljava/util/HashSet;

.field public final f:Lcom/android/tools/r8/internal/pp0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/pp0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->e:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)Lcom/android/tools/r8/internal/op0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/op0;->b()V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/pp0;
    .locals 7

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/op0;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Escaping is not a subset of live string builders"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Aliases is not a subset of live string builders"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->e:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected value in newlyEscaping not in escaping"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Escaped definitions should all be live"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/gp1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/gp1;-><init>(Lcom/android/tools/r8/internal/op0;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 15
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "All known escaping definitions should be live string builders"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 16
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    if-ne v1, v2, :cond_a

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/pp0;->f:Ljava/util/Set;

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    return-object v0

    .line 20
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/pp0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/internal/op0;->c:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/tools/r8/internal/op0;->e:Ljava/util/HashSet;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/pp0;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/op0;->b()V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/op0;->c()V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)Lcom/android/tools/r8/internal/op0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/op0;->c()V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/hp1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/hp1;-><init>(Lcom/android/tools/r8/internal/op0;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/ip1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ip1;-><init>(Lcom/android/tools/r8/internal/op0;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->f:Lcom/android/tools/r8/internal/pp0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/op0;->d:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/op0;->b:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
