.class public Lorg/eclipse/jdt/internal/core/PackageFragment;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IPackageFragment;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field protected static final NO_CLASSFILES:[Lorg/eclipse/jdt/core/IClassFile;

.field protected static final NO_COMPILATION_UNITS:[Lorg/eclipse/jdt/core/ICompilationUnit;

.field protected static final NO_ORDINARY_CLASSFILES:[Lorg/eclipse/jdt/core/IOrdinaryClassFile;


# instance fields
.field private isValidPackageName:Z

.field public names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/IClassFile;

    sput-object v1, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_CLASSFILES:[Lorg/eclipse/jdt/core/IClassFile;

    new-array v1, v0, [Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    sput-object v1, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_ORDINARY_CLASSFILES:[Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    new-array v0, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    sput-object v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_COMPILATION_UNITS:[Lorg/eclipse/jdt/core/ICompilationUnit;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->internalIsValidPackageName()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->isValidPackageName:Z

    return-void
.end method


# virtual methods
.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getKind()I

    move-result p3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v0

    check-cast p4, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {p4}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object p4

    array-length v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    const-string v6, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v5, v6, v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v5, v7, v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move v7, v3

    :goto_0
    if-lt v7, v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v8, p4, v7

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    invoke-static {v8, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v9

    if-nez v9, :cond_2

    if-ne p3, v4, :cond_1

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {v9, p0, v8, v10}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-virtual {p2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_1
    if-ne p3, v10, :cond_2

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ne p3, v4, :cond_5

    sget-object p3, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnits(Lorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p3

    array-length p4, p3

    :goto_3
    if-lt v3, p4, :cond_4

    goto :goto_4

    :cond_4
    aget-object v0, p3, v3

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p3

    new-array p3, p3, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_5

    :cond_6
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_5
    return v4

    :goto_6
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public containsJavaResources()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;->containsJavaResources()Z

    move-result v0

    return v0
.end method

.method public copy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v4, v0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p2, v2, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    if-eqz p3, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    aput-object p3, p1, v0

    :cond_1
    move-object v6, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/core/IJavaModel;->copy([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompilationUnit(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    sget-object p3, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {p2, p0, p1, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object p2
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;-><init>()V

    return-object v0
.end method

.method public delete(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Lorg/eclipse/jdt/core/IJavaModel;->delete([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public exists()Z
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->isValidPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllClassFiles()[Lorg/eclipse/jdt/core/IClassFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_CLASSFILES:[Lorg/eclipse/jdt/core/IClassFile;

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IClassFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavadocBaseLocation()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2e

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v4, "package-summary.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getURLContents(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    return-object v2

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavadocContents;

    invoke-direct {p1, v1}, Lorg/eclipse/jdt/internal/core/JavadocContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavadocContents;->getPackageDoc()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->javadocCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    const-string v0, "module-info.class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    return-object p1
.end method

.method public getClassFiles()[Lorg/eclipse/jdt/core/IClassFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getOrdinaryClassFiles()[Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->convention_unit_notJavaName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_COMPILATION_UNITS:[Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object v0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getCompilationUnits(Lorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 7

    .line 6
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_WORKING_COPY:[Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object p1

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    new-array v2, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    move v3, v1

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_2

    if-eq v4, v0, :cond_1

    .line 10
    new-array p1, v4, [Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v2, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_1
    return-object v2

    .line 11
    :cond_2
    aget-object v5, p1, v3

    .line 12
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/PackageFragment;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 13
    aput-object v5, v2, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {v0, p0, p1, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public getKind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v0

    return v0
.end method

.method public getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;)V

    return-object v0
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->isDefaultPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;->getNonJavaResources(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;
    .locals 3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "module-info.class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/ClassFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/internal/core/ClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_moduleInfoNotSupported:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->element_invalidClassFileName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrdinaryClassFiles()[Lorg/eclipse/jdt/core/IOrdinaryClassFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->NO_ORDINARY_CLASSFILES:[Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public hasChildren()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubpackages()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    return v3

    :cond_0
    aget-object v5, v0, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v6, v5

    if-gt v6, v1, :cond_1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_1
    if-lt v6, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    aget-object v7, v7, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public internalIsValidPackageName()Z
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v3, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_0

    return v2

    :cond_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v6, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public isDefaultPackage()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValidPackageName()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->isValidPackageName:Z

    return v0
.end method

.method public move(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v4, v0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p2, v2, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    if-eqz p3, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    aput-object p3, p1, v0

    :cond_1
    move-object v6, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/core/IJavaModel;->move([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v2, v4, v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/jdt/core/IJavaModel;->rename([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullName:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_1

    invoke-virtual {p1, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {p1, v1}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toStringChildren(ILjava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringChildren(ILjava/lang/StringBuffer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    array-length p4, p4

    if-nez p4, :cond_0

    const-string p4, "<default>"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringName(Ljava/lang/StringBuffer;)V

    :goto_0
    if-nez p3, :cond_1

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    const-string p1, " (...)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->isValidPackageName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->resourceExists(Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getKind()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    return-object p1
.end method
