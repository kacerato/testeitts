.class Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
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

.field private final synthetic val$answers:Ljava/util/ArrayList;

.field private final synthetic val$moduleName:Ljava/lang/String;

.field private final synthetic val$packageArray:[C

.field private final synthetic val$qualifiedPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;Ljava/lang/String;Ljava/util/ArrayList;[CLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$qualifiedPackageName:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$answers:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$packageArray:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$moduleName:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$qualifiedPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$answers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$packageArray:[C

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;->addTypeName(Ljava/util/ArrayList;Ljava/lang/String;I[C)V

    .line 8
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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

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
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$moduleName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 6
    :cond_1
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt$1;->val$qualifiedPackageName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
