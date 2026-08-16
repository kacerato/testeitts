.class final Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/file/JavacFileManager$Container;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArchiveContainer"
.end annotation


# instance fields
.field private final archivePath:Ljava/nio/file/Path;

.field private final fileSystem:Ljava/nio/file/FileSystem;

.field private final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/file/RelativePath;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/nio/file/ProviderNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->archivePath:Ljava/nio/file/Path;

    iget-object v0, p1, Lorg/openjdk/tools/javac/file/BaseFileManager;->multiReleaseValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "multi-release"

    iget-object v1, p1, Lorg/openjdk/tools/javac/file/BaseFileManager;->multiReleaseValue:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$500(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarFSProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    const-string v2, "should have been caught before!"

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->fileSystem:Ljava/nio/file/FileSystem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/nio/file/Path;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->fileSystem:Ljava/nio/file/FileSystem;

    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->packages:Ljava/util/Map;

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->fileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {p2}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    const-class v1, Ljava/nio/file/FileVisitOption;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;

    invoke-direct {v2, p0, p1, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V

    const v3, 0x7fffffff

    invoke-static {v0, v1, v3, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->isValid(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->packages:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->archivePath:Ljava/nio/file/Path;

    return-object p0
.end method

.method private isValid(Ljava/nio/file/Path;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->fileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->close()V

    return-void
.end method

.method public getFileObject(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->dirname()Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->packages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->basename()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {v0, p2, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forJarPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;Z",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->packages:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    const p2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    sget-object p4, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-static {p4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p4

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;

    invoke-direct {v0, p0, p3, p5}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Ljava/util/Set;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    invoke-static {p1, p4, p2, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method
