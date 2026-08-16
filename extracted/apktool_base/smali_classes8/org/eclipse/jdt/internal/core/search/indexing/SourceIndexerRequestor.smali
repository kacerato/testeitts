.class public Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# instance fields
.field depth:I

.field enclosingTypeNames:[[C

.field indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

.field methodDepth:I

.field packageName:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    const/4 v0, 0x5

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    return-void
.end method

.method private addDefaultConstructorIfNecessary(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    if-nez v2, :cond_1

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :cond_1
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->extraFlags:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getMoreExtraFlags(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addDefaultConstructorDeclaration([C[CII)V

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enterAnnotationType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames()[[C

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    iget-boolean v6, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->secondary:Z

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeDeclaration(I[C[C[[CZ)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->addDefaultConstructorIfNecessary(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->pushTypeName([C)V

    return-void
.end method

.method private enterClass(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 11

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getSimpleName([C)[C

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorReference([CI)V

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    aget-object v4, v3, v2

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getSimpleName([C)[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    if-lez v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames()[[C

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v0, :cond_6

    array-length v0, v0

    new-array v2, v0, [[C

    :goto_4
    if-lt v1, v0, :cond_4

    move-object v9, v2

    goto :goto_5

    :cond_4
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->bounds:[[C

    if-nez v3, :cond_5

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :cond_5
    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature([C[[C)[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    move-object v9, v0

    :goto_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    iget-boolean v10, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->secondary:Z

    invoke-virtual/range {v2 .. v10}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addClassDeclaration(I[C[C[[C[C[[C[[CZ)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->addDefaultConstructorIfNecessary(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->pushTypeName([C)V

    return-void
.end method

.method private enterEnum(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getSimpleName([C)[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    if-lez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames()[[C

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superclass:[C

    if-nez v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ENUM:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    :cond_3
    move-object v6, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    iget-boolean v8, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->secondary:Z

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addEnumDeclaration(I[C[C[[C[C[[CZ)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->addDefaultConstructorIfNecessary(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->pushTypeName([C)V

    return-void
.end method

.method private enterInterface(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 10

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    aget-object v4, v3, v2

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getSimpleName([C)[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    if-lez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames()[[C

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v0, :cond_4

    array-length v0, v0

    new-array v2, v0, [[C

    :goto_4
    if-lt v1, v0, :cond_3

    move-object v8, v2

    goto :goto_5

    :cond_3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->bounds:[[C

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature([C[[C)[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    move-object v8, v0

    :goto_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->superinterfaces:[[C

    iget-boolean v9, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->secondary:Z

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addInterfaceDeclaration(I[C[C[[C[[C[[CZ)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->addDefaultConstructorIfNecessary(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->pushTypeName([C)V

    return-void
.end method

.method private enterPackageVisibilityInfo([Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->pkgName:[C

    if-eqz v4, :cond_6

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleExportedPackages([C)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;->targets:[[C

    if-eqz v3, :cond_6

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    array-length v4, v3

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_4

    goto :goto_2

    :cond_4
    aget-object v6, v3, v5

    if-eqz v6, :cond_5

    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleReference([C)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getDeclaringQualification(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[C
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x1

    if-eqz p0, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    array-length v6, v4

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_4

    return-object v4

    :cond_4
    new-array v1, v3, [C

    move v3, v2

    move v4, v3

    :goto_2
    add-int/lit8 v6, p0, -0x1

    if-lt v3, v6, :cond_5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    array-length v0, p0

    invoke-static {p0, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    array-length v7, v6

    invoke-static {v6, v2, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x2e

    aput-char v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_2
.end method

.method private getMoreExtraFlags(I)I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    if-lez v0, :cond_0

    or-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method private getSimpleName([C)[C
    .locals 7

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    aget-char v5, p1, v1

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_2

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_6

    move v4, v1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_6

    move v2, v1

    :goto_1
    if-gez v4, :cond_5

    if-gez v2, :cond_4

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptAnnotationTypeReference([CI)V
    .locals 0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    return-void
.end method

.method public acceptAnnotationTypeReference([[CII)V
    .locals 2

    .line 1
    array-length p2, p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-lt v0, v1, :cond_0

    .line 2
    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->acceptAnnotationTypeReference([CI)V

    return-void

    .line 3
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->acceptUnknownReference([CI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public acceptConstructorReference([CII)V
    .locals 2

    const/16 p3, 0x3c

    invoke-static {p3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorReference([CI)V

    const/16 p2, 0x2e

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    invoke-static {p1, v0, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-lt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    aget-object v1, p1, v0

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public acceptFieldReference([CI)V
    .locals 0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    return-void
.end method

.method public acceptImport(IIII[[CZI)V
    .locals 0

    return-void
.end method

.method public acceptLineSeparatorPositions([I)V
    .locals 0

    return-void
.end method

.method public acceptMethodReference([CII)V
    .locals 0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodReference([CI)V

    return-void
.end method

.method public acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->packageName:[C

    return-void
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    return-void
.end method

.method public acceptTypeReference([CI)V
    .locals 0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    return-void
.end method

.method public acceptTypeReference([[CII)V
    .locals 2

    .line 1
    array-length p2, p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-lt v0, v1, :cond_0

    .line 2
    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->acceptTypeReference([CI)V

    return-void

    .line 3
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->acceptUnknownReference([CI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public acceptUnknownReference([CI)V
    .locals 0

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    return-void
.end method

.method public acceptUnknownReference([[CII)V
    .locals 1

    const/4 p2, 0x0

    move p3, p2

    .line 1
    :goto_0
    array-length v0, p1

    if-lt p3, v0, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v0, p1, p3

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->acceptUnknownReference([CI)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public enclosingTypeNames()[[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v1, v0, [[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public enterCompilationUnit()V
    .locals 0

    return-void
.end method

.method public enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 11

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    array-length v0, v4

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringPackageName:[C

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringTypeModifiers:I

    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->extraFlags:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getMoreExtraFlags(I)I

    move-result v10

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorDeclaration([CI[C[[C[[CI[CI[[CI)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->type:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldDeclaration([C[C)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public enterInitializer(II)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->returnType:[C

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodDeclaration([C[[C[C[[C)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_0
    array-length v2, v2

    goto :goto_0

    :goto_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    :goto_2
    move-object v4, v3

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_3

    array-length v3, v4

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getDeclaringQualification(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[C

    move-result-object v5

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->returnType:[C

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->modifiers:I

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringPackageName:[C

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declaringTypeModifiers:I

    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->exceptionTypes:[[C

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->extraFlags:I

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->getMoreExtraFlags(I)I

    move-result v16

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v16}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodDeclaration([C[C[CI[C[[C[[C[CI[CI[[CI)V

    iget v1, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void

    :cond_3
    :goto_4
    iget v1, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public enterModule(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->moduleName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleDeclaration([C)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;->moduleName:[C

    if-eqz v3, :cond_2

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->indexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleReference([C)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterPackageVisibilityInfo([Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->opens:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterPackageVisibilityInfo([Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;)V

    return-void
.end method

.method public enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterAnnotationType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterEnum(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterInterface(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enterClass(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V

    :goto_0
    return-void
.end method

.method public exitCompilationUnit(I)V
    .locals 0

    return-void
.end method

.method public exitConstructor(I)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public exitField(III)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public exitInitializer(I)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->methodDepth:I

    return-void
.end method

.method public exitType(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->popTypeName()V

    return-void
.end method

.method public popTypeName()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    aput-object v1, v2, v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    const/4 v2, -0x1

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pushTypeName([C)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->enclosingTypeNames:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;->depth:I

    aput-object p1, v0, v1

    return-void
.end method
