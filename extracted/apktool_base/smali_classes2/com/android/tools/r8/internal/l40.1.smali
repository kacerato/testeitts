.class public final Lcom/android/tools/r8/internal/l40;
.super Lcom/android/tools/r8/internal/k40;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/shaking/j;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/k40;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    new-instance v0, Lcom/android/tools/r8/shaking/j;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/j;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l40;->b:Lcom/android/tools/r8/shaking/j;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 23
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 24
    iget-boolean p0, p0, Lcom/android/tools/r8/graph/j1;->t:Z

    return p0
.end method

.method public static b(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 9
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 10
    iget-boolean p0, p0, Lcom/android/tools/r8/graph/j1;->t:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 3
    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VY;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/VY;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VY;-><init>()V

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    iput-object v2, v1, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 6
    iget v2, v0, Lcom/android/tools/r8/internal/VY;->b:I

    iput v2, v1, Lcom/android/tools/r8/internal/VY;->b:I

    .line 7
    iget v2, v0, Lcom/android/tools/r8/internal/VY;->c:I

    iput v2, v1, Lcom/android/tools/r8/internal/VY;->c:I

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    iput-object v0, v1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    const/4 v0, 0x3

    .line 21
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Au;)V
    .locals 0

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/Au;)Lcom/android/tools/r8/internal/WY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/S7;)V
    .locals 0

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 11
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 17
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Zc;)V
    .locals 0

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 13
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V
    .locals 0

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->a(Ljava/util/BitSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;I)V
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object p1

    .line 28
    iget v0, p1, Lcom/android/tools/r8/internal/VY;->c:I

    or-int/2addr p2, v0

    iput p2, p1, Lcom/android/tools/r8/internal/VY;->c:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V
    .locals 3

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/l40;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 33
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 36
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 38
    iget-object v1, v1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/o3;

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/G5;

    move-result-object v0

    .line 43
    sget-boolean v1, Lcom/android/tools/r8/internal/k40;->a:Z

    if-nez v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/F0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F0;->J()Z

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/F5;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p2, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/VY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object p1

    .line 26
    iput-object p2, p1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 73
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;I)V
    .locals 0

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/WY;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/internal/l40;->f:Z

    if-nez v0, :cond_5

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 57
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 63
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/k40;->a:Z

    if-nez v0, :cond_5

    .line 64
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 67
    :goto_2
    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/j1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/Yf;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 70
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/gE;)V
    .locals 0

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 76
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 78
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p2

    .line 49
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object p1, Lcom/android/tools/r8/internal/Fj;->c:Lcom/android/tools/r8/internal/ef0;

    .line 51
    iput-object p1, p2, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 52
    :cond_0
    :try_start_1
    iput-object p1, p2, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->b:Lcom/android/tools/r8/shaking/j;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/l40;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/l40;->b:Lcom/android/tools/r8/shaking/j;

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v1, ", "

    if-nez v0, :cond_3

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    .line 16
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    .line 18
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public final declared-synchronized b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Xl0;)V
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 8
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Ljava/util/BitSet;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 6
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    return-void
.end method

.method public final declared-synchronized b(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 21
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/android/tools/r8/graph/j1;Ljava/util/BitSet;)V
    .locals 0

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 23
    iput-object p2, p1, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ti1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ti1;-><init>()V

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ui1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ui1;-><init>()V

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/vi1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vi1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/wi1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/wi1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/xi1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/xi1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final declared-synchronized c(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    iput-object v0, p1, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 21
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l40;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/WY;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WY;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/WY;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WY;-><init>(Lcom/android/tools/r8/internal/WY;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/l40;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
