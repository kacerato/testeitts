.class public Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;
    }
.end annotation


# instance fields
.field private unresolvedExports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field private unresolvedOpens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field private unresolvedProvides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

.field private unresolvedUses:[[C


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {p2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->cachePartsFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isAutomatic()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0
.end method

.method private resolvePackages()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedExports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedExports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v4, v3

    const/16 v5, 0x2e

    if-lt v1, v4, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedOpens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v1, v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v1, v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedOpens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v4, v3

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void

    :cond_2
    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v4

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v7, v2, 0x1

    aput-object v4, v6, v2

    instance-of v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v2, :cond_3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->recordOpensRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_4
    move v2, v7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v4

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->forcedGetExportedPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v2

    instance-of v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v2, :cond_7

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->recordExportRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_8
    move v2, v6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private resolveServices()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedProvides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedProvides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;->name()[C

    move-result-object v2

    const/16 v5, 0x2e

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    invoke-virtual {v4, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedProvides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;->with()[[C

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v4, v0

    :goto_1
    array-length v6, v2

    if-lt v4, v6, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v7, v2, v4

    invoke-static {v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private scanForNullDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullByDefaultAnnotationName()[[C

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    goto :goto_2

    :cond_1
    aget-object v4, p1, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v4

    aget-char v5, v4, v1

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_3

    aget-object v4, p1, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)I

    move-result v4

    or-int/2addr v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public cachePartsFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V
    .locals 8

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;->getTagBits()J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v1, v0

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v2, v0

    if-ge v3, v2, :cond_1

    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v2, v0

    if-ge v4, v2, :cond_2

    new-array v2, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedExports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedOpens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->uses()[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedUses:[[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedProvides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->scanForNullDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V

    :cond_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    const-wide v2, 0x400000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v6, v0, v2

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v3, v4

    move v4, v6

    :cond_7
    move v3, v7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public forcedGetExportedPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->forcedGetExportedPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, p1, v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v1

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object p1, p1, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedExports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->resolvePackages()V

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    return-object v0
.end method

.method public getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->resolveServices()V

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedOpens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->resolvePackages()V

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->resolveServices()V

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedUses:[[C

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->unresolvedUses:[[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/16 v4, 0x2e

    aget-object v1, v1, v0

    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    invoke-virtual {v3, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method
