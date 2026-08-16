.class Lorg/eclipse/jdt/internal/core/builder/ModuleEntryProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combinePatchIntoModuleEntry(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;->addPatchLocation(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    return-void

    :cond_0
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    filled-new-array {v1, p0}, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object p0

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;

    invoke-direct {v1, v3, p1, p0}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry$Multi;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;->locations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v2, v1

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    array-length v2, v1

    sub-int/2addr v2, v4

    aput-object p0, v1, v2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    const/4 v5, 0x0

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    aput-object v1, v2, v5

    aput-object p0, v2, v4

    move-object v1, v2

    :goto_0
    new-instance p0, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;

    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jdt/internal/core/builder/ModulePathEntry;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IModule;[Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)V

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot patch the module of classpath entry "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeLimitModules(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/ClasspathEntry;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "limit-modules"

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExtraAttribute(Lorg/eclipse/jdt/core/IClasspathEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static pushPatchToFront([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPatchedModules(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    if-lez v1, :cond_1

    aget-object p1, p0, v0

    aput-object v2, p0, v0

    aput-object p1, p0, v1

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
