.class public Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;,
        Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;
    }
.end annotation


# instance fields
.field misplacedCompilationUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->misplacedCompilationUnits:Ljava/util/Set;

    return-void
.end method

.method private checkPathAndPackage(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;-><init>(Ljava/nio/file/Path;)V

    new-instance p1, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$EnclosingPkgIterator;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public errorsDiscovered()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->misplacedCompilationUnits:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->checkPathAndPackage(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->misplacedCompilationUnits:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->misplacedCompilationUnits:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/CompilationUnitTree;

    const-string v1, "Misplaced compilation unit."

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    invoke-interface {v2}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Package:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
