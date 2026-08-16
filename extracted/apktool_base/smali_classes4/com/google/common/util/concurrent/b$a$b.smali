.class public Lcom/google/common/util/concurrent/b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/b$a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/b$a;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->n()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->u()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    iget-object v1, v1, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/b;->m()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/b;->i()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->m()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->v()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/b$a$b;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
