.class public final Lcom/android/tools/r8/internal/pb0;
.super Lcom/android/tools/r8/internal/qb0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/l4;

.field public final c:Lcom/android/tools/r8/internal/Zd;

.field public final d:Ljava/util/Map;

.field public e:Ljava/util/List;

.field public final f:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/Zd;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/android/tools/r8/internal/qb0;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pb0;->b:Lcom/android/tools/r8/internal/l4;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pb0;->c:Lcom/android/tools/r8/internal/Zd;

    new-instance p1, Lu/y0;

    invoke-direct {p1}, Lu/y0;-><init>()V

    new-instance p2, Lcom/android/tools/r8/errors/q;

    invoke-direct {p2}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pb0;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/android/tools/r8/internal/pb0;->f:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/c4$a;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 11
    iput-object p1, v0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Lp1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Lp1;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->b()Lcom/android/tools/r8/internal/r4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->d()Lcom/android/tools/r8/internal/r4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->c()Lcom/android/tools/r8/internal/r4$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/t2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 6

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 28
    iget-object v0, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 29
    new-instance v1, Lcom/android/tools/r8/shaking/t2;

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    .line 31
    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/t2;-><init>(Ljava/util/Set;)V

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Jp1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Jp1;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/Kp1;

    invoke-direct {v5, v1, v2}, Lcom/android/tools/r8/internal/Kp1;-><init>(Lcom/android/tools/r8/shaking/t2;Lcom/android/tools/r8/graph/H2;)V

    .line 34
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/tools/r8/shaking/u2;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 37
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 38
    invoke-static {v2, v3, v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/u2;-><init>(Ljava/util/Set;)V

    .line 39
    iput-object v0, p1, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/c4$a;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/errors/q;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/graph/M2;)Z

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/Ip1;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Ip1;-><init>(Lcom/android/tools/r8/internal/c4$a;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/I0;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)Z
    .locals 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/v2;->b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/pb0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Mp1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Mp1;-><init>(Lcom/android/tools/r8/internal/pb0;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g3$a;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/g3$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/pb0;->d:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/pb0;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public final c()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->e:Ljava/util/List;

    sget-boolean v1, Lcom/android/tools/r8/internal/pb0;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/pb0;->e:Ljava/util/List;

    return-object v0
.end method
