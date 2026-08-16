.class public Lorg/eclipse/jdt/internal/core/ModuleUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private javaProoject:Lorg/eclipse/jdt/internal/core/JavaProject;

.field private moduleUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->moduleUpdates:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->javaProoject:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->lambda$1(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method private static containsNonModularDependency([Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static determineModulesOfProjectsWithNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            "[",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->containsNonModularDependency([Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_1

    return-object v0

    :cond_1
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/core/resources/IProject;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/core/resources/IProject;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->containsNonModularDependency([Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static synthetic lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->setMainClassName([C)V

    return-void
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ALL_UNNAMED:[C

    invoke-interface {p0, v0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->addReads([C)V

    return-void
.end method


# virtual methods
.method public addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->moduleUpdates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->moduleUpdates:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReadUnnamedForNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->determineModulesOfProjectsWithNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lorg/eclipse/jdt/internal/core/q;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/q;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_0
.end method

.method public applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->name()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->moduleUpdates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public computeModuleUpdates(Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "add-exports"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x3d

    const-string v8, ":"

    const/4 v9, -0x1

    if-eqz v5, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    move v3, v1

    :goto_1
    if-lt v3, v10, :cond_1

    goto/16 :goto_5

    :cond_1
    aget-object v4, v5, v3

    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v8, v9, :cond_2

    if-eq v11, v9, :cond_2

    invoke-virtual {v4, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v11, 0x2c

    invoke-static {v11, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;

    invoke-direct {v11, v8, v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;-><init>([C[[C)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p0, v12, v11, v4}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Invalid argument to add-exports: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "add-reads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v3, v1

    :goto_3
    if-lt v3, v8, :cond_4

    goto :goto_5

    :cond_4
    aget-object v4, v5, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v9, :cond_5

    invoke-virtual {v4, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;

    invoke-direct {v10, v4}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;-><init>([C)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p0, v11, v10, v4}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_4

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid argument to add-reads: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const-string v5, "module-main-class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->javaProoject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/core/r;

    invoke-direct {v5, v3}, Lorg/eclipse/jdt/internal/core/r;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p0, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_5

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c9

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public getUpdates(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->moduleUpdates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    return-object p1
.end method
