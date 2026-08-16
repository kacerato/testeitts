.class public final Lcom/android/tools/r8/internal/z;
.super Lcom/android/tools/r8/internal/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/x;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/x;->b:Lcom/android/tools/r8/internal/x;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/D;->c:Lcom/android/tools/r8/internal/x;

    if-eq v1, v0, :cond_0

    .line 11
    iput-object v0, p1, Lcom/android/tools/r8/internal/D;->c:Lcom/android/tools/r8/internal/x;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    .line 13
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)V
    .locals 0

    .line 2
    iput-object p2, p1, Lcom/android/tools/r8/internal/C;->b:Lcom/android/tools/r8/internal/C;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/C;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/D;Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)Z
    .locals 1

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    if-ne v0, p2, :cond_0

    .line 5
    iput-object p3, p1, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 6
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 8
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 16
    iput-object p3, p1, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    .line 17
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 18
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/C;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
