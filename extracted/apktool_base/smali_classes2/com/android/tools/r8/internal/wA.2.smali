.class public final Lcom/android/tools/r8/internal/wA;
.super Lcom/android/tools/r8/internal/od;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/n6;

.field public final b:Lcom/android/tools/r8/internal/l6;

.field public final c:Lcom/android/tools/r8/internal/n6;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Lcom/android/tools/r8/internal/l6;

.field public final f:Lcom/android/tools/r8/internal/n6;

.field public final g:Lcom/android/tools/r8/internal/n6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/od;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Lcom/android/tools/r8/internal/l6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/l6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->f:Lcom/android/tools/r8/internal/n6;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wA;->g:Lcom/android/tools/r8/internal/n6;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cW;)Lcom/android/tools/r8/internal/pd;
    .locals 0

    .line 1
    check-cast p2, Lcom/android/tools/r8/internal/CA;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/CA;)Lcom/android/tools/r8/internal/xA;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/CA;)Lcom/android/tools/r8/internal/xA;
    .locals 8

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/wA;->h:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->f:Lcom/android/tools/r8/internal/n6;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->g:Lcom/android/tools/r8/internal/n6;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/wx1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/wx1;-><init>(Lcom/android/tools/r8/internal/wA;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_7
    :goto_3
    new-instance v7, Lcom/android/tools/r8/internal/xA;

    iget-object v3, p0, Lcom/android/tools/r8/internal/wA;->d:Ljava/util/IdentityHashMap;

    iget-object v4, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v5, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    iget-object v6, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/xA;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/CA;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/l6;Lcom/android/tools/r8/internal/n6;)V

    return-object v7
.end method

.method public final a()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    .line 67
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 68
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/l6;->b(Ljava/util/Set;)V

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/vx1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/vx1;-><init>(Lcom/android/tools/r8/internal/TY;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/util/function/BiConsumer;)V

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    .line 72
    iget-object v1, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 73
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 74
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->f:Lcom/android/tools/r8/internal/n6;

    .line 76
    iget-object v2, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/l6;->b(Ljava/util/Set;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/n6;)V

    .line 80
    iget-object v0, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    iget-object v0, v1, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    iget-object v0, v1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->g:Lcom/android/tools/r8/internal/n6;

    .line 84
    iget-object v2, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 85
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/l6;->b(Ljava/util/Set;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/n6;)V

    .line 88
    iget-object v0, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    iget-object v0, v1, Lcom/android/tools/r8/internal/l6;->c:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    iget-object v0, v1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->e:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->g:Lcom/android/tools/r8/internal/n6;

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 63
    :cond_1
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/v2;

    if-eqz p1, :cond_2

    .line 65
    iget-object v0, v1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->f:Lcom/android/tools/r8/internal/n6;

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 50
    :cond_0
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/v2;

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, v1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sK;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/wA;->h:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/tx1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/tx1;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 26
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 28
    invoke-static {p1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/ux1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/ux1;-><init>(Lcom/android/tools/r8/internal/n6;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_9

    .line 29
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 30
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 31
    :try_start_0
    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 32
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    if-nez p3, :cond_6

    .line 33
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ps0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ps0;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ps0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ps0;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    goto :goto_4

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_9
    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 39
    :goto_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/CK;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 43
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    .line 44
    iget-object p1, p1, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 45
    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/wA;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/android/tools/r8/internal/wA;->c:Lcom/android/tools/r8/internal/n6;

    .line 4
    iget-object p3, p3, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {p3, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
