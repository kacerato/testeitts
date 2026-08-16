.class public Lcom/android/tools/r8/internal/uA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/sun/management/HotSpotDiagnosticMXBean;


# direct methods
.method public static a(Ljava/nio/file/Path;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/uA;->a:Lcom/sun/management/HotSpotDiagnosticMXBean;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/tools/r8/internal/uA;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/uA;->a:Lcom/sun/management/HotSpotDiagnosticMXBean;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    const-string v2, "com.sun.management:type=HotSpotDiagnostic"

    const-class v3, Lcom/sun/management/HotSpotDiagnosticMXBean;

    invoke-static {v1, v2, v3}, Ljava/lang/management/ManagementFactory;->newPlatformMXBeanProxy(Ljavax/management/MBeanServerConnection;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/management/HotSpotDiagnosticMXBean;

    sput-object v1, Lcom/android/tools/r8/internal/uA;->a:Lcom/sun/management/HotSpotDiagnosticMXBean;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/uA;->a:Lcom/sun/management/HotSpotDiagnosticMXBean;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sun/management/HotSpotDiagnosticMXBean;->dumpHeap(Ljava/lang/String;Z)V

    return-void
.end method
