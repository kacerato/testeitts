.class public Lcom/jme3/util/MemoryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static directPool:Ljavax/management/ObjectName;

.field private static mbeans:Ljavax/management/MBeanServer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/MemoryUtils;->mbeans:Ljavax/management/MBeanServer;

    :try_start_0
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "java.nio:type=BufferPool,name=direct"

    invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jme3/util/MemoryUtils;->directPool:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/jme3/util/MemoryUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error creating direct pool ObjectName"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectMemoryCount()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/jme3/util/MemoryUtils;->mbeans:Ljavax/management/MBeanServer;

    sget-object v3, Lcom/jme3/util/MemoryUtils;->directPool:Ljavax/management/ObjectName;

    const-string v4, "Count"

    invoke-interface {v2, v3, v4}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-class v3, Lcom/jme3/util/MemoryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error retrieving Count"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public static getDirectMemoryTotalCapacity()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/jme3/util/MemoryUtils;->mbeans:Ljavax/management/MBeanServer;

    sget-object v3, Lcom/jme3/util/MemoryUtils;->directPool:Ljavax/management/ObjectName;

    const-string v4, "TotalCapacity"

    invoke-interface {v2, v3, v4}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-class v3, Lcom/jme3/util/MemoryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error retrieving TotalCapacity"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public static getDirectMemoryUsage()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/jme3/util/MemoryUtils;->mbeans:Ljavax/management/MBeanServer;

    sget-object v3, Lcom/jme3/util/MemoryUtils;->directPool:Ljavax/management/ObjectName;

    const-string v4, "MemoryUsed"

    invoke-interface {v2, v3, v4}, Ljavax/management/MBeanServer;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-class v3, Lcom/jme3/util/MemoryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error retrieving MemoryUsed"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method
