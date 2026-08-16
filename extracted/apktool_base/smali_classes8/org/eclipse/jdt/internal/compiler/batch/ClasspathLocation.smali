.class public abstract Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field public static final BINARY:I = 0x2

.field public static final SOURCE:I = 0x1


# instance fields
.field public accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field public destinationPath:Ljava/lang/String;

.field protected isAutoModule:Z

.field module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field normalizedPath:[C

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->lambda$2(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method private addRequired(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->addRequired(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->lambda$0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->lambda$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$0(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$2(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public acceptModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isAutomatic()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isAutoModule:Z

    return-void
.end method

.method public allModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    return v1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getMode()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getMode()I

    move-result p1

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    const/16 v1, 0x2f

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p1

    return-object p1
.end method

.method public getDestinationPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
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

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/b;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getModuleNames(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->selectModules(Ljava/util/Set;Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->getMode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isAutomaticModule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isAutoModule:Z

    return v0
.end method

.method public isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-void
.end method

.method public selectModules(Ljava/util/Set;Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IModule;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/batch/c;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/batch/c;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/d;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/d;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->allModules(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->addRequired(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V

    goto :goto_1
.end method

.method public singletonModuleNameIf(Z)[[C
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1
.end method
