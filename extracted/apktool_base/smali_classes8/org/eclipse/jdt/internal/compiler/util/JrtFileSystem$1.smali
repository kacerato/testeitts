.class Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;
.super Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->walkJrtForModules()V
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

.field private final synthetic val$subdir:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;->this$0:Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;->val$subdir:Ljava/nio/file/Path;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;->val$subdir:Ljava/nio/file/Path;

    invoke-interface {p2, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;->this$0:Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->cachePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
