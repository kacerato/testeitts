.class public Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;
.source "SourceFile"


# instance fields
.field private annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field dimensions:I

.field public extendedDimensions:I


# direct methods
.method public constructor <init>([[CI[J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    .line 2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public constructor <init>([[CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p3, :cond_0

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    return-void
.end method


# virtual methods
.method public dimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    return v0
.end method

.method public extraDimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->extendedDimensions:I

    return v0
.end method

.method public getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 4

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->extendedDimensions:I

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v1, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->extendedDimensions:I

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object p1
.end method

.method public getParameterizedTypeName()[[C
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v3, v0

    new-array v4, v3, [[C

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v0, v0, v3

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    aput-object v0, v4, v3

    return-object v4

    :cond_0
    mul-int/lit8 v4, v3, 0x2

    const/16 v5, 0x5b

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x5d

    aput-char v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyDimensions(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw p1
.end method

.method public internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x4000

    const-string v0, "[]"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x20

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_2

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-lt v1, p1, :cond_4

    :goto_2
    return-object p2

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_5

    aget-object p1, p1, v1

    if-eqz p1, :cond_5

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setAnnotationsOnDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 7

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_7

    .line 7
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_4

    goto :goto_7

    .line 8
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    move v4, v1

    goto :goto_5

    .line 9
    :cond_5
    array-length v4, v3

    :goto_5
    move v5, v1

    :goto_6
    if-lt v5, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 10
    :cond_6
    aget-object v6, v3, v5

    .line 11
    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 12
    :cond_7
    :goto_7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 7

    .line 13
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 15
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 16
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 18
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_7

    .line 19
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_4

    goto :goto_7

    .line 20
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    move v4, v1

    goto :goto_5

    .line 21
    :cond_5
    array-length v4, v3

    :goto_5
    move v5, v1

    :goto_6
    if-lt v5, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 22
    :cond_6
    aget-object v6, v3, v5

    .line 23
    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 24
    :cond_7
    :goto_7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
