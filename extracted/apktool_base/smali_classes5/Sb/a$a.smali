.class public LSb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LSb/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LSb/a;


# direct methods
.method public constructor <init>(LSb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LSb/a$a;->b:LSb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "logcat"

    const-string v5, "-s"

    const-string v6, "Filament"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-static {v2, v3}, LSb/a;->b(LSb/a;Ljava/lang/Process;)Ljava/lang/Process;

    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2}, LSb/a;->c(LSb/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v4}, LSb/a;->e(LSb/a;)LSb/a$b;

    move-result-object v4

    invoke-interface {v4, v2}, LSb/a$b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2, v1}, LSb/a;->b(LSb/a;Ljava/lang/Process;)Ljava/lang/Process;

    :cond_1
    iget-object v1, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v1}, LSb/a;->e(LSb/a;)LSb/a$b;

    move-result-object v1

    invoke-interface {v1}, LSb/a$b;->b()V

    iget-object v1, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v1, v0}, LSb/a;->d(LSb/a;Z)Z

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_2
    :try_start_3
    const-string v4, "FilamentLogcatListener"

    const-string v5, "Erro ao iniciar logcat"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    iget-object v2, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v2}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    iget-object v3, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v3}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v3}, LSb/a;->a(LSb/a;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    iget-object v3, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v3, v1}, LSb/a;->b(LSb/a;Ljava/lang/Process;)Ljava/lang/Process;

    :cond_4
    iget-object v1, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v1}, LSb/a;->e(LSb/a;)LSb/a$b;

    move-result-object v1

    invoke-interface {v1}, LSb/a$b;->b()V

    iget-object v1, p0, LSb/a$a;->b:LSb/a;

    invoke-static {v1, v0}, LSb/a;->d(LSb/a;Z)Z

    throw v2
.end method
