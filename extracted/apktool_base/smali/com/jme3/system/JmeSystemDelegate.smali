.class public abstract Lcom/jme3/system/JmeSystemDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected errorMessageHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected initialized:Z

.field protected final logger:Ljava/util/logging/Logger;

.field protected lowPermissions:Z

.field protected settingsHandler:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/jme3/system/AppSettings;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

.field protected storageFolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/system/JmeSystem$StorageFolderType;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/system/JmeSystemDelegate;->initialized:Z

    iput-boolean v0, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/system/JmeSystem$StorageFolderType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->storageFolders:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

    new-instance v0, Lcom/jme3/system/a;

    invoke-direct {v0, p0}, Lcom/jme3/system/a;-><init>(Lcom/jme3/system/JmeSystemDelegate;)V

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->errorMessageHandler:Ljava/util/function/Consumer;

    new-instance v0, Lcom/jme3/system/b;

    invoke-direct {v0, p0}, Lcom/jme3/system/b;-><init>(Lcom/jme3/system/JmeSystemDelegate;)V

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->settingsHandler:Ljava/util/function/BiFunction;

    return-void
.end method

.method public static synthetic a(Lcom/jme3/system/JmeSystemDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/jme3/system/JmeSystemDelegate;Lcom/jme3/system/AppSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/system/JmeSystemDelegate;->lambda$new$1(Lcom/jme3/system/AppSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getLinuxPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;
    .locals 2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isArmArchitecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/jme3/system/Platform;->Linux_ARM64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isX86Architecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/jme3/system/Platform;->Linux64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported architecture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "Linux"

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->unsupported32Bit(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method private getMacPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;
    .locals 2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isArmArchitecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/jme3/system/Platform;->MacOSX_ARM64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isX86Architecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/jme3/system/Platform;->MacOSX64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported architecture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "macOS"

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->unsupported32Bit(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method private getWindowsPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;
    .locals 2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isArmArchitecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/jme3/system/Platform;->Windows_ARM64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->isX86Architecture(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/jme3/system/Platform;->Windows64:Lcom/jme3/system/Platform;

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported architecture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "Windows"

    invoke-direct {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->unsupported32Bit(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method private is64Bit(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "ppc64"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "armv7"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "arm64"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "amd64"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "i686"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "i386"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_6
    const-string v3, "x86"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "arm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_8
    const-string v3, "universal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_9
    const-string v3, "x86_64"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_a
    const-string v3, "aarch64"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_b
    const-string v3, "aarch32"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    move v2, v0

    goto :goto_0

    :sswitch_c
    const-string v3, "armv7l"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x540025d1 -> :sswitch_c
        -0x48c8732a -> :sswitch_b
        -0x48c872cb -> :sswitch_a
        -0x300b59d9 -> :sswitch_9
        -0x186901b5 -> :sswitch_8
        0x17a5c -> :sswitch_7
        0x1c976 -> :sswitch_6
        0x308168 -> :sswitch_5
        0x308cab -> :sswitch_4
        0x589f276 -> :sswitch_3
        0x58c5a1a -> :sswitch_2
        0x58c61dd -> :sswitch_1
        0x65eac61 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isArmArchitecture(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "arm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aarch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isX86Architecture(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "x86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amd64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "x86_64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "i386"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "i686"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "universal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.jme3.system.JmeDialogsFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/system/JmeDialogsFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_6
    iget-object v1, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    const-string v2, "JmeDialogsFactory implementation not found."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/system/JmeDialogsFactory;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/jme3/system/AppSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.jme3.system.JmeDialogsFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/system/JmeDialogsFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_6
    iget-object v1, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    const-string v2, "JmeDialogsFactory implementation not found."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/jme3/system/JmeDialogsFactory;->showSettingsDialog(Lcom/jme3/system/AppSettings;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private unsupported32Bit(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32-bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBuildInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/system/JmeSystemDelegate;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * Branch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jme3/system/JmeVersion;->BRANCH_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * Git Hash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jme3/system/JmeVersion;->GIT_SHORT_HASH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * Build Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/system/JmeVersion;->BUILD_DATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jme3/system/JmeVersion;->FULL_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Lcom/jme3/system/Platform;
    .locals 4

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/system/JmeSystemDelegate;->is64Bit(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/jme3/system/JmeSystemDelegate;->getWindowsPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "linux"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "freebsd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "sunos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "unix"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "mac os x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "darwin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified platform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/jme3/system/JmeSystemDelegate;->getMacPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/jme3/system/JmeSystemDelegate;->getLinuxPlatform(Ljava/lang/String;Z)Lcom/jme3/system/Platform;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPlatformAssetConfigURL()Ljava/net/URL;
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jme3/util/res/Resources;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jme3/util/res/Resources;->getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getSoftTextDialogInput()Lcom/jme3/input/SoftTextDialogInput;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

    return-object v0
.end method

.method public declared-synchronized getStorageFolder(Lcom/jme3/system/JmeSystem$StorageFolderType;)Ljava/io/File;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jme3/system/JmeSystemDelegate$1;->$SwitchMap$com$jme3$system$JmeSystem$StorageFolderType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->storageFolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jme3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jme3/system/JmeSystemDelegate;->storageFolders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    const-string v2, "Storage Folder Path: {0}"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Storage Folder not found!"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "File system access restricted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public handleErrorMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->errorMessageHandler:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public handleSettings(Lcom/jme3/system/AppSettings;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->settingsHandler:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract initialize(Lcom/jme3/system/AppSettings;)V
.end method

.method public isLowPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    return v0
.end method

.method public final newAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/asset/DesktopAssetManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/asset/DesktopAssetManager;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method public final newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/asset/DesktopAssetManager;

    invoke-direct {v0, p1}, Lcom/jme3/asset/DesktopAssetManager;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method public abstract newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;
.end method

.method public abstract newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;
.end method

.method public setErrorMessageHandler(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/system/JmeSystemDelegate;->errorMessageHandler:Ljava/util/function/Consumer;

    return-void
.end method

.method public setLowPermissions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    return-void
.end method

.method public setSettingsHandler(Ljava/util/function/BiFunction;)V
    .locals 0
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

    iput-object p1, p0, Lcom/jme3/system/JmeSystemDelegate;->settingsHandler:Ljava/util/function/BiFunction;

    return-void
.end method

.method public setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/system/JmeSystemDelegate;->softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->handleErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showSettingsDialog(Lcom/jme3/system/AppSettings;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jme3/system/JmeSystemDelegate;->handleSettings(Lcom/jme3/system/AppSettings;Z)Z

    move-result p1

    return p1
.end method

.method public abstract showSoftKeyboard(Z)V
.end method

.method public trackDirectMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeImageFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
