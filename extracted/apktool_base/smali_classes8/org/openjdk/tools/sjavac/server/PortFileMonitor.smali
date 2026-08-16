.class public Lorg/openjdk/tools/sjavac/server/PortFileMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_PORTFILE_INTERVAL:I = 0x1388


# instance fields
.field private final portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

.field private final server:Lorg/openjdk/tools/sjavac/server/SjavacServer;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/PortFile;Lorg/openjdk/tools/sjavac/server/SjavacServer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->timer:Ljava/util/Timer;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->server:Lorg/openjdk/tools/sjavac/server/SjavacServer;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/PortFile;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;)Lorg/openjdk/tools/sjavac/server/SjavacServer;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->server:Lorg/openjdk/tools/sjavac/server/SjavacServer;

    return-object p0
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public start()V
    .locals 7

    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;

    invoke-direct {v2, p0, v0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor$1;-><init>(Lorg/openjdk/tools/sjavac/server/PortFileMonitor;Lorg/openjdk/tools/sjavac/Log;)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
