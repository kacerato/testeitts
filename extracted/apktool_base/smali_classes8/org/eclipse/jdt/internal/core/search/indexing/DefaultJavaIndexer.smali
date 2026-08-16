.class public Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JAR_SEPARATOR:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "|"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;->JAR_SEPARATOR:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateIndexForJar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/index/Index;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lorg/eclipse/jdt/internal/core/index/Index;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v0

    sget-char v1, Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;->JAR_SEPARATOR:C

    iput-char v1, p2, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/index/Index;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    new-instance v6, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v6, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v6, v4, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/util/zip/ZipEntry;Lorg/eclipse/core/runtime/IPath;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V

    invoke-virtual {v5, p2}, Lorg/eclipse/jdt/core/search/SearchDocument;->setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    new-instance v3, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;

    invoke-direct {v3, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw p1

    :cond_2
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
