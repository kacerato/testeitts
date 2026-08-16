.class Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemModulesLocationHandler"
.end annotation


# instance fields
.field private moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

.field private modules:Ljava/nio/file/Path;

.field private systemJavaHome:Ljava/nio/file/Path;

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->SYSTEM:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    sget-object p1, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->lambda$initSystemModules$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private checkPaths(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->checkDirectory(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initSystemModules()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {v0, v2, v1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "jrt:/"

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->isCurrentPlatform(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v3, "java.home"

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_2
    :try_start_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    const-string v4, "jrt-fs.jar"

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    const-class v4, Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ljava/net/URLClassLoader;

    filled-new-array {v3}, [Ljava/net/URL;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3, v5}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v3, v3, Lorg/openjdk/tools/javac/file/Locations;->closeables:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v3, v3, Lorg/openjdk/tools/javac/file/Locations;->closeables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v3, "/modules"

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;
    :try_end_2
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    const-string v4, "modules"

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t find system classes"

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_3
    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {v0, v2, v1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;

    new-instance v1, Lorg/openjdk/tools/javac/file/m;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/file/m;-><init>()V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v4}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v5, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v3

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void

    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_6

    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw v2
.end method

.method private isCurrentPlatform(Ljava/nio/file/Path;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static synthetic lambda$initSystemModules$0(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private update(Ljava/nio/file/Path;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->isCurrentPlatform(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lib"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "jrt-fs.jar"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    const-string v2, "modules"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->initSystemModules()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->initSystemModules()V

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->initSystemModules()V

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    sget-object p2, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    goto :goto_0

    :cond_1
    const-string v1, "none"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->update(Ljava/nio/file/Path;)V

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->modules:Ljava/nio/file/Path;

    const/4 p1, 0x1

    return p1
.end method

.method public listLocationsForModules()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->initSystemModules()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->locations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->systemJavaHome:Ljava/nio/file/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->checkSingletonDirectory(Ljava/lang/Iterable;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->update(Ljava/nio/file/Path;)V

    :goto_0
    return-void
.end method

.method public setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->checkPaths(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->initSystemModules()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_0

    :cond_0
    iput-object v5, p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->updatePaths(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    :goto_0
    return-void
.end method
