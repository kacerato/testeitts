.class Lcom/github/javaparser/utils/SourceRoot$2;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
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
.field final synthetic this$0:Lcom/github/javaparser/utils/SourceRoot;

.field final synthetic val$callback:Lcom/github/javaparser/utils/SourceRoot$Callback;

.field final synthetic val$configuration:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$configuration"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceRoot$2;->this$0:Lcom/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$2;->val$configuration:Lcom/github/javaparser/ParserConfiguration;

    iput-object p3, p0, Lcom/github/javaparser/utils/SourceRoot$2;->val$callback:Lcom/github/javaparser/utils/SourceRoot$Callback;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot$2;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$2;->this$0:Lcom/github/javaparser/utils/SourceRoot;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/utils/SourceRoot;->isSensibleDirectoryToEnter(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    :goto_0
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
            "absolutePath",
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot$2;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "absolutePath",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".java"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$2;->this$0:Lcom/github/javaparser/utils/SourceRoot;

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot$2;->val$configuration:Lcom/github/javaparser/ParserConfiguration;

    iget-object v1, p0, Lcom/github/javaparser/utils/SourceRoot$2;->val$callback:Lcom/github/javaparser/utils/SourceRoot$Callback;

    invoke-static {p2, p1, v0, v1}, Lcom/github/javaparser/utils/SourceRoot;->access$100(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
