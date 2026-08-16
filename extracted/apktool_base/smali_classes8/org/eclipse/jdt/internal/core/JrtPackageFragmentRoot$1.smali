.class Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z
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
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

.field private final synthetic val$rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->this$0:Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->val$rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->this$0:Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->val$rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "1.8"

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

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
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->this$0:Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->this$0:Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot$1;->val$rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "1.8"

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
