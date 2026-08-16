.class public Lz9/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 4

    :cond_0
    invoke-static {}, Lz9/f;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz9/f;->b()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9/f$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v2}, Lz9/f;->c(Z)Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1}, Lz9/f$b;->a()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lz9/f;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lz9/f;->b()Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lz9/f;->c(Z)Z

    monitor-exit v1

    return v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
