.class Lcom/github/javaparser/utils/ParserCollectionStrategy$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/ParserCollectionStrategy;->collect(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/ProjectRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field current_root:Ljava/nio/file/Path;

.field final javaMatcher:Ljava/nio/file/PathMatcher;

.field final synthetic this$0:Lcom/github/javaparser/utils/ParserCollectionStrategy;

.field final synthetic val$projectRoot:Lcom/github/javaparser/utils/ProjectRoot;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/ParserCollectionStrategy;Lcom/github/javaparser/utils/ProjectRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$projectRoot"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->this$0:Lcom/github/javaparser/utils/ParserCollectionStrategy;

    iput-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->val$projectRoot:Lcom/github/javaparser/utils/ProjectRoot;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    const-string p2, "glob:**.java"

    invoke-interface {p1, p2}, Lcom/github/javaparser/utils/CollectionStrategy;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->javaMatcher:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dir",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->val$projectRoot:Lcom/github/javaparser/utils/ProjectRoot;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/utils/ProjectRoot;->addSourceRoot(Ljava/nio/file/Path;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    .line 5
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_1
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "module-info.java"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->javaMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {p2, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->this$0:Lcom/github/javaparser/utils/ParserCollectionStrategy;

    invoke-interface {p2, p1}, Lcom/github/javaparser/utils/CollectionStrategy;->getRoot(Ljava/nio/file/Path;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
