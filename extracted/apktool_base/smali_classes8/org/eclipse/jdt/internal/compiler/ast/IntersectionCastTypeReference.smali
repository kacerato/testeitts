.class public Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.source "SourceFile"


# instance fields
.field public typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v0

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLastToken()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeName()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    return-object v0
.end method

.method public getTypeReferences()[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move p1, v1

    :goto_1
    if-lt p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq p1, v2, :cond_2

    const-string v2, " & "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 19

    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v7, 0x0

    move v2, v7

    move v3, v2

    move v4, v3

    :goto_0
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    if-lt v2, v0, :cond_c

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    return-object v10

    :cond_0
    if-eq v4, v0, :cond_2

    if-ne v4, v5, :cond_1

    aget-object v0, v1, v7

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1
    new-array v0, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    aget-object v0, v1, v7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    sub-int/2addr v4, v5

    new-array v2, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v0

    move-object v13, v2

    goto :goto_1

    :cond_3
    move-object v13, v1

    move-object v12, v10

    :goto_1
    new-instance v14, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    array-length v15, v13

    move v5, v7

    :goto_2
    if-lt v5, v15, :cond_5

    iget-wide v0, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    return-object v10

    :cond_4
    iput-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_5
    aget-object v16, v13, v5

    if-nez v16, :cond_6

    move v7, v5

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    move-object/from16 v0, p1

    move-object v1, v12

    move-object/from16 v2, v16

    move-object v3, v14

    move-object v4, v11

    move v7, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_7
    move v7, v5

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-lt v5, v7, :cond_9

    goto :goto_4

    :cond_9
    aget-object v2, v13, v5

    if-nez v2, :cond_a

    move/from16 v17, v5

    goto :goto_5

    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v3, v14

    move-object v4, v11

    move/from16 v17, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_4
    add-int/lit8 v5, v7, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_b
    :goto_5
    add-int/lit8 v5, v17, 0x1

    goto :goto_3

    :cond_c
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v2

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v7, v10, v11, v12}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    if-eqz v13, :cond_e

    iget-wide v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v17, 0x80

    and-long v14, v14, v17

    cmp-long v8, v14, v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    if-nez v2, :cond_10

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->onlyReferenceTypesInIntersectionCast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_e
    :goto_6
    move v3, v5

    goto :goto_9

    :cond_f
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalArrayTypeInIntersectionCast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v7, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->boundMustBeAnInterface(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_6

    :cond_11
    const/4 v8, 0x0

    :goto_7
    if-lt v8, v4, :cond_12

    add-int/lit8 v5, v4, 0x1

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v13, v1, v4

    move v4, v5

    goto :goto_9

    :cond_12
    aget-object v9, v1, v8

    invoke-static {v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateBoundInIntersectionCast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    move v3, v5

    goto :goto_8

    :cond_13
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v13, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    invoke-static {v14, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_15

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v13, v1, v8

    goto :goto_9

    :cond_15
    invoke-virtual {v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-static {v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unexpected traversal request: IntersectionTypeReference in class scope"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
