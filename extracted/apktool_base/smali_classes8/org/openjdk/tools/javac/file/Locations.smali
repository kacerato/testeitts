.class public Lorg/openjdk/tools/javac/file/Locations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$ModuleTable;,
        Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$LocationHandler;,
        Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    }
.end annotation


# static fields
.field static final javaHome:Ljava/nio/file/Path;

.field static final thisSystemModules:Ljava/nio/file/Path;


# instance fields
.field closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field fileSystems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/FileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private fsEnv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

.field handlersForLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Lorg/openjdk/tools/javac/file/Locations$LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field handlersForOption:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/main/Option;",
            "Lorg/openjdk/tools/javac/file/Locations$LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field private moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

.field private pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

.field private warn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/file/Locations;->javaHome:Ljava/nio/file/Path;

    const-string v1, "lib"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "modules"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/file/Locations;->thisSystemModules:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/file/d;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/d;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->fileSystems:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->closeables:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->fsEnv:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations;->initHandlers()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/ListBuffer;Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->lambda$close$0(Lorg/openjdk/tools/javac/util/ListBuffer;Ljava/io/Closeable;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/file/Locations;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getPathEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/file/Locations;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/file/Locations;->warn:Z

    return p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/file/Locations;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations;->fsEnv:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/jvm/ModuleNameReader;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations;->moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    return-object p0
.end method

.method public static synthetic access$1302(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/jvm/ModuleNameReader;)Lorg/openjdk/tools/javac/jvm/ModuleNameReader;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations;->moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/file/Locations;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->getPathEntries(Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->isArchive(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/file/Locations;Ljava/util/Collection;Ljava/nio/file/Path;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->contains(Ljava/util/Collection;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private contains(Ljava/util/Collection;Ljava/nio/file/Path;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarFSProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 6
    const-string v3, "file:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 10
    invoke-static {v2}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    new-array v3, v0, [Ljava/nio/file/LinkOption;

    .line 12
    invoke-static {v2, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {p2, v2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    if-eqz v1, :cond_2

    .line 14
    invoke-static {v1, v2}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v5

    :cond_4
    return v0
.end method

.method private getPathEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations;->getPathEntries(Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private getPathEntries(Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    iget-boolean v5, p0, Lorg/openjdk/tools/javac/file/Locations;->warn:Z

    if-eqz v5, :cond_1

    .line 8
    iget-object v5, p0, Lorg/openjdk/tools/javac/file/Locations;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    const-string v7, "invalid.path"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isArchive(Ljava/nio/file/Path;)Z
    .locals 2

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isFile(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ".jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$close$0(Lorg/openjdk/tools/javac/util/ListBuffer;Ljava/io/Closeable;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations;->closeables:Ljava/util/List;

    new-instance v2, Lorg/openjdk/tools/javac/file/f;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/javac/file/f;-><init>(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    return-void
.end method

.method public contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/nio/file/Path;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown location"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->handlersForLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    :goto_0
    return-object p1
.end method

.method public getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->getPaths()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/nio/file/Path;
    .locals 1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->access$1400(Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations;->handlersForOption:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->isSet()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->inferModuleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public initHandlers()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/openjdk/tools/javac/file/Locations;->handlersForLocation:Ljava/util/Map;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/file/Locations;->handlersForOption:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    new-instance v2, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    new-instance v3, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->SOURCE_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v5}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v4, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;

    sget-object v5, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v6}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v5, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v7}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v6, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v8, Lorg/openjdk/tools/javac/main/Option;->D:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v8}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v8

    invoke-direct {v6, v0, v7, v8}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v7, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    sget-object v8, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->S:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v9}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v9

    invoke-direct {v7, v0, v8, v9}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v8, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    sget-object v9, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v10, Lorg/openjdk/tools/javac/main/Option;->H:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v10}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v10

    invoke-direct {v8, v0, v9, v10}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v9, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;

    invoke-direct {v9, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    new-instance v10, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;

    invoke-direct {v10, v0}, Lorg/openjdk/tools/javac/file/Locations$PatchModulesLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    new-instance v11, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    sget-object v12, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v13, Lorg/openjdk/tools/javac/main/Option;->UPGRADE_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v13}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v13

    invoke-direct {v11, v0, v12, v13}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v12, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    sget-object v13, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v14, Lorg/openjdk/tools/javac/main/Option;->MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v14}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v14

    invoke-direct {v12, v0, v13, v14}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance v13, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;

    invoke-direct {v13, v0}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    const/16 v14, 0xd

    new-array v15, v14, [Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/4 v1, 0x1

    aput-object v2, v15, v1

    const/4 v2, 0x2

    aput-object v3, v15, v2

    const/4 v2, 0x3

    aput-object v4, v15, v2

    const/4 v2, 0x4

    aput-object v5, v15, v2

    const/4 v2, 0x5

    aput-object v6, v15, v2

    const/4 v2, 0x6

    aput-object v7, v15, v2

    const/4 v2, 0x7

    aput-object v8, v15, v2

    const/16 v2, 0x8

    aput-object v9, v15, v2

    const/16 v2, 0x9

    aput-object v10, v15, v2

    const/16 v2, 0xa

    aput-object v11, v15, v2

    const/16 v2, 0xb

    aput-object v12, v15, v2

    const/16 v2, 0xc

    aput-object v13, v15, v2

    move/from16 v2, v16

    :goto_0
    if-ge v2, v14, :cond_1

    aget-object v3, v15, v2

    iget-object v4, v0, Lorg/openjdk/tools/javac/file/Locations;->handlersForLocation:Ljava/util/Map;

    iget-object v5, v3, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/main/Option;

    iget-object v6, v0, Lorg/openjdk/tools/javac/file/Locations;->handlersForOption:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDefaultBootClassPath()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$BootClassPathLocationHandler;->isDefault()Z

    move-result v0

    return v0
.end method

.method public listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
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

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->listLocationsForModules()Ljava/lang/Iterable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
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

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    new-array v1, v1, [Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;

    new-array v1, v1, [Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations;->handlersForLocation:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->setPaths(Ljava/lang/Iterable;)V

    return-void
.end method

.method public setLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
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

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getHandler(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/file/Locations$LocationHandler;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;

    new-array v1, v1, [Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    new-array v1, v1, [Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations;->handlersForLocation:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/file/Locations$LocationHandler;->setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setMultiReleaseValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "multi-release"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations;->fsEnv:Ljava/util/Map;

    return-void
.end method

.method public setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    return-void
.end method

.method public update(Lorg/openjdk/tools/javac/util/Log;ZLorg/openjdk/tools/javac/file/FSInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/file/Locations;->warn:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/Locations;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    return-void
.end method
