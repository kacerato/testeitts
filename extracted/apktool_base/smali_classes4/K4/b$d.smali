.class public LK4/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK4/b;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LK4/b;


# direct methods
.method public constructor <init>(LK4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LK4/b$d;->b:LK4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sh"

    const-string v3, "-i"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-static {v3, v2}, LK4/b;->g(LK4/b;Ljava/lang/Process;)Ljava/lang/Process;

    iget-object v2, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v2}, LK4/b;->e(LK4/b;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v3}, LK4/b;->e(LK4/b;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6}, LK4/b;->e(LK4/b;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5, v2, v3}, LK4/b;->h(LK4/b;Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_9

    :catch_0
    move-exception v2

    goto/16 :goto_7

    :catch_1
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5}, LK4/b;->i(LK4/b;)V

    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5}, LK4/b;->j(LK4/b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-lez v6, :cond_0

    iget-object v9, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v9, v8}, LK4/b;->k(LK4/b;Z)Z

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    iget-object v7, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v7}, LK4/b;->l(LK4/b;)V

    iget-object v7, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v7, v2, v3}, LK4/b;->h(LK4/b;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5, v8}, LK4/b;->k(LK4/b;Z)Z

    :goto_2
    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5}, LK4/b;->m(LK4/b;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5, v2, v3}, LK4/b;->h(LK4/b;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5}, LK4/b;->n(LK4/b;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6}, LK4/b;->n(LK4/b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6}, LK4/b;->n(LK4/b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "stopshell"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v6, "exit;\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6}, LK4/b;->l(LK4/b;)V

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6, v2, v3}, LK4/b;->h(LK4/b;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    iget-object v2, p0, LK4/b$d;->b:LK4/b;

    const-string v3, "Shell finalized"

    invoke-virtual {v2, v3}, LK4/b;->t(Ljava/lang/String;)V

    iget-object v2, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v2, v1}, LK4/b;->o(LK4/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v2, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v2, v1}, LK4/b;->g(LK4/b;Ljava/lang/Process;)Ljava/lang/Process;

    iget-object v1, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v1}, LK4/b;->f(LK4/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LK4/b$d;->b:LK4/b;

    invoke-virtual {v0}, LK4/a;->c()V

    goto :goto_8

    :catchall_1
    move-exception v2

    goto :goto_6

    :cond_3
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6}, LK4/b;->l(LK4/b;)V

    iget-object v6, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v6, v2, v3}, LK4/b;->h(LK4/b;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    goto :goto_3

    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v5, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v5}, LK4/b;->l(LK4/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :goto_6
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    invoke-virtual {v3, v2}, LK4/b;->u(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :goto_8
    return-void

    :goto_9
    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    const-string v4, "Shell finalized"

    invoke-virtual {v3, v4}, LK4/b;->t(Ljava/lang/String;)V

    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v3, v1}, LK4/b;->o(LK4/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v3, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v3, v1}, LK4/b;->g(LK4/b;Ljava/lang/Process;)Ljava/lang/Process;

    iget-object v1, p0, LK4/b$d;->b:LK4/b;

    invoke-static {v1}, LK4/b;->f(LK4/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LK4/b$d;->b:LK4/b;

    invoke-virtual {v0}, LK4/a;->c()V

    throw v2
.end method
