.class Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;
.super Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JrtIndexer"
.end annotation


# instance fields
.field final container:Lorg/eclipse/core/runtime/IPath;

.field final index:Lorg/eclipse/jdt/internal/core/index/Index;

.field final indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

.field final indexPath:Lorg/eclipse/core/runtime/IPath;

.field final jrt:Ljava/io/File;

.field final participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;Ljava/io/File;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->jrt:Ljava/io/File;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getCanonicalFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->indexPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->container:Lorg/eclipse/core/runtime/IPath;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    return-void
.end method


# virtual methods
.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isValidPackageNameForClassOrisModule(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->jrt:Ljava/io/File;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfileContent(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->container:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->JAR_SEPARATOR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    invoke-direct {p2, p1, p3, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/lang/String;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;->indexPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
