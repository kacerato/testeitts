.class public Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# instance fields
.field public declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public genericTypeSignature:[C

.field inRecursiveFunction:Z

.field inRecursiveProjectionFunction:Z

.field public rank:I

.field public superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 4

    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    .line 22
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    .line 23
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 24
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    .line 25
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 26
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 27
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    .line 28
    array-length v2, v1

    if-lez v2, :cond_0

    .line 29
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature:[C

    .line 32
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 33
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 34
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, -0x800001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 5
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 6
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    const p1, 0x40000001    # 2.0000002f

    .line 7
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 8
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v0, 0x20000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 9
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/high16 p1, 0x8000000

    .line 10
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    .line 11
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    .line 14
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const p1, 0x40000001    # 2.0000002f

    .line 16
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 17
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 18
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/high16 p1, 0x8000000

    .line 19
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    return-void
.end method

.method private findBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object p1

    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p2, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object p1, p2, v0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasRelevantTypeUseNullAnnotations()Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x180000000000000L

    and-long/2addr v1, v3

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v5

    not-long v3, v3

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected declaring element:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v9, v0, :cond_2a

    invoke-static {v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v13, 0x1

    if-eqz v8, :cond_1

    move v14, v13

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_2
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_3
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v11, :cond_4

    iget v0, v11, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    :cond_4
    move v15, v13

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-ne v0, v1, :cond_1b

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v1, :cond_19

    if-eq v1, v13, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v13, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v15, :cond_8

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->containsNullTypeAnnotation([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v7, v8, v1, v10, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    if-ne v1, v2, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v7, v0, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_9
    return-object v1

    :cond_a
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v16

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v17

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v14, :cond_b

    invoke-static {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_b
    move-object v3, v0

    if-nez v16, :cond_10

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v13, :cond_10

    if-eqz v17, :cond_c

    invoke-virtual {v5, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_c
    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_d
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_e
    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->denotesRelevantSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->denotesRelevantSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_f
    filled-new-array {v3, v5}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_10
    if-eqz v15, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object v12, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v6

    goto :goto_2

    :cond_11
    move-object v12, v5

    :goto_2
    if-nez v17, :cond_12

    move-object v5, v12

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v13, 0x0

    :cond_12
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-lt v4, v5, :cond_13

    if-eqz v6, :cond_1a

    return-object v6

    :cond_13
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v14, :cond_14

    aget-object v0, v0, v4

    invoke-static {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_14
    aget-object v0, v0, v4

    goto :goto_4

    :goto_5
    if-nez v16, :cond_17

    if-eqz v17, :cond_15

    invoke-virtual {v12, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_15
    invoke-virtual {v12, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_16
    if-eqz v13, :cond_17

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_17
    if-eqz v15, :cond_18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v18, v4

    move-object/from16 v4, p1

    move/from16 v19, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v6

    goto :goto_6

    :cond_18
    move/from16 v18, v4

    move/from16 v19, v5

    :goto_6
    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    goto :goto_3

    :cond_19
    if-eqz v15, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_1b
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v1, v13, :cond_1f

    if-eqz v14, :cond_1c

    invoke-static {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_1c
    move-object v3, v0

    invoke-static {v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v9, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_1d
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoundParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v12, v13

    goto :goto_8

    :cond_1e
    const/4 v12, 0x0

    :goto_8
    if-eqz v15, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v6

    goto :goto_9

    :cond_1f
    const/4 v12, 0x0

    :cond_20
    :goto_9
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v0

    move v0, v12

    const/4 v12, 0x0

    :goto_a
    if-lt v12, v5, :cond_25

    if-eqz v15, :cond_22

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    if-eq v6, v1, :cond_22

    iget-wide v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    const-wide/16 v12, 0x0

    cmp-long v8, v2, v12

    if-eqz v8, :cond_22

    iget-wide v12, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v12

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    if-eqz v11, :cond_21

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v7, v9, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_21
    move-object v6, v1

    :cond_22
    if-eqz v0, :cond_23

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    goto :goto_b

    :cond_23
    if-eqz v6, :cond_24

    goto :goto_b

    :cond_24
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    :goto_b
    return-object v6

    :cond_25
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v14, :cond_26

    aget-object v1, v1, v12

    invoke-static {v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_c
    move-object v3, v1

    goto :goto_d

    :cond_26
    aget-object v1, v1, v12

    goto :goto_c

    :goto_d
    invoke-static {v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v9, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0

    :cond_27
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoundParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_28

    move/from16 v16, v13

    goto :goto_e

    :cond_28
    move/from16 v16, v0

    :goto_e
    if-eqz v15, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move/from16 v17, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v6

    goto :goto_f

    :cond_29
    move/from16 v17, v5

    :goto_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move/from16 v5, v17

    goto :goto_a

    :cond_2a
    :goto_10
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object v0
.end method

.method private nullBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 7

    const/4 v5, 0x0

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object p1

    :cond_1
    return-object p6
.end method

.method private nullMismatchOnBound(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;JJLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->findBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    invoke-virtual {p3, p1, p5, p6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsOnBounds(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    iget-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide p5, -0x180000000000001L

    and-long/2addr p3, p5

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-object p2

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public acceptsNonNullDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v2

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v2, v0, v1

    return-object v0

    :cond_2
    :goto_0
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public annotatedDebugName()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " extends "

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_2

    goto :goto_2

    :cond_2
    if-gtz v3, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, " & "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    goto :goto_4

    :goto_3
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw v0

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    if-le v1, v2, :cond_2

    aget-object v0, v0, v2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    :cond_2
    return-void
.end method

.method public boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->internalBoundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    if-ne v0, v1, :cond_0

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->betterOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public boundsCount()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canBeInstantiated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    return-object p1
.end method

.method public collectInferenceVariables(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_3

    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-void

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_2

    const/16 p1, 0x204

    if-eq v0, p1, :cond_1

    const p1, 0x10004

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne p2, v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    move-object p2, p1

    :goto_0
    if-eqz p4, :cond_6

    const/4 p1, 0x1

    if-eq p4, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3, p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->recordSubstitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-void
.end method

.method public combineTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->hasRelevantTypeUseNullAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public computeUniqueKey(Z)[C
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result p1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v2, p1

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, p1, v4

    if-ne v5, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v1, p1, [C

    invoke-virtual {v0, v3, p1, v1, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v1
.end method

.method public constantPoolName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0
.end method

.method public debugName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public denotesRelevantSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public enterRecursiveFunction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0
.end method

.method public enterRecursiveProjectionFunction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    return v0
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V
    .locals 17

    move-object/from16 v8, p0

    iget-wide v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v9

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-wide/high16 v11, 0x100000000000000L

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v3

    cmp-long v0, v3, v13

    if-eqz v0, :cond_1

    cmp-long v0, v9, v13

    if-nez v0, :cond_0

    and-long v0, v3, v11

    cmp-long v0, v0, v13

    if-eqz v0, :cond_1

    move-wide v9, v3

    goto :goto_0

    :cond_0
    cmp-long v0, v3, v9

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v5, v9

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullMismatchOnBound(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;JJLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    :goto_0
    iget-object v15, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v15, :cond_5

    array-length v0, v15

    if-eqz v0, :cond_5

    :goto_1
    add-int/lit8 v16, v0, -0x1

    if-gez v16, :cond_2

    goto :goto_3

    :cond_2
    aget-object v2, v15, v16

    iget-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v3

    cmp-long v0, v3, v13

    if-eqz v0, :cond_3

    cmp-long v0, v9, v13

    if-nez v0, :cond_4

    and-long v0, v3, v11

    cmp-long v0, v0, v13

    if-eqz v0, :cond_3

    move-wide v9, v3

    :cond_3
    :goto_2
    move/from16 v0, v16

    goto :goto_1

    :cond_4
    cmp-long v0, v3, v9

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v5, v9

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->nullMismatchOnBound(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;JJLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v0, v15, v16

    goto :goto_2

    :cond_5
    :goto_3
    cmp-long v0, v9, v13

    if-eqz v0, :cond_6

    iget-wide v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x100000

    or-long/2addr v2, v9

    or-long/2addr v0, v2

    iput-wide v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_6
    return-void
.end method

.method public exitRecursiveFunction()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-void
.end method

.method public exitRecursiveProjectionFunction()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveProjectionFunction:Z

    return-void
.end method

.method public genericSignature()[C
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    move v4, v3

    :goto_1
    if-lt v4, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public genericTypeSignature()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v1, 0x3b

    const/16 v2, 0x54

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericTypeSignature:[C

    return-object v0
.end method

.method public getDerivedTypesForDeferredInitialization()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundsCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_BOUNDS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    return-object p1

    :cond_0
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->createBoundOrDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v3

    if-lt v2, v4, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v2

    invoke-static {p2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;->createBoundOrDependency(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public hasOnlyRawBounds()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasTypeBit(I)Z
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const v1, -0x8000001

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v3, v3, 0x713

    or-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v3

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v5, v5, 0x713

    or-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v2
.end method

.method public isErasureBoundTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isFreeTypeVariable()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->pessimisticNullAnalysisForFreeTypeVariablesEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHierarchyConnected()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInterchangeableWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)Z
    .locals 7

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_3

    return v1

    :cond_3
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v2

    invoke-static {p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    move v5, v3

    :goto_1
    if-lt v5, v0, :cond_4

    return v3

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v5

    invoke-static {v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public isProperType(Z)Z
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProperType(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_4

    array-length v2, v2

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProperType(Z)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v1

    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubTypeOfRTL(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    array-length p2, p2

    move v2, v0

    :goto_0
    if-lt v2, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p1, v1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kind()I
    .locals 1

    const/16 v0, 0x1004

    return v0
.end method

.method public mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_5

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v3

    if-lt v2, v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v1

    :goto_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " extends "

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_2

    goto :goto_2

    :cond_2
    if-gtz v3, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, " & "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    goto :goto_4

    :goto_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array p2, p1, [C

    invoke-virtual {v0, v2, p1, p2, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p2
.end method

.method public otherUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    return-object v0
.end method

.method public resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x180000000000000L

    and-long/2addr v1, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-wide/16 v8, 0x800

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_2

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v5, v13, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v6, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v8

    or-long/2addr v6, v14

    iput-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v6, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v14, v6, v3

    cmp-long v18, v14, v11

    if-eqz v18, :cond_1

    cmp-long v18, v1, v11

    if-nez v18, :cond_1

    const-wide/high16 v16, 0x100000000000000L

    and-long v6, v6, v16

    cmp-long v6, v6, v11

    if-eqz v6, :cond_1

    move-wide v1, v14

    :cond_1
    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_2
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v7, v6

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    aget-object v14, v6, v13

    :goto_0
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_3

    move-wide/from16 v19, v11

    goto :goto_2

    :cond_3
    aget-object v15, v6, v7

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v15, v13, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v3, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v8

    or-long/2addr v3, v10

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v3, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v10, 0x180000000000000L

    and-long v21, v3, v10

    const-wide/16 v19, 0x0

    cmp-long v12, v21, v19

    if-eqz v12, :cond_4

    cmp-long v12, v1, v19

    if-nez v12, :cond_4

    const-wide/high16 v16, 0x100000000000000L

    and-long v3, v3, v16

    cmp-long v3, v3, v19

    if-eqz v3, :cond_5

    move-wide/from16 v1, v21

    goto :goto_1

    :cond_4
    const-wide/high16 v16, 0x100000000000000L

    :cond_5
    :goto_1
    aput-object v13, v6, v7

    move-wide v3, v10

    move-wide/from16 v11, v19

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    move-wide/from16 v19, v11

    const/4 v14, 0x0

    :goto_2
    cmp-long v3, v1, v19

    if-eqz v3, :cond_7

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v7, 0x100000

    or-long/2addr v1, v7

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_9

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_9
    :goto_3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return-object v0
.end method

.method public setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->getDerivedTypesForDeferredInitialization()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    return-object p1
.end method

.method public setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->getDerivedTypesForDeferredInitialization()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->getDerivedTypesForDeferredInitialization()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->forceRegisterAsDerived(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public shortReadableName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    array-length v6, v4

    if-eqz v3, :cond_2

    new-array v5, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v4, v1

    :goto_1
    if-lt v4, v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v7, v7, v4

    if-eqz v7, :cond_5

    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v8, v8, v4

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v5, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-object v7, v5, v4

    move v3, v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p1, p2, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-object p1

    :cond_7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-object p0

    :goto_3
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-string v2, " extends "

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_6

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_3

    goto :goto_1

    :cond_3
    if-gtz v2, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public updateTagBits()J
    .locals 9

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v4

    or-long v1, v2, v4

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_2

    array-length v2, v1

    move v3, v0

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v1, v3

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v7

    or-long v4, v5, v7

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    goto :goto_4

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw v1

    :cond_3
    :goto_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_1
    return-object v0
.end method
