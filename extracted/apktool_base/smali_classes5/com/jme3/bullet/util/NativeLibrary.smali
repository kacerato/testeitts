.class public final Lcom/jme3/bullet/util/NativeLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final expectedVersion:Ljava/lang/String; = "23.1.0"

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/NativeLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/NativeLibrary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native countClampedCcdMotions()I
.end method

.method public static native countThreads()I
.end method

.method public static native crash()V
.end method

.method public static native dumpMemoryLeaks()I
.end method

.method public static native dumpQuickprof()I
.end method

.method public static native fail()V
.end method

.method public static native isDebug()Z
.end method

.method public static native isDoublePrecision()Z
.end method

.method public static native isInsideTriangle(Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
.end method

.method public static native isQuickprof()Z
.end method

.method public static native isThreadSafe()Z
.end method

.method public static native jniEnvId()J
.end method

.method private static postInitialization()V
    .locals 4

    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->versionNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23.1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/bullet/util/NativeLibrary;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a v23.1.0 native library but loaded v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/jme3/bullet/util/NativeLibrary$1;

    const-string v1, "Physics Cleaner"

    invoke-direct {v0, v1}, Lcom/jme3/bullet/util/NativeLibrary$1;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static reinitialization()V
    .locals 0

    return-void
.end method

.method public static native resetQuickprof()V
.end method

.method public static native setReinitializationCallbackEnabled(Z)V
.end method

.method public static native setStartupMessageEnabled(Z)V
.end method

.method public static native versionNumber()Ljava/lang/String;
.end method
