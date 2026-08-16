.class public Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;
.super Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multi"
.end annotation


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    return-void
.end method


# virtual methods
.method public addPatchLocation(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    return-void
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    invoke-interface {v3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v4

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v4, v1, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;

    invoke-interface {v4, p1}, Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;->getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
