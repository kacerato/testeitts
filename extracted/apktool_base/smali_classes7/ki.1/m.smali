.class public abstract Lki/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljk/e;

.field public b:Lki/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 1

    invoke-virtual {p0}, Lki/m;->b()Lki/l;

    move-result-object v0

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lki/l;
.end method

.method public declared-synchronized c()Ljk/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lki/m;->a:Ljk/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lki/m;->a()Ljk/e;

    move-result-object v0

    iput-object v0, p0, Lki/m;->a:Ljk/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lki/m;->a:Ljk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Lki/l;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lki/m;->b:Lki/l;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lki/m;->b()Lki/l;

    move-result-object v0

    iput-object v0, p0, Lki/m;->b:Lki/l;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lki/m;->b:Lki/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
