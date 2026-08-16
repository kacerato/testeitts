.class public Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/tools/r8/keepanno/annotations/KeepForApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$ReflectiveOperationLogger;,
        Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

.field private static instanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->instanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    return-object v0
.end method

.method private static getInstance()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->instanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->getReceiver()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->INSTANCE:Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    return-object v0
.end method

.method private static getReceiver()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$ReflectiveOperationLogger;

    invoke-direct {v0}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$ReflectiveOperationLogger;-><init>()V

    return-object v0
.end method

.method public static onClassForName(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->getInstance()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->createStack()Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;->onClassForName(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs onClassGetDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->getInstance()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->createStack()Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;->onClassGetDeclaredMethod(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static onClassNewInstance(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->getInstance()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->createStack()Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;->onClassNewInstance(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/Class;)V

    return-void
.end method
