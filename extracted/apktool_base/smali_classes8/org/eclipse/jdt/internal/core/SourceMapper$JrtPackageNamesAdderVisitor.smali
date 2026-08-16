.class Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/SourceMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JrtPackageNamesAdderVisitor"
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
.field public complianceLevel:Ljava/lang/String;

.field public containsADefaultPackage:Z

.field public containsJavaSource:Z

.field public final firstLevelPackageNames:Ljava/util/HashSet;

.field final root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field public sourceLevel:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SourceMapper;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SourceMapper;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZZLorg/eclipse/jdt/core/IPackageFragmentRoot;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->this$0:Lorg/eclipse/jdt/internal/core/SourceMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->firstLevelPackageNames:Ljava/util/HashSet;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->sourceLevel:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->complianceLevel:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsADefaultPackage:Z

    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsJavaSource:Z

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    const/16 p2, 0x2f

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->firstLevelPackageNames:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->sourceLevel:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->root:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    .line 9
    const-string v0, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p2, v0, p3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->sourceLevel:Ljava/lang/String;

    .line 10
    const-string v0, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {p2, v0, p3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->complianceLevel:Ljava/lang/String;

    .line 11
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->sourceLevel:Ljava/lang/String;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->complianceLevel:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 13
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->firstLevelPackageNames:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsADefaultPackage:Z

    goto :goto_0

    .line 15
    :cond_3
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsJavaSource:Z

    if-nez p2, :cond_4

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsJavaSource:Z

    .line 17
    :cond_4
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->visitModule(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->visitPackage(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
