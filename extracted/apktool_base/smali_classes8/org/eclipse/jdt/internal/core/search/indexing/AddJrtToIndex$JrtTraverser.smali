.class Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JrtTraverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isValidPackageNameForClassOrisModule(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    sget-object p3, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->EXISTS:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic visitModule(Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic visitPackage(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
