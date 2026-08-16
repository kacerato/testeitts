.class Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;->findPackagesInModules(Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;)Ljava/util/HashMap;
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
.field packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field private final synthetic val$packagesInModule:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->val$packagesInModule:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/16 v0, 0x29

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 3
    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->val$packagesInModule:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption$1;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->addToPackageSet(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Ljava/lang/String;Z)V

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
