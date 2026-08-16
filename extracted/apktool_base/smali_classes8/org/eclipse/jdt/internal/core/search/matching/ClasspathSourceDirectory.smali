.class public Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# instance fields
.field directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field fulInclusionPatternChars:[[C

.field fullExclusionPatternChars:[[C

.field missingPackageHolder:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field sourceFolder:Lorg/eclipse/core/resources/IContainer;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IContainer;[[C[[C)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->missingPackageHolder:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fullExclusionPatternChars:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fulInclusionPatternChars:[[C

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public debugPathString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public directoryTable(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->missingPackageHolder:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IContainer;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v4, :cond_5

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypes(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fulInclusionPatternChars:[[C

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fullExclusionPatternChars:[[C

    invoke-static {v7, v8, v9, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isExcluded([C[[C[[CZ)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_5
    aget-object v7, v1, v6

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfJavaLikeExtension(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_6

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fulInclusionPatternChars:[[C

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->fullExclusionPatternChars:[[C

    invoke-static {v10, v11, v12, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isExcluded([C[[C[[CZ)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->missingPackageHolder:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 2
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryTable(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget p4, p2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez p4, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    new-instance p4, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    :goto_0
    invoke-direct {p4, p1, v0}, Lorg/eclipse/jdt/internal/core/util/ResourceCompilationUnit;-><init>(Lorg/eclipse/core/resources/IFile;[C)V

    .line 7
    invoke-direct {p2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p2

    :cond_1
    return-object p3
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryTable(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryTable(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source classpath directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ClasspathSourceDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
