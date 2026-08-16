.class public Lorg/eclipse/jdt/internal/core/ProjectEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# instance fields
.field project:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method

.method public static representsProject(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ProjectEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v2, Lorg/eclipse/core/runtime/Path;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->findElement(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    instance-of p1, p1, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    filled-new-array {p1}, [[C

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    :cond_3
    return-object v1
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return v0
.end method

.method public isAutomaticModule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
