.class Lorg/openjdk/tools/javac/file/BaseFileManager$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-static {v3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->access$100(Lorg/openjdk/tools/javac/file/BaseFileManager;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-wide v6, v5, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    add-long/2addr v3, v6

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {v5}, Lorg/openjdk/tools/javac/file/BaseFileManager;->access$100(Lorg/openjdk/tools/javac/file/BaseFileManager;)J

    move-result-wide v3

    iget-object v6, p0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;->this$0:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-wide v6, v6, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    add-long/2addr v3, v6

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    invoke-interface {v5}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method
