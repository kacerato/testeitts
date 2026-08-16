.class public final LNg/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final synthetic h:Z


# instance fields
.field public final b:LTg/c;

.field public final c:LTg/c;

.field public final d:J

.field public e:Z

.field public f:Z

.field public final synthetic g:LNg/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LNg/h;J)V
    .locals 0

    iput-object p1, p0, LNg/h$b;->g:LNg/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LTg/c;

    invoke-direct {p1}, LTg/c;-><init>()V

    iput-object p1, p0, LNg/h$b;->b:LTg/c;

    new-instance p1, LTg/c;

    invoke-direct {p1}, LTg/c;-><init>()V

    iput-object p1, p0, LNg/h$b;->c:LTg/c;

    iput-wide p2, p0, LNg/h$b;->d:J

    return-void
.end method


# virtual methods
.method public K(LTg/c;J)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    :goto_0
    iget-object v6, v1, LNg/h$b;->g:LNg/h;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-object v0, v0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v0}, LTg/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-object v7, v0, LNg/h;->l:LNg/a;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-boolean v9, v1, LNg/h$b;->e:Z

    if-nez v9, :cond_8

    invoke-static {v0}, LNg/h;->a(LNg/h;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    invoke-static {v0}, LNg/h;->b(LNg/h;)LNg/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    invoke-static {v0}, LNg/h;->a(LNg/h;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lokhttp3/u;

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    invoke-static {v0}, LNg/h;->b(LNg/h;)LNg/b$a;

    move-result-object v0

    move-object/from16 v13, p1

    move-object v10, v0

    :goto_2
    const-wide/16 v11, -0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, v1, LNg/h$b;->c:LTg/c;

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-lez v0, :cond_3

    iget-object v0, v1, LNg/h$b;->c:LTg/c;

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v11, v12}, LTg/c;->K(LTg/c;J)J

    move-result-wide v11

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-wide v14, v0, LNg/h;->a:J

    add-long/2addr v14, v11

    iput-wide v14, v0, LNg/h;->a:J

    if-nez v7, :cond_2

    iget-object v0, v0, LNg/h;->d:LNg/f;

    iget-object v0, v0, LNg/f;->o:LNg/l;

    invoke-virtual {v0}, LNg/l;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    cmp-long v0, v14, v8

    if-ltz v0, :cond_2

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-object v8, v0, LNg/h;->d:LNg/f;

    iget v9, v0, LNg/h;->c:I

    iget-wide v14, v0, LNg/h;->a:J

    invoke-virtual {v8, v9, v14, v15}, LNg/f;->S(IJ)V

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iput-wide v4, v0, LNg/h;->a:J

    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v13, p1

    iget-boolean v0, v1, LNg/h$b;->f:Z

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    invoke-virtual {v0}, LNg/h;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-object v0, v0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v0}, LNg/h$c;->w()V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_2

    :goto_3
    iget-object v0, v1, LNg/h$b;->g:LNg/h;

    iget-object v0, v0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v0}, LNg/h$c;->w()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    invoke-interface {v10, v8}, LNg/b$a;->a(Lokhttp3/u;)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_6

    invoke-virtual {v1, v11, v12}, LNg/h$b;->b(J)V

    return-wide v11

    :cond_6
    if-nez v7, :cond_7

    return-wide v2

    :cond_7
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v0, v7}, Lokhttp3/internal/http2/StreamResetException;-><init>(LNg/a;)V

    throw v0

    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    iget-object v2, v1, LNg/h$b;->g:LNg/h;

    iget-object v2, v2, LNg/h;->j:LNg/h$c;

    invoke-virtual {v2}, LNg/h$c;->w()V

    throw v0

    :goto_5
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LTg/e;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p0, LNg/h$b;->g:LNg/h;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, LNg/h$b;->f:Z

    iget-object v4, p0, LNg/h$b;->c:LTg/c;

    invoke-virtual {v4}, LTg/c;->Q()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, LNg/h$b;->d:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    invoke-interface {p1, p2, p3}, LTg/e;->skip(J)V

    iget-object p1, p0, LNg/h$b;->g:LNg/h;

    sget-object p2, LNg/a;->FLOW_CONTROL_ERROR:LNg/a;

    invoke-virtual {p1, p2}, LNg/h;->h(LNg/a;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {p1, p2, p3}, LTg/e;->skip(J)V

    return-void

    :cond_2
    iget-object v2, p0, LNg/h$b;->b:LTg/c;

    invoke-interface {p1, v2, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    iget-object v2, p0, LNg/h$b;->g:LNg/h;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, LNg/h$b;->c:LTg/c;

    invoke-virtual {v3}, LTg/c;->Q()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    move v5, v6

    :cond_3
    iget-object v0, p0, LNg/h$b;->c:LTg/c;

    iget-object v1, p0, LNg/h$b;->b:LTg/c;

    invoke-virtual {v0, v1}, LTg/c;->H(LTg/y;)J

    if-eqz v5, :cond_4

    iget-object v0, p0, LNg/h$b;->g:LNg/h;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v2

    goto :goto_0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LNg/h$b;->g:LNg/h;

    iget-object v0, v0, LNg/h;->j:LNg/h$c;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, LNg/h$b;->g:LNg/h;

    iget-object v0, v0, LNg/h;->d:LNg/f;

    invoke-virtual {v0, p1, p2}, LNg/f;->A(J)V

    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/h$b;->g:LNg/h;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LNg/h$b;->e:Z

    iget-object v1, p0, LNg/h$b;->c:LTg/c;

    invoke-virtual {v1}, LTg/c;->Q()J

    move-result-wide v1

    iget-object v3, p0, LNg/h$b;->c:LTg/c;

    invoke-virtual {v3}, LTg/c;->c()V

    iget-object v3, p0, LNg/h$b;->g:LNg/h;

    invoke-static {v3}, LNg/h;->a(LNg/h;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, LNg/h$b;->g:LNg/h;

    invoke-static {v3}, LNg/h;->b(LNg/h;)LNg/b$a;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, LNg/h$b;->g:LNg/h;

    invoke-static {v4}, LNg/h;->a(LNg/h;)Ljava/util/Deque;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, LNg/h$b;->g:LNg/h;

    invoke-static {v4}, LNg/h;->a(LNg/h;)Ljava/util/Deque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    iget-object v4, p0, LNg/h$b;->g:LNg/h;

    invoke-static {v4}, LNg/h;->b(LNg/h;)LNg/b$a;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    iget-object v5, p0, LNg/h$b;->g:LNg/h;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v2}, LNg/h$b;->b(J)V

    :cond_1
    iget-object v0, p0, LNg/h$b;->g:LNg/h;

    invoke-virtual {v0}, LNg/h;->d()V

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/u;

    invoke-interface {v4, v1}, LNg/b$a;->a(Lokhttp3/u;)V

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
