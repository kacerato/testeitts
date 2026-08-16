.class Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->loadModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

.field private final synthetic val$newCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->val$newCache:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->file:Ljava/io/File;

    const-string v1, "module-info.class"

    invoke-static {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfileContent(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->val$newCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->acceptModule([BLjava/util/Map;)V

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->moduleNamesCache:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    .line 5
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$2;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
