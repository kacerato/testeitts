.class public Lorg/openjdk/tools/javac/file/JRTIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;,
        Lorg/openjdk/tools/javac/file/JRTIndex$Entry;
    }
.end annotation


# static fields
.field private static sharedInstance:Lorg/openjdk/tools/javac/file/JRTIndex;


# instance fields
.field private ctBundle:Ljava/util/ResourceBundle;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/openjdk/tools/javac/file/JRTIndex$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final jrtfs:Ljava/nio/file/FileSystem;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "jrt:/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->jrtfs:Ljava/nio/file/FileSystem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->entries:Ljava/util/Map;

    return-void
.end method

.method private getCtInfo(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;
    .locals 10

    iget-object v0, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->EMPTY:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->ctBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    const-string v0, "org.openjdk.tools.javac.resources.ct"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->ctBundle:Ljava/util/ResourceBundle;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->ctBundle:Ljava/util/ResourceBundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " +"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_7

    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x48916256

    const/4 v9, 0x1

    if-eq v7, v8, :cond_3

    const v8, -0xf94f141

    if-eq v7, v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "proprietary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_3
    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eqz v7, :cond_6

    if-eq v7, v9, :cond_5

    move-object v2, v6

    goto :goto_3

    :cond_5
    move v5, v9

    goto :goto_3

    :cond_6
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance p1, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    invoke-direct {p1, v4, v5, v2}, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;-><init>(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->EMPTY:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    return-object p1
.end method

.method public static declared-synchronized getSharedInstance()Lorg/openjdk/tools/javac/file/JRTIndex;
    .locals 3

    const-class v0, Lorg/openjdk/tools/javac/file/JRTIndex;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/openjdk/tools/javac/file/JRTIndex;->sharedInstance:Lorg/openjdk/tools/javac/file/JRTIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lorg/openjdk/tools/javac/file/JRTIndex;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/file/JRTIndex;-><init>()V

    sput-object v1, Lorg/openjdk/tools/javac/file/JRTIndex;->sharedInstance:Lorg/openjdk/tools/javac/file/JRTIndex;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/file/JRTIndex;->sharedInstance:Lorg/openjdk/tools/javac/file/JRTIndex;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/JRTIndex;
    .locals 2

    const-class v0, Lorg/openjdk/tools/javac/file/JRTIndex;

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/file/JRTIndex;

    if-nez v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/file/JRTIndex;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/file/JRTIndex;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :goto_1
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    :try_start_0
    const-string v0, "jrt:/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCtSym(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JRTIndex;->getEntry(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$Entry;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->ctSym:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    return-object p1
.end method

.method public declared-synchronized getEntry(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$Entry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;

    :goto_0
    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->jrtfs:Ljava/nio/file/FileSystem;

    const-string v4, "/modules"

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->jrtfs:Ljava/nio/file/FileSystem;

    const-string v4, "/packages"

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/RelativePath;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :goto_1
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-static {v5}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_3
    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v9}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_5
    new-array v9, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v7, p1, v8}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :cond_6
    :try_start_3
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :try_start_7
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :goto_7
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    if-eqz v2, :cond_9

    :try_start_9
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v0

    :cond_a
    :goto_9
    new-instance v6, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JRTIndex;->getCtInfo(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;)Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;-><init>(Lorg/openjdk/tools/javac/file/JRTIndex;Ljava/util/Map;Ljava/util/Set;Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;Lorg/openjdk/tools/javac/file/JRTIndex$1;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->entries:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v0, v6

    :cond_b
    monitor-exit p0

    return-object v0

    :goto_a
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method public isInJRT(Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 2

    instance-of v0, p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JRTIndex;->jrtfs:Ljava/nio/file/FileSystem;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
