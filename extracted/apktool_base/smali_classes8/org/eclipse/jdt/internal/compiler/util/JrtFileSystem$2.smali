.class Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;
.super Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->walkModuleImage(Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

.field private final synthetic val$notify:I

.field private final synthetic val$visitor:Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;ILorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->this$0:Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$notify:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$visitor:Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 4
    invoke-interface {p1, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p2

    .line 5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->MODULE_TO_LOAD:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->MODULE_TO_LOAD:Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 8
    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$notify:I

    sget v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 9
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$visitor:Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;->visitModule(Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    :goto_0
    return-object p1

    .line 10
    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$notify:I

    sget v4, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_PACKAGES:I

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 11
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 12
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$visitor:Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;

    invoke-interface {p1, v2, v0}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v3, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;->visitPackage(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$notify:I

    sget v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_FILES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->this$0:Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->cachePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;->val$visitor:Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;

    const/4 v1, 0x2

    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;->visitFile(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
