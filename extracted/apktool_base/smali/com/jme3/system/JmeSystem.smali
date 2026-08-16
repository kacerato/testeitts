.class public Lcom/jme3/system/JmeSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/system/JmeSystem$StorageFolderType;
    }
.end annotation


# static fields
.field private static final delegateClassNames:[Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static systemDelegate:Lcom/jme3/system/JmeSystemDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/JmeSystem;->logger:Ljava/util/logging/Logger;

    const-string v0, "com.jme3.system.android.JmeAndroidSystem"

    const-string v1, "com.jme3.system.ios.JmeIosSystem"

    const-string v2, "com.jme3.system.JmeDesktopSystem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/JmeSystem;->delegateClassNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDelegate()V
    .locals 4

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/jme3/system/JmeSystem;->delegateClassNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/jme3/system/JmeSystem;->tryLoadDelegate(Ljava/lang/String;)Lcom/jme3/system/JmeSystemDelegate;

    move-result-object v3

    sput-object v3, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/jme3/system/JmeSystem;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to find a JmeSystem delegate!\nEnsure either desktop or android jME3 jar is in the classpath."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/jme3/system/JmeSystem;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed to create JmeSystem delegate:\n{0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static getFullName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Lcom/jme3/system/Platform;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->getPlatform()Lcom/jme3/system/Platform;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformAssetConfigURL()Ljava/net/URL;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->getPlatformAssetConfigURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getSoftTextDialogInput()Lcom/jme3/input/SoftTextDialogInput;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->getSoftTextDialogInput()Lcom/jme3/input/SoftTextDialogInput;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getStorageFolder()Ljava/io/File;
    .locals 2

    const-class v0, Lcom/jme3/system/JmeSystem;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/jme3/system/JmeSystem$StorageFolderType;->External:Lcom/jme3/system/JmeSystem$StorageFolderType;

    invoke-static {v1}, Lcom/jme3/system/JmeSystem;->getStorageFolder(Lcom/jme3/system/JmeSystem$StorageFolderType;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getStorageFolder(Lcom/jme3/system/JmeSystem$StorageFolderType;)Ljava/io/File;
    .locals 2

    const-class v0, Lcom/jme3/system/JmeSystem;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 3
    sget-object v1, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v1, p0}, Lcom/jme3/system/JmeSystemDelegate;->getStorageFolder(Lcom/jme3/system/JmeSystem$StorageFolderType;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static handleErrorMessage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->handleErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static handleSettings(Lcom/jme3/system/AppSettings;Z)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->handleSettings(Lcom/jme3/system/AppSettings;Z)Z

    return-void
.end method

.method public static initialize(Lcom/jme3/system/AppSettings;)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->initialize(Lcom/jme3/system/AppSettings;)V

    return-void
.end method

.method public static isLowPermissions()Z
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->isLowPermissions()Z

    move-result v0

    return v0
.end method

.method public static newAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    .line 3
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 4
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->newAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 2
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public static newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;

    move-result-object p0

    return-object p0
.end method

.method public static newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;

    move-result-object p0

    return-object p0
.end method

.method public static setErrorMessageHandler(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->setErrorMessageHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static setLowPermissions(Z)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->setLowPermissions(Z)V

    return-void
.end method

.method public static setSettingsHandler(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/jme3/system/AppSettings;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->setSettingsHandler(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V

    return-void
.end method

.method public static setSystemDelegate(Lcom/jme3/system/JmeSystemDelegate;)V
    .locals 0

    sput-object p0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    return-void
.end method

.method public static showErrorDialog(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/jme3/system/JmeSystem;->handleErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static showSettingsDialog(Lcom/jme3/system/AppSettings;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->showSettingsDialog(Lcom/jme3/system/AppSettings;Z)Z

    move-result p0

    return p0
.end method

.method public static showSoftKeyboard(Z)V
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->showSoftKeyboard(Z)V

    return-void
.end method

.method public static trackDirectMemory()Z
    .locals 1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->trackDirectMemory()Z

    move-result v0

    return v0
.end method

.method private static tryLoadDelegate(Ljava/lang/String;)Lcom/jme3/system/JmeSystemDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/system/JmeSystemDelegate;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static writeImageFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/system/JmeSystemDelegate;->writeImageFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V

    return-void
.end method
