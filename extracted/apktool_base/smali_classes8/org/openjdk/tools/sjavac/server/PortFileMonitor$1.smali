.class Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

.field final synthetic val$log:Lorg/openjdk/tools/sjavac/Log;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;Lorg/openjdk/tools/sjavac/Log;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->val$log:Lorg/openjdk/tools/sjavac/Log;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->val$log:Lorg/openjdk/tools/sjavac/Log;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    const-string v0, "Checking port file status..."

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$000(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/PortFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/PortFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$100(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/SjavacServer;

    move-result-object v0

    const-string v1, "Quitting because portfile was deleted!"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->shutdown(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$000(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/PortFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/PortFile;->markedForStop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$100(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/SjavacServer;

    move-result-object v0

    const-string v1, "Quitting because a portfile.stop file was found!"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->shutdown(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$000(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/PortFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/PortFile;->stillMyValues()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;->this$0:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->access$100(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/SjavacServer;

    move-result-object v0

    const-string v1, "Quitting because portfile is now owned by another javac server!"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->shutdown(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v1, "IOException caught in PortFileMonitor."

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
