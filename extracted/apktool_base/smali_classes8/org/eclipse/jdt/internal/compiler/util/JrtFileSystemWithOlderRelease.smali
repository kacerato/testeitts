.class Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;
.super Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
.source "SourceFile"


# instance fields
.field protected modulePath:Ljava/nio/file/Path;

.field final release:Ljava/lang/String;

.field releaseInHex:Ljava/lang/String;

.field private subReleases:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->releaseInHex:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->subReleases:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->modulePath:Ljava/nio/file/Path;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->release:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->initialize(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public initialize(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->initialize(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->release:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->releaseInHex:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    const-string v0, "lib"

    const-string v1, "ct.sym"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jar:file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 8
    :try_start_0
    invoke-static {p2}, Ljava/nio/file/FileSystems;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    :try_start_1
    invoke-static {p2, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const-string v1, "/"

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 13
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->releaseInHex:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->releaseInHex:Ljava/lang/String;

    const-string v3, "system-modules"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    .line 16
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->release:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_2
    invoke-static {p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    invoke-interface {p2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_5

    .line 20
    :try_start_4
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 21
    :cond_5
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 22
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->releaseInHex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_6

    .line 25
    :try_start_6
    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    :cond_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz p1, :cond_7

    if-eq p1, p2, :cond_8

    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_7
    move-object p1, p2

    :cond_8
    :goto_3
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 26
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->subReleases:[Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public walkModuleImage(Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor<",
            "Ljava/nio/file/Path;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;->subReleases:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease$1;

    invoke-direct {v5, p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease$1;-><init>(Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;ILorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;)V

    invoke-static {v4, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
