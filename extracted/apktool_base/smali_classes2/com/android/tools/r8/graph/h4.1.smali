.class public Lcom/android/tools/r8/graph/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Lcom/android/tools/r8/graph/B;

.field public final f:Lcom/android/tools/r8/graph/y0;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/graph/y0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/y0;-><init>()V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/graph/h4;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y0;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/h4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/h4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/h4;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/h4;->g:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 8
    new-instance p2, Lcom/android/tools/r8/graph/z;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/z;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->z0:Z

    if-nez v0, :cond_0

    .line 10
    new-instance p2, Lcom/android/tools/r8/graph/A;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/A;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 11
    :cond_0
    iput-object p2, p0, Lcom/android/tools/r8/graph/h4;->e:Lcom/android/tools/r8/graph/B;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/h4;->c(Ljava/lang/String;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/zd;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/zd;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/V;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 15
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p2, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 19
    iget-object v2, v1, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v1, v1, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 22
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/graph/Ad;-><init>(Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/V;)V

    .line 24
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/graph/e4;)V
    .locals 4

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/graph/h4;->h:Z

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 28
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 31
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p2, v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 35
    iget-object v3, v2, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    .line 36
    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v2, v2, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 38
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 39
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 41
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->P2:Lcom/android/tools/r8/graph/M2;

    if-ne p3, v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/h4;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p2, v0, :cond_0

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 8
    iget-object v0, p2, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p2, p2, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BN;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/h4;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Bd;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Bd;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/V;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p2, p2, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/android/tools/r8/graph/I2;
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/graph/h4;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    array-length v2, p1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    goto :goto_2

    :cond_2
    array-length v2, p1

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :goto_2
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/H1;

    invoke-direct {v2, v1}, Lu/H1;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h4;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->e:Lcom/android/tools/r8/graph/B;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/h4;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
