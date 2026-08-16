.class public abstract Lorg/openjdk/tools/javac/file/PathFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/PathFileObject$CannotCreateUriError;,
        Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;,
        Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;,
        Lorg/openjdk/tools/javac/file/PathFileObject$JarFileObject;,
        Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;
    }
.end annotation


# static fields
.field private static final defaultFileSystem:Ljava/nio/file/FileSystem;

.field private static final isMacOS:Z


# instance fields
.field protected final fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

.field private hasParents:Z

.field protected final path:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/file/PathFileObject;->defaultFileSystem:Ljava/nio/file/FileSystem;

    const-string v0, "os.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javac/file/PathFileObject;->isMacOS:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "directories not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureParentDirectoriesExist()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->hasParents:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not create parent directories"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->hasParents:Z

    :cond_1
    return-void
.end method

.method public static forDirectoryPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V

    return-object v6
.end method

.method public static forJRTPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V

    return-object v0
.end method

.method public static forJarPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$JarFileObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/openjdk/tools/javac/file/PathFileObject$JarFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V

    return-object v0
.end method

.method public static forSimplePath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V

    return-object v0
.end method

.method public static getSimpleName(Lorg/openjdk/javax/tools/FileObject;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toBinaryName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-static {p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBinaryName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v0, p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->toBinaryName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBinaryName(Lorg/openjdk/tools/javac/file/RelativePath;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/file/PathFileObject;->toBinaryName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getCachedContent(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/nio/CharBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v2, v2, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2, p0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v3, v1, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {p1, p0, v3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->cache(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1

    :cond_3
    :goto_3
    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSibling(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/PathFileObject;
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;->isPathNameCompatible(Ljava/nio/file/Path;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method

.method public isPathNameCompatible(Ljava/nio/file/Path;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p3

    invoke-interface {p3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    sget-object v3, Lorg/openjdk/tools/javac/file/PathFileObject;->defaultFileSystem:Ljava/nio/file/FileSystem;

    if-ne v0, v3, :cond_3

    sget-boolean v0, Lorg/openjdk/tools/javac/file/PathFileObject;->isMacOS:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p3, v0}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p2, v0}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p3, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :try_start_0
    sget-object p3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {p3}, [Ljava/nio/file/LinkOption;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_3
    return v1
.end method

.method public isSameFile(Lorg/openjdk/tools/javac/file/PathFileObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->updateLastUsedTime()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->updateLastUsedTime()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->flushCache(Lorg/openjdk/javax/tools/JavaFileObject;)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->ensureParentDirectoriesExist()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->updateLastUsedTime()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->flushCache(Lorg/openjdk/javax/tools/JavaFileObject;)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/PathFileObject;->ensureParentDirectoriesExist()V

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
