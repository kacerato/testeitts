.class public Lorg/eclipse/jdt/internal/core/ModulePathContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClasspathContainer;


# instance fields
.field private project:Lorg/eclipse/jdt/core/IJavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ModulePathContainer;->project:Lorg/eclipse/jdt/core/IJavaProject;

    return-void
.end method


# virtual methods
.method public getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ModulePathContainer;->project:Lorg/eclipse/jdt/core/IJavaProject;

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/AbstractModule;

    if-nez v4, :cond_0

    new-array v0, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0

    :cond_0
    invoke-interface {v4}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-lt v6, v5, :cond_1

    goto :goto_3

    :cond_1
    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/String;

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->getModuleRoot(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    move-result-object v8

    instance-of v9, v8, Lorg/eclipse/jdt/internal/core/ProjectEntry;

    if-eqz v9, :cond_2

    check-cast v8, Lorg/eclipse/jdt/internal/core/ProjectEntry;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/ProjectEntry;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    new-instance v9, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;

    const-string v10, "module"

    const-string v11, "true"

    invoke-direct {v9, v10, v11}, Lorg/eclipse/jdt/internal/core/ClasspathAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->NO_ACCESS_RULES:[Lorg/eclipse/jdt/core/IAccessRule;

    new-array v11, v0, [Lorg/eclipse/jdt/core/IClasspathAttribute;

    aput-object v9, v11, v1

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v7

    invoke-static {v8, v10, v1, v11, v7}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/2addr v6, v0

    goto :goto_0

    :catch_0
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IClasspathEntry;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Module path"

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    const-string v1, "org.eclipse.jdt.MODULE_PATH"

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
