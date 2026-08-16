.class Lorg/eclipse/jdt/internal/core/JavaProject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;->loadModulesInJimage(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/Map;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)V
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
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

.field private final synthetic val$imagePath:Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$referringEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

.field private final synthetic val$resolvedEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

.field private final synthetic val$rootToResolvedEntries:Ljava/util/Map;

.field private final synthetic val$roots:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/Map;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$imagePath:Lorg/eclipse/core/runtime/IPath;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$roots:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$rootToResolvedEntries:Ljava/util/Map;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$resolvedEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$referringEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaProject$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject$1;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

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
    new-instance p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$imagePath:Lorg/eclipse/core/runtime/IPath;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$roots:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$rootToResolvedEntries:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$resolvedEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$1;->val$referringEntry:Lorg/eclipse/jdt/core/IClasspathEntry;

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaProject$1;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
