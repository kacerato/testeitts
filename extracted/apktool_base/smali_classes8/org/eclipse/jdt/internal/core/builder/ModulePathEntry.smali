.class public Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;
    }
.end annotation


# instance fields
.field isAutomaticModule:Z

.field locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

.field module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field private path:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    .line 3
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    .line 5
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isAutomatic()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->isAutomaticModule:Z

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->initializeModule()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    .line 9
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->initModule(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    .line 10
    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    return-void
.end method

.method public static getAutomaticModule(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IContainer;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private initModule(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->isAutomaticModule:Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->getAutomaticModule(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->isAutomaticModule:Z

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    return-void
.end method

.method private initializeModule()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getClasspathLocations()[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    return-object v0
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_3

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->path:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isAutomaticModule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->isAutomaticModule:Z

    return v0
.end method
