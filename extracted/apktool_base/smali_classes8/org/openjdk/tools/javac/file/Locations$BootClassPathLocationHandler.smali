.class Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootClassPathLocationHandler"
.end annotation


# instance fields
.field private isDefault:Z

.field final optionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/main/Option;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchPath:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 8

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_APPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v4, Lorg/openjdk/tools/javac/main/Option;->ENDORSEDDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->DJAVA_ENDORSED_DIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->EXTDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->DJAVA_EXT_DIRS:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array/range {v0 .. v7}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    return-void
.end method

.method private canonicalize(Lorg/openjdk/tools/javac/main/Option;)Lorg/openjdk/tools/javac/main/Option;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/file/Locations$1;->$SwitchMap$com$sun$tools$javac$main$Option:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->EXTDIRS:Lorg/openjdk/tools/javac/main/Option;

    return-object p1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->ENDORSEDDIRS:Lorg/openjdk/tools/javac/main/Option;

    return-object p1

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    return-object p1
.end method

.method private lazy()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->computePath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private systemClasses()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/file/Locations;->thisSystemModules:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    const-string v2, "modules"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v2, "java.base"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public computePath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->ENDORSEDDIRS:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object v4, Lorg/openjdk/tools/javac/main/Option;->EXTDIRS:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_APPEND:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectories(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    goto :goto_0

    :cond_0
    const-string v2, "java.endorsed.dirs"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectories(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->systemClasses()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2, v6}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/Iterable;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    goto :goto_1

    :cond_2
    const-string v2, "sun.boot.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    :goto_1
    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectories(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    goto :goto_2

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    const-string v3, "lib/jfxrt.jar"

    invoke-interface {v2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v6}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFile(Ljava/nio/file/Path;Z)V

    :cond_4
    const-string v2, "java.ext.dirs"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addDirectories(Ljava/lang/String;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    :goto_2
    if-nez v4, :cond_5

    if-nez v1, :cond_5

    if-nez v5, :cond_5

    const/4 v6, 0x1

    :cond_5
    iput-boolean v6, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->isDefault:Z

    return-object v0
.end method

.method public contains(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$800(Lorg/openjdk/tools/javac/file/Locations;Ljava/util/Collection;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->lazy()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    return-object v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->canonicalize(Lorg/openjdk/tools/javac/main/Option;)Lorg/openjdk/tools/javac/main/Option;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_APPEND:Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    const/4 p1, 0x1

    return p1
.end method

.method public isDefault()Z
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->lazy()V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->isDefault:Z

    return v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->isDefault:Z

    new-instance v2, Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {v2, v3, v0}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    invoke-virtual {v2, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/Iterable;Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->searchPath:Ljava/util/Collection;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->optionValues:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :goto_0
    return-void
.end method
