.class public final LIg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:LIg/d$e;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:LIg/d;


# direct methods
.method public constructor <init>(LIg/d;LIg/d$e;)V
    .locals 0

    iput-object p1, p0, LIg/d$d;->d:LIg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LIg/d$d;->a:LIg/d$e;

    iget-boolean p2, p2, LIg/d$e;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, LIg/d;->i:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, LIg/d$d;->b:[Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LIg/d$d;->d:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LIg/d$d;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v1, v1, LIg/d$e;->f:LIg/d$d;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, LIg/d$d;->d:LIg/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, LIg/d;->d(LIg/d$d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LIg/d$d;->c:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LIg/d$d;->d:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LIg/d$d;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v1, v1, LIg/d$e;->f:LIg/d$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    :try_start_1
    iget-object v1, p0, LIg/d$d;->d:LIg/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, LIg/d;->d(LIg/d$d;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LIg/d$d;->d:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LIg/d$d;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v1, v1, LIg/d$e;->f:LIg/d$d;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, LIg/d$d;->d:LIg/d;

    invoke-virtual {v1, p0, v2}, LIg/d;->d(LIg/d$d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, LIg/d$d;->c:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v0, v0, LIg/d$e;->f:LIg/d$d;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LIg/d$d;->d:LIg/d;

    iget v2, v1, LIg/d;->i:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v1, v1, LIg/d;->b:LOg/a;

    iget-object v2, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v2, v2, LIg/d$e;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, LOg/a;->c(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIg/d$d;->a:LIg/d$e;

    const/4 v1, 0x0

    iput-object v1, v0, LIg/d$e;->f:LIg/d$d;

    :cond_1
    return-void
.end method

.method public e(I)LTg/x;
    .locals 4

    iget-object v0, p0, LIg/d$d;->d:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LIg/d$d;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, LIg/d$d;->a:LIg/d$e;

    iget-object v2, v1, LIg/d$e;->f:LIg/d$d;

    if-eq v2, p0, :cond_0

    invoke-static {}, LTg/p;->b()LTg/x;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, LIg/d$e;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, LIg/d$d;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    :cond_1
    iget-object v1, v1, LIg/d$e;->d:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, LIg/d$d;->d:LIg/d;

    iget-object v1, v1, LIg/d;->b:LOg/a;

    invoke-interface {v1, p1}, LOg/a;->h(Ljava/io/File;)LTg/x;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, LIg/d$d$a;

    invoke-direct {v1, p0, p1}, LIg/d$d$a;-><init>(LIg/d$d;LTg/x;)V

    monitor-exit v0

    return-object v1

    :catch_0
    invoke-static {}, LTg/p;->b()LTg/x;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public f(I)LTg/y;
    .locals 4

    iget-object v0, p0, LIg/d$d;->d:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LIg/d$d;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, LIg/d$d;->a:LIg/d$e;

    iget-boolean v2, v1, LIg/d$e;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, LIg/d$e;->f:LIg/d$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, LIg/d$d;->d:LIg/d;

    iget-object v2, v2, LIg/d;->b:LOg/a;

    iget-object v1, v1, LIg/d$e;->c:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-interface {v2, p1}, LOg/a;->g(Ljava/io/File;)LTg/y;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    monitor-exit v0

    return-object v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
