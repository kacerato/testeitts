.class public Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;
    }
.end annotation


# instance fields
.field eofPosition:I

.field initialPosition:I

.field localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

.field nestedTypeIndex:I

.field nodesToCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;",
            "[[C>;"
        }
    .end annotation
.end field

.field reportReferenceInfo:Z

.field requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

.field sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field superTypeNames:[[C

.field typeNames:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    if-eqz p2, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    :cond_0
    const/4 p1, 0x4

    new-array p2, p1, [[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    new-array p1, p1, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    return-void
.end method

.method private fillModuleInfo(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V
    .locals 9

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-lez v0, :cond_1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;

    move v3, v2

    :goto_0
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    if-lt v3, v4, :cond_0

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;-><init>()V

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;->moduleName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v5, v5, v3

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    iput v5, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;->modifiers:I

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lez v0, :cond_5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    move v3, v2

    :goto_2
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lt v3, v4, :cond_2

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    goto :goto_5

    :cond_2
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;-><init>()V

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aget-object v5, v5, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->pkgName:[C

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-nez v6, :cond_3

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    goto :goto_4

    :cond_3
    array-length v6, v6

    new-array v6, v6, [[C

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    move v6, v2

    :goto_3
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    array-length v8, v7

    if-lt v6, v8, :cond_4

    :goto_4
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    invoke-static {v8, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lez v0, :cond_8

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;

    move v4, v2

    :goto_6
    if-lt v4, v0, :cond_6

    iput-object v3, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->services:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;

    goto :goto_8

    :cond_6
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;-><init>()V

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v6, v6, v4

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v6

    invoke-static {v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;->serviceName:[C

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v6, v6, v4

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v6, v6

    new-array v6, v6, [[C

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;->implNames:[[C

    move v6, v2

    :goto_7
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;->implNames:[[C

    array-length v8, v7

    if-lt v6, v8, :cond_7

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v8, v8, v4

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v8

    invoke-static {v8, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lez v0, :cond_a

    new-array v3, v0, [[C

    move v4, v2

    :goto_9
    if-lt v4, v0, :cond_9

    iput-object v3, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->usedServices:[[C

    goto :goto_a

    :cond_9
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v5

    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lez v0, :cond_e

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    move v3, v2

    :goto_b
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lt v3, v4, :cond_b

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->opens:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    goto :goto_e

    :cond_b
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;-><init>()V

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aget-object v5, v5, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->pkgName:[C

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-nez v6, :cond_c

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    goto :goto_d

    :cond_c
    array-length v6, v6

    new-array v6, v6, [[C

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    move v6, v2

    :goto_c
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    array-length v8, v7

    if-lt v6, v8, :cond_d

    :goto_d
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    invoke-static {v8, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_e
    :goto_e
    return-void
.end method

.method private getTypeParameterInfos([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    return-object v1

    :cond_1
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getTypeParameterBounds(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[[C

    move-result-object v5

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;-><init>()V

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    iput-boolean v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->typeAnnotated:Z

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationStart:I

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationEnd:I

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceStart:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceEnd:I

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->bounds:[[C

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getLastToken()[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static quickSort([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;II)V
    .locals 6

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    :cond_0
    :goto_0
    aget-object v3, p0, v1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v3, v4, :cond_5

    :goto_1
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aget-object v4, p0, v2

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v3, v5, :cond_4

    if-gt v1, v2, :cond_1

    aget-object v3, p0, v1

    aput-object v4, p0, v1

    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->quickSort([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;II)V

    :cond_2
    if-ge v1, p2, :cond_3

    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->quickSort([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;II)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    return-void
.end method

.method private sourceEnd(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I
    .locals 1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_0

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return p1

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return p1

    :cond_1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return p1
.end method

.method private visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    if-eqz v0, :cond_2

    .line 2
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    .line 5
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_2

    .line 8
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    if-eqz v0, :cond_0

    .line 11
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->pushDeclaringType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 14
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->popDeclaringType()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->popDeclaringType()V

    .line 16
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    if-eqz v0, :cond_0

    .line 18
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 19
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getArgumentInfos([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)[[Ljava/lang/Object;
    .locals 10

    array-length v0, p1

    new-array v1, v0, [[C

    new-array v2, v0, [[C

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [[Ljava/lang/Object;

    aput-object v3, p1, v4

    filled-new-array {v1, v2}, [[[C

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    return-object p1

    :cond_0
    aget-object v6, p1, v5

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v7

    const/16 v8, 0x2e

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    aput-object v7, v1, v5

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v7, v2, v5

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    invoke-direct {v8}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;-><init>()V

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->declarationStart:I

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->declarationEnd:I

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->nameSourceStart:I

    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->nameSourceEnd:I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iput v6, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->modifiers:I

    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->name:[C

    aput-object v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getInterfaceNames(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[[C
    .locals 6

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length p1, v0

    new-array v2, p1, [[C

    goto :goto_0

    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object p1, v2, v1

    new-array p1, v0, [[C

    move-object v5, v2

    move-object v2, p1

    move p1, v0

    move-object v0, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move p1, v1

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    if-lt v1, p1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getSuperclassName(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[C
    .locals 1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getThrownExceptions(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)[[C
    .locals 5

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getTypeParameterBounds(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[[C
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    aput-object v0, v4, v2

    :goto_0
    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v2

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    aput-object v2, v4, v0

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array v4, p1, [[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object p1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    aput-object p1, v4, v2

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :goto_1
    return-object v4
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->initialPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v4, v5, :cond_0

    .line 2
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->eofPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-lt v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v5

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v5, :cond_7

    .line 6
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reportReferenceInfo:Z

    if-eqz v2, :cond_6

    .line 7
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    .line 8
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v1, :cond_6

    .line 9
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v2, v7, :cond_4

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 11
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    sub-int/2addr v4, v7

    aget-object v3, v3, v4

    .line 12
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    array-length v6, v4

    .line 13
    :goto_1
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 14
    invoke-interface {v2, v3, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    goto :goto_3

    .line 15
    :cond_4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 16
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    sub-int/2addr v4, v7

    aget-object v3, v3, v4

    .line 17
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    array-length v6, v4

    .line 18
    :goto_2
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 19
    invoke-interface {v2, v3, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    :cond_6
    :goto_3
    return-void

    .line 20
    :cond_7
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 21
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;

    invoke-direct {v10}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;-><init>()V

    .line 22
    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v12, 0x100000

    and-int/2addr v11, v12

    if-eqz v11, :cond_8

    move v11, v7

    goto :goto_4

    :cond_8
    move v11, v6

    :goto_4
    iput-boolean v11, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeAnnotated:Z

    if-eqz v5, :cond_9

    .line 23
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getArgumentInfos([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)[[Ljava/lang/Object;

    move-result-object v13

    .line 24
    aget-object v14, v13, v6

    check-cast v14, [Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    .line 25
    aget-object v13, v13, v7

    aget-object v15, v13, v6

    check-cast v15, [[C

    .line 26
    aget-object v13, v13, v7

    check-cast v13, [[C

    .line 27
    array-length v6, v5

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v5

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 28
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getThrownExceptions(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)[[C

    move-result-object v6

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v16

    const/16 v11, 0x2e

    if-eqz v16, :cond_14

    .line 30
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v8

    if-eqz v4, :cond_d

    .line 31
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const v17, 0x10ffff

    and-int v9, v9, v17

    if-eqz v5, :cond_a

    or-int/lit16 v9, v9, 0x80

    .line 32
    :cond_a
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_b

    or-int/2addr v9, v12

    .line 33
    :cond_b
    iput-boolean v7, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isConstructor:Z

    .line 34
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iput v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declarationStart:I

    .line 35
    iput v9, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    .line 36
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    .line 37
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    .line 38
    iput v8, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    .line 39
    iput-object v15, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    .line 40
    iput-object v13, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    .line 41
    iput-object v6, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getTypeParameterInfos([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    move-result-object v5

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    .line 43
    iput-object v14, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterInfos:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    .line 44
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[C

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->categories:[[C

    .line 45
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v3, :cond_c

    .line 46
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_6

    :cond_c
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    :goto_6
    iput-object v3, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringPackageName:[C

    .line 47
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iput v3, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringTypeModifiers:I

    .line 48
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result v2

    iput v2, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->extraFlags:I

    .line 49
    iput-object v1, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 50
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v2, v10}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    .line 51
    :cond_d
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reportReferenceInfo:Z

    if-eqz v2, :cond_12

    .line 52
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    .line 53
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v2, :cond_12

    .line 54
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v3, v7, :cond_10

    const/4 v5, 0x2

    if-eq v3, v5, :cond_10

    const/4 v5, 0x3

    if-eq v3, v5, :cond_e

    goto :goto_9

    .line 55
    :cond_e
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 56
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    .line 57
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_7

    :cond_f
    array-length v6, v6

    .line 58
    :goto_7
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 59
    invoke-interface {v3, v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    goto :goto_9

    .line 60
    :cond_10
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 61
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    .line 62
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v6, :cond_11

    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    array-length v6, v6

    .line 63
    :goto_8
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 64
    invoke-interface {v3, v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    .line 65
    :cond_12
    :goto_9
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    if-eqz v4, :cond_13

    .line 66
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitConstructor(I)V

    :cond_13
    return-void

    .line 67
    :cond_14
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v7

    if-eqz v4, :cond_1a

    .line 68
    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const v9, 0x13ffff

    and-int/2addr v8, v9

    if-eqz v5, :cond_15

    or-int/lit16 v8, v8, 0x80

    .line 69
    :cond_15
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/2addr v8, v12

    .line 70
    :cond_16
    instance-of v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v5, :cond_17

    .line 71
    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    .line 72
    :goto_a
    instance-of v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    iput-boolean v9, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isAnnotation:Z

    .line 73
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iput v9, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declarationStart:I

    .line 74
    iput v8, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    if-nez v5, :cond_18

    const/4 v5, 0x0

    goto :goto_b

    .line 75
    :cond_18
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v5

    invoke-static {v5, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    :goto_b
    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->returnType:[C

    .line 76
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    .line 77
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    .line 78
    iput v7, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    .line 79
    iput-object v15, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    .line 80
    iput-object v13, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    .line 81
    iput-object v6, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    .line 82
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getTypeParameterInfos([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    move-result-object v5

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    .line 83
    iput-object v14, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterInfos:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    .line 84
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[C

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->categories:[[C

    .line 85
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v5, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 86
    iput-object v1, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 87
    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v3, :cond_19

    .line 88
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_c

    :cond_19
    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v2, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    :goto_c
    iput-object v2, v10, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringPackageName:[C

    .line 89
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v2, v10}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    .line 90
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    if-eqz v4, :cond_1c

    .line 91
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    if-eqz v2, :cond_1b

    .line 92
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    .line 93
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_1b

    .line 94
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-interface {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void

    .line 95
    :cond_1b
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_1c
    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;IIZLorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;Ljava/util/Map;)V
    .locals 8

    .line 96
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->initialPosition:I

    .line 97
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->eofPosition:I

    .line 98
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reportReferenceInfo:Z

    .line 99
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    .line 100
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    .line 101
    :try_start_0
    iget p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-gt p2, p4, :cond_0

    .line 102
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lt p3, p2, :cond_0

    move p2, p6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    move p2, p5

    :goto_0
    if-eqz p2, :cond_1

    .line 103
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterCompilationUnit()V

    .line 104
    :cond_1
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 105
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->localDeclarationVisitor:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;

    if-eqz p4, :cond_2

    .line 106
    iput-object p3, p4, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 107
    :cond_2
    iget-object p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 108
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez p3, :cond_3

    move v1, p5

    goto :goto_1

    :cond_3
    move v1, p6

    :goto_1
    if-nez p4, :cond_4

    move v2, p5

    goto :goto_2

    .line 109
    :cond_4
    array-length v2, p4

    :goto_2
    add-int/2addr v1, v2

    if-nez v0, :cond_5

    move v2, p5

    goto :goto_3

    .line 110
    :cond_5
    array-length v2, v0

    :goto_3
    add-int/2addr v1, v2

    .line 111
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-nez v2, :cond_6

    move v2, p5

    goto :goto_4

    :cond_6
    move v2, p6

    :goto_4
    add-int/2addr v1, v2

    .line 112
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz p3, :cond_7

    .line 113
    aput-object p3, v2, p5

    move v3, p6

    goto :goto_5

    :cond_7
    move v3, p5

    :goto_5
    if-eqz p4, :cond_9

    .line 114
    array-length v4, p4

    move v5, p5

    :goto_6
    if-lt v5, v4, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v6, v3, 0x1

    .line 115
    aget-object v7, p4, v5

    aput-object v7, v2, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v0, :cond_b

    .line 116
    array-length p4, v0

    move v4, p5

    :goto_8
    if-lt v4, p4, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 v5, v3, 0x1

    .line 117
    aget-object v6, v0, v4

    aput-object v6, v2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_8

    .line 118
    :cond_b
    :goto_9
    iget-object p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz p4, :cond_c

    .line 119
    aput-object p4, v2, v3

    :cond_c
    if-lez v1, :cond_12

    add-int/lit8 p4, v1, -0x1

    .line 120
    invoke-static {v2, p5, p4}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->quickSort([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;II)V

    move p4, p5

    :goto_a
    if-lt p4, v1, :cond_d

    goto :goto_c

    .line 121
    :cond_d
    aget-object v0, v2, p4

    .line 122
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v3, :cond_f

    .line 123
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 124
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-ne v0, v4, :cond_e

    .line 125
    invoke-virtual {p0, v3, p6}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Z)V

    goto :goto_b

    .line 126
    :cond_e
    invoke-virtual {p0, v3, p5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Z)V

    goto :goto_b

    .line 127
    :cond_f
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_10

    .line 128
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p6, v3, p3}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_b

    .line 129
    :cond_10
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_11

    .line 130
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    :cond_11
    :goto_b
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_12
    :goto_c
    if-eqz p2, :cond_13

    .line 131
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitCompilationUnit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_13
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reset()V

    return-void

    :goto_d
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reset()V

    .line 133
    throw p1
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 11

    .line 134
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->initialPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    .line 135
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->eofPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 136
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto/16 :goto_6

    .line 137
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->reportReferenceInfo:Z

    if-eqz v1, :cond_5

    .line 138
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v4, :cond_5

    .line 139
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    .line 140
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 141
    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 142
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    array-length v6, v6

    .line 143
    :goto_1
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 144
    invoke-interface {v4, v5, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptConstructorReference([CII)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 145
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 146
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 147
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 148
    invoke-interface {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterInitializer(II)V

    .line 149
    :cond_4
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;)V

    if-eqz v0, :cond_e

    .line 150
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitInitializer(I)V

    goto/16 :goto_6

    .line 151
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    .line 152
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    :cond_6
    if-eqz v0, :cond_b

    .line 153
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const/high16 v6, 0x100000

    and-int v7, v5, v6

    if-nez v7, :cond_7

    .line 154
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    move v7, v3

    .line 155
    :goto_3
    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v8, :cond_8

    .line 156
    iget-object v8, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    or-int/lit16 v5, v5, 0x4000

    goto :goto_4

    .line 157
    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    .line 158
    :goto_4
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;

    invoke-direct {v9}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;-><init>()V

    .line 159
    iget v10, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v10, v6

    if-eqz v10, :cond_9

    move v2, v3

    :cond_9
    iput-boolean v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->typeAnnotated:Z

    .line 160
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->declarationStart:I

    .line 161
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iput-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    const v2, 0xffff

    and-int/2addr v2, v5

    if-eqz v7, :cond_a

    or-int/2addr v2, v6

    .line 162
    :cond_a
    iput v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->modifiers:I

    .line 163
    iput-object v8, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->type:[C

    .line 164
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceStart:I

    .line 165
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceEnd:I

    .line 166
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[C

    iput-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->categories:[[C

    .line 167
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v2, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 168
    iput-object p1, v9, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 169
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v2, v9}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V

    .line 170
    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->visitIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    if-eqz v0, :cond_e

    .line 171
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 172
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_d

    .line 173
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-nez v2, :cond_d

    .line 174
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v2, :cond_d

    .line 175
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    if-nez v2, :cond_d

    .line 176
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-nez v2, :cond_d

    .line 177
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-nez v2, :cond_d

    .line 178
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-nez v2, :cond_d

    .line 179
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayReference;

    if-nez v2, :cond_d

    .line 180
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    if-eqz v2, :cond_c

    goto :goto_5

    .line 181
    :cond_c
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 182
    :cond_d
    :goto_5
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 183
    invoke-interface {p2, v4, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitField(III)V

    :cond_e
    :goto_6
    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Z)V
    .locals 8

    if-eqz p2, :cond_0

    .line 184
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_4

    .line 185
    :cond_0
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x20000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 186
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    .line 187
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    .line 188
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    .line 189
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-eqz v6, :cond_2

    .line 190
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    :goto_2
    move v4, p2

    goto :goto_3

    :cond_2
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_2

    .line 191
    :goto_3
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    .line 192
    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    .line 193
    invoke-interface/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->acceptImport(IIII[[CZI)V

    :goto_4
    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V
    .locals 6

    .line 194
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->initialPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    .line 195
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->eofPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceEnd:I

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 196
    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;-><init>()V

    if-eqz v0, :cond_3

    .line 197
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    const/high16 v4, 0x100000

    and-int v5, v0, v4

    if-nez v5, :cond_1

    .line 198
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 199
    :goto_1
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->declarationStart:I

    const v3, 0xffff

    and-int/2addr v0, v3

    if-eqz v2, :cond_2

    or-int/2addr v0, v4

    .line 200
    :cond_2
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->modifiers:I

    .line 201
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->name:[C

    .line 202
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceStart:I

    .line 203
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceEnd:I

    .line 204
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->moduleName:[C

    .line 205
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 206
    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    .line 207
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->categories:[[C

    .line 208
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->fillModuleInfo(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V

    .line 209
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterModule(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V

    .line 210
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceEnd:I

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitModule(I)V

    :cond_3
    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 211
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 212
    :cond_0
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->initialPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-gt v3, v4, :cond_1

    .line 213
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->eofPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 214
    :goto_0
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 215
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 216
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v4, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .line 217
    :cond_2
    array-length v9, v4

    :goto_1
    if-nez v7, :cond_3

    const/4 v10, 0x0

    goto :goto_2

    .line 218
    :cond_3
    array-length v10, v7

    :goto_2
    if-nez v8, :cond_4

    const/4 v11, 0x0

    goto :goto_3

    .line 219
    :cond_4
    array-length v11, v8

    :goto_3
    if-eqz p2, :cond_14

    .line 220
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getInterfaceNames(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[[C

    move-result-object v13

    .line 221
    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v14

    .line 222
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CharArray_JAVA_LANG_OBJECT:[C

    .line 223
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;-><init>()V

    .line 224
    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v16, 0x100000

    and-int v12, v12, v16

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeAnnotated:Z

    if-eqz v3, :cond_12

    .line 225
    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int v17, v12, v16

    if-nez v17, :cond_6

    .line 226
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->hasDeprecatedAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v18, v15

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v18, v15

    const/4 v5, 0x1

    .line 227
    :goto_5
    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v15, :cond_7

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_8

    or-int/lit16 v12, v12, 0x4000

    move/from16 v19, v12

    move-object/from16 v12, p3

    .line 228
    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    move-object v2, v12

    move/from16 v12, v19

    :goto_7
    move-object/from16 v19, v8

    goto :goto_8

    .line 229
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getSuperclassName(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[C

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_7

    .line 230
    :goto_8
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-nez v8, :cond_9

    move-object/from16 v20, v7

    .line 231
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    goto :goto_9

    :cond_9
    move-object/from16 v20, v7

    if-eqz v15, :cond_a

    .line 232
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    goto :goto_9

    .line 233
    :cond_a
    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    :goto_9
    const v7, 0xffff

    if-eqz v5, :cond_b

    and-int v5, v12, v7

    or-int v5, v5, v16

    goto :goto_a

    :cond_b
    and-int v5, v12, v7

    .line 234
    :goto_a
    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    .line 235
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    if-eqz v15, :cond_c

    .line 236
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    goto :goto_b

    :cond_c
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_b
    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceStart:I

    .line 237
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->sourceEnd(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result v5

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceEnd:I

    .line 238
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    .line 239
    iput-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    .line 240
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->getTypeParameterInfos([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    move-result-object v5

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    .line 241
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nodesToCategories:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[C

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->categories:[[C

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->isSecondary()Z

    move-result v5

    iput-boolean v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->secondary:Z

    .line 243
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_c

    :cond_d
    const/4 v5, 0x0

    :goto_c
    iput-boolean v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->anonymousMember:Z

    .line 244
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 245
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result v5

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->extraFlags:I

    .line 246
    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 247
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-interface {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    const/4 v5, 0x1

    if-eq v14, v5, :cond_11

    const/4 v5, 0x2

    if-eq v14, v5, :cond_10

    const/4 v2, 0x3

    if-eq v14, v2, :cond_f

    const/4 v2, 0x4

    if-eq v14, v2, :cond_e

    goto :goto_d

    .line 248
    :cond_e
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CharArray_JAVA_LANG_ANNOTATION_ANNOTATION:[C

    goto :goto_e

    .line 249
    :cond_f
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CharArray_JAVA_LANG_ENUM:[C

    goto :goto_e

    :cond_10
    :goto_d
    move-object/from16 v15, v18

    goto :goto_e

    :cond_11
    if-eqz v2, :cond_10

    move-object v15, v2

    goto :goto_e

    :cond_12
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v15

    goto :goto_d

    .line 250
    :goto_e
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    array-length v6, v5

    if-ne v2, v6, :cond_13

    mul-int/lit8 v6, v2, 0x2

    .line 251
    new-array v6, v6, [[C

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [[C

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    invoke-static {v2, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_13
    const/4 v7, 0x0

    .line 253
    :goto_f
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->typeNames:[[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    aput-object v6, v2, v5

    .line 254
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->superTypeNames:[[C

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    aput-object v15, v2, v5

    goto :goto_10

    :cond_14
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    const/4 v7, 0x0

    :goto_10
    move v2, v7

    move v5, v2

    move v6, v5

    :goto_11
    if-lt v2, v9, :cond_17

    if-lt v5, v11, :cond_17

    if-lt v6, v10, :cond_17

    if-eqz p2, :cond_16

    if-eqz v3, :cond_15

    .line 255
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;->exitType(I)V

    .line 256
    :cond_15
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->nestedTypeIndex:I

    :cond_16
    return-void

    :cond_17
    const v12, 0x7fffffff

    const/4 v13, -0x1

    if-ge v2, v9, :cond_18

    .line 257
    aget-object v14, v4, v2

    .line 258
    iget v15, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge v15, v12, :cond_19

    move v13, v7

    move v12, v15

    goto :goto_12

    :cond_18
    const/4 v14, 0x0

    :cond_19
    :goto_12
    if-ge v6, v10, :cond_1a

    .line 259
    aget-object v15, v20, v6

    .line 260
    iget v7, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v7, v12, :cond_1b

    move v12, v7

    const/4 v13, 0x1

    goto :goto_13

    :cond_1a
    const/4 v15, 0x0

    :cond_1b
    :goto_13
    if-ge v5, v11, :cond_1c

    .line 261
    aget-object v7, v19, v5

    .line 262
    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v8, v12, :cond_1d

    const/4 v13, 0x2

    goto :goto_14

    :cond_1c
    const/4 v7, 0x0

    :cond_1d
    :goto_14
    if-eqz v13, :cond_20

    const/4 v8, 0x1

    if-eq v13, v8, :cond_1f

    const/4 v12, 0x2

    if-eq v13, v12, :cond_1e

    :goto_15
    const/4 v7, 0x0

    goto :goto_11

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, p4

    const/4 v14, 0x0

    .line 263
    invoke-virtual {v0, v7, v8, v14, v13}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_15

    :cond_1f
    move-object/from16 v13, p4

    const/4 v12, 0x2

    add-int/lit8 v6, v6, 0x1

    .line 264
    invoke-virtual {v0, v15, v1, v13}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_15

    :cond_20
    move-object/from16 v13, p4

    const/4 v8, 0x1

    const/4 v12, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 265
    invoke-virtual {v0, v14, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_15
.end method
