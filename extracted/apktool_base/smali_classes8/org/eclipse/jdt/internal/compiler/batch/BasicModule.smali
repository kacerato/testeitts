.class public Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;
    }
.end annotation


# instance fields
.field private compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field isAutomodule:Z

.field private isOpen:Z

.field name:[C

.field opens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

.field provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

.field requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

.field uses:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->isOpen:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->name:[C

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    const/16 v1, 0x2e

    if-lez v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    array-length v2, v0

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move v2, p2

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;-><init>()V

    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->name:[C

    aget-object v4, v0, v2

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;->modifiers:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/env/ModuleReferenceImpl;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    :goto_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lez v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    array-length v2, v0

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move v2, p2

    :goto_2
    array-length v3, v0

    if-lt v2, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->createPackageExport([Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    :goto_3
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lez v0, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    array-length v2, v0

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->uses:[[C

    move v2, p2

    :goto_4
    array-length v3, v0

    if-lt v2, v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->uses:[[C

    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v4

    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lez v0, :cond_7

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    move v0, p2

    :goto_6
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lt v0, v2, :cond_6

    goto :goto_7

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    aget-object v3, v1, v0

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v4, v3}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->createService(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lez v0, :cond_9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    array-length v1, v0

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->opens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move v1, p2

    :goto_8
    array-length v2, v0

    if-lt v1, v2, :cond_8

    goto :goto_9

    :cond_8
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->createPackageOpen(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;)Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->opens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->opens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    :goto_9
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->isAutomodule:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->isOpen()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->isOpen:Z

    return-void
.end method

.method private static createPackageExport([Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;
    .locals 2

    aget-object p0, p0, p1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->pack:[C

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz p0, :cond_1

    array-length v0, p0

    new-array v0, v0, [[C

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p0, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private static createPackageOpen(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;)Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->pack:[C

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v1, v1, [[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static createService(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p0

    const/16 v1, 0x2e

    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;->provides:[C

    array-length p0, p1

    new-array p0, p0, [[C

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;->with:[[C

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    if-lt p0, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;->with:[[C

    aget-object v3, p1, p0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    aput-object v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->name:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->name:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAutomatic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->isAutomodule:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->isOpen:Z

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->name:[C

    return-object v0
.end method

.method public opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->opens:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    return-object v0
.end method

.method public provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    return-object v0
.end method

.method public requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 7

    const-string v0, "\nmodule "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->name:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "\trequires "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " public "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->requires:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "\texports "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->exports:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->uses:[[C

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->uses:[[C

    array-length v4, v1

    move v5, v3

    :goto_4
    if-lt v5, v4, :cond_5

    goto :goto_5

    :cond_5
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->provides:[Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;

    array-length v2, v1

    :goto_6
    if-lt v3, v2, :cond_7

    goto :goto_7

    :cond_7
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule$Service;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public uses()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;->uses:[[C

    return-object v0
.end method
