.class public final LMg/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final b:LTg/j;

.field public c:Z

.field public final synthetic d:LMg/a;


# direct methods
.method public constructor <init>(LMg/a;)V
    .locals 1

    iput-object p1, p0, LMg/a$c;->d:LMg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LTg/j;

    iget-object p1, p1, LMg/a;->e:LTg/d;

    invoke-interface {p1}, LTg/x;->a0()LTg/z;

    move-result-object p1

    invoke-direct {v0, p1}, LTg/j;-><init>(LTg/z;)V

    iput-object v0, p0, LMg/a$c;->b:LTg/j;

    return-void
.end method


# virtual methods
.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LMg/a$c;->b:LTg/j;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LMg/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LMg/a$c;->c:Z

    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v0, v0, LMg/a;->e:LTg/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v1, p0, LMg/a$c;->b:LTg/j;

    invoke-virtual {v0, v1}, LMg/a;->g(LTg/j;)V

    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    const/4 v1, 0x3

    iput v1, v0, LMg/a;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LMg/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v0, v0, LMg/a;->e:LTg/d;

    invoke-interface {v0}, LTg/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public h0(LTg/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LMg/a$c;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v0, v0, LMg/a;->e:LTg/d;

    invoke-interface {v0, p2, p3}, LTg/d;->P(J)LTg/d;

    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v0, v0, LMg/a;->e:LTg/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    iget-object v0, p0, LMg/a$c;->d:LMg/a;

    iget-object v0, v0, LMg/a;->e:LTg/d;

    invoke-interface {v0, p1, p2, p3}, LTg/x;->h0(LTg/c;J)V

    iget-object p1, p0, LMg/a$c;->d:LMg/a;

    iget-object p1, p1, LMg/a;->e:LTg/d;

    invoke-interface {p1, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
