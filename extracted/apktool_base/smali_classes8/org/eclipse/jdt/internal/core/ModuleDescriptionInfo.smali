.class public Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
.super Lorg/eclipse/jdt/internal/core/AnnotatableInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;,
        Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;,
        Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;
    }
.end annotation


# static fields
.field protected static final NO_EXPORTS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

.field protected static final NO_OPENS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

.field protected static final NO_PROVIDES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

.field protected static final NO_REQUIRES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

.field protected static final NO_USES:[[C


# instance fields
.field private categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected children:[Lorg/eclipse/jdt/core/IJavaElement;

.field exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

.field handle:Lorg/eclipse/jdt/core/IModuleDescription;

.field name:[C

.field opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

.field requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

.field services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

.field usedServices:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    sput-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_USES:[[C

    new-array v0, v2, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_REQUIRES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    new-array v0, v2, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_EXPORTS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    new-array v0, v2, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_PROVIDES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    new-array v0, v2, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_OPENS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public static createModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;
    .locals 8

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->name:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    array-length v5, v1

    add-int/2addr v5, v4

    new-array v4, v5, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getJavaBaseReference()Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    move-result-object v5

    aput-object v5, v4, v3

    move v4, v3

    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    add-int/lit8 v6, v4, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;-><init>()V

    aput-object v7, v5, v6

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    aget-object v5, v5, v6

    aget-object v7, v1, v4

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    invoke-static {v7, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    iput-object v7, v5, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->name:[C

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    aget-object v5, v5, v6

    aget-object v4, v1, v4

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    iput v4, v5, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->modifiers:I

    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_REQUIRES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    goto :goto_1

    :cond_2
    new-array v1, v4, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getJavaBaseReference()Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_1
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    array-length v4, v1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    move v4, v3

    :goto_3
    array-length v5, v1

    if-lt v4, v5, :cond_3

    goto :goto_4

    :cond_3
    aget-object v5, v1, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->createPackageExport(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_EXPORTS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    :goto_4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    array-length v4, v1

    new-array v4, v4, [[C

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    move v4, v3

    :goto_5
    array-length v5, v1

    if-lt v4, v5, :cond_5

    goto :goto_6

    :cond_5
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    aget-object v6, v1, v4

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v6

    invoke-static {v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    sget-object v1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_USES:[[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    :goto_6
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    move v2, v3

    :goto_7
    array-length v4, v1

    if-lt v2, v4, :cond_7

    goto :goto_8

    :cond_7
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    aget-object v5, v1, v2

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->createService(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    sget-object v1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_PROVIDES:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    :goto_8
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lez v1, :cond_a

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    array-length v1, p0

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    :goto_9
    array-length v1, p0

    if-lt v3, v1, :cond_9

    goto :goto_a

    :cond_9
    aget-object v1, p0, v3

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->createOpensInfo(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    sget-object p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->NO_OPENS:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    :goto_a
    return-object v0
.end method

.method private static createOpensInfo(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->pack:[C

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v1, v1, [[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    aget-object v3, p0, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static createPackageExport(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->pack:[C

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v1, v1, [[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->target:[[C

    aget-object v3, p0, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static createService(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;)Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->serviceName:[C

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, p0

    new-array v1, v1, [[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->implNames:[[C

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->implNames:[[C

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getJavaBaseReference()Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->name:[C

    return-object v0
.end method


# virtual methods
.method public addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->categories:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->categories:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->categories:Ljava/util/Map;

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    return-object v0
.end method

.method public getCategories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->categories:Ljava/util/Map;

    return-object v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->handle:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public getHandle()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->handle:Lorg/eclipse/jdt/core/IModuleDescription;

    return-object v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->name:[C

    return-object v0
.end method

.method public opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    return-object v0
.end method

.method public provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    return-object v0
.end method

.method public requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    return-object v0
.end method

.method public setHandle(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->handle:Lorg/eclipse/jdt/core/IModuleDescription;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "open "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "module "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->name:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "\trequires "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "transitive "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "static "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->requires:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ModuleReferenceInfo;->name:[C

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    array-length v3, v3

    if-lt v1, v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "\texports "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->exports:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    array-length v3, v3

    if-lt v1, v3, :cond_7

    goto :goto_5

    :cond_7
    const-string v3, "\tuses "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    array-length v3, v3

    if-lt v1, v3, :cond_9

    goto :goto_7

    :cond_9
    const-string v3, "\tprovides "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->services:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    array-length v1, v1

    if-lt v2, v1, :cond_b

    goto :goto_9

    :cond_b
    const-string v1, "\topens "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->opens:[Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo$PackageExportInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public uses()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->usedServices:[[C

    return-object v0
.end method
