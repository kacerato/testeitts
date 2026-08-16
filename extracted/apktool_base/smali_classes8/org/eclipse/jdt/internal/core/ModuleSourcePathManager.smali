.class public Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager$IPrefixMatcherCharArray;
    }
.end annotation


# instance fields
.field private knownModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a([C[C)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->lambda$1([C[C)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->lambda$0(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private getModuleRoot0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    return-object p1
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/ProjectEntry;->representsProject(Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$1([C[C)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addEntry(Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->getModuleRoot0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/ProjectEntry;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/core/ProjectEntry;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 3

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->getModuleRoot0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getModules()[Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object p1, p1, v2

    :try_start_2
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getModuleRoot(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->getModuleRoot0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    return-object p1
.end method

.method public removeEntry(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/m;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/m;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->knownModules:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/core/n;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/n;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/o;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/o;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/eclipse/jdt/internal/core/p;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/p;-><init>()V

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_3

    return-void

    :cond_3
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-interface {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager$IPrefixMatcherCharArray;->matches([C[C)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3, v2}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
