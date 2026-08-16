.class Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->compute()V
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
.field final synthetic this$0:Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

.field final synthetic val$path:Ljava/nio/file/Path;

.field final synthetic val$walks:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;Ljava/nio/file/Path;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$walks",
            "val$path"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    iput-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$path:Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$walks:Ljava/util/List;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
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
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {p2}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->access$200(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/github/javaparser/utils/SourceRoot;->isSensibleDirectoryToEnter(Ljava/nio/file/Path;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$path:Ljava/nio/file/Path;

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {v0}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->access$300(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;)Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 6
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 7
    iget-object p1, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$walks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 9
    :cond_1
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {v0}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->access$300(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;)Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;->process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
