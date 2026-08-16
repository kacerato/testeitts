.class final Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;
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
    name = "DirectoryContainer"
.end annotation


# instance fields
.field private final directory:Ljava/nio/file/Path;

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->directory:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getFileObject(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$500(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forSimplePath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 10
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

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {v2, v0, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$300(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-object v2, v2, Lorg/openjdk/tools/javac/file/JavacFileManager;->sortFiles:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    :goto_0
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-array v4, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p4, :cond_4

    invoke-static {v3}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v6, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v6, p2, v3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-static {v2, v3, p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->access$400(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_4
    new-instance v2, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v2, p2, v3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->directory:Ljava/nio/file/Path;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Lorg/openjdk/tools/javac/file/PathFileObject;->forDirectoryPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object v2

    invoke-virtual {p5, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_4
    .catch Ljava/nio/file/InvalidPathException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error accessing directory "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;->directory:Ljava/nio/file/Path;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_8

    :try_start_6
    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    :try_start_7
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    return-void
.end method
