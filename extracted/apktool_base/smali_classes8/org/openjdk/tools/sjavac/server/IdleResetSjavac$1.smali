.class Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->scheduleTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;->this$0:Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lorg/openjdk/tools/sjavac/server/ServerMain;->getErrorLog()Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;->this$0:Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->access$100(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)Lorg/openjdk/tools/sjavac/server/Terminable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server has been idle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;->this$0:Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->access$000(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openjdk/tools/sjavac/server/Terminable;->shutdown(Ljava/lang/String;)V

    return-void
.end method
