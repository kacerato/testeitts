.class public Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# instance fields
.field public expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method private static checkAlternateBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;

    invoke-direct {v0, p7}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p7

    if-eqz p7, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p1, p6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p0, p1, p6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getImplicitMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p0, p2, p1, p6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    :goto_0
    if-ne p1, p3, :cond_6

    array-length p1, p5

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result p7

    if-eqz p7, :cond_3

    iget-object p7, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p7

    if-ne v0, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    aget-object p7, p7, v0

    check-cast p7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    aget-object v0, p6, v0

    iget v1, p7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v2

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p7}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p7

    if-eqz p7, :cond_3

    return-void

    :cond_3
    const/4 p7, 0x0

    :goto_1
    if-lt p7, p1, :cond_4

    goto :goto_2

    :cond_4
    aget-object v0, p5, p7

    aget-object v1, p6, p7

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object v0, p5, p7

    aget-object v1, p6, p7

    invoke-static {v0, v1, p2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->preventsUnlikelyTypeWarning(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    aget-object v1, p4, p7

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public static checkNeedForArgumentCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IILorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x4000

    if-nez p1, :cond_1

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p1, p4, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_3
    return-void
.end method

.method public static checkNeedForArgumentCasts(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IILorg/eclipse/jdt/internal/compiler/ast/Expression;IZLorg/eclipse/jdt/internal/compiler/ast/Expression;IZ)V
    .locals 6

    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eqz p5, :cond_6

    .line 15
    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_1

    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move p5, v1

    goto :goto_3

    .line 16
    :cond_1
    move-object v2, p3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_2

    return-void

    .line 17
    :cond_2
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, p4, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, p4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    move p4, v4

    goto :goto_3

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    invoke-virtual {p4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    move p5, v1

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz p8, :cond_c

    .line 19
    iget v2, p6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_7

    iget-object v2, p6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_4
    move p8, v1

    goto :goto_7

    .line 20
    :cond_7
    move-object v2, p6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_8

    return-void

    .line 21
    :cond_8
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, p7, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, p7, :cond_9

    goto :goto_6

    :cond_9
    if-ne v4, v0, :cond_a

    goto :goto_4

    :cond_a
    :goto_5
    move p7, v4

    goto :goto_7

    .line 22
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p7

    invoke-virtual {p7, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    move p8, v1

    goto :goto_5

    :cond_c
    :goto_7
    if-nez p5, :cond_d

    if-eqz p8, :cond_12

    :cond_d
    const/16 v0, 0xf

    if-gt p4, v0, :cond_e

    if-le p7, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    const/16 v1, 0xb

    if-ne p4, v1, :cond_f

    move p7, v0

    goto :goto_8

    :cond_f
    if-ne p7, v1, :cond_12

    move p4, v0

    .line 23
    :cond_10
    :goto_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    aget-object p1, v0, p1

    shl-int/lit8 p4, p4, 0x4

    add-int/2addr p4, p7

    aget p1, p1, p4

    const p4, 0xf0f0f

    and-int/2addr p2, p4

    and-int/2addr p1, p4

    if-ne p2, p1, :cond_12

    if-eqz p5, :cond_11

    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_11
    if-eqz p8, :cond_12

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    check-cast p6, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {p0, p6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_12
    return-void
.end method

.method public static checkNeedForArgumentCasts(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    move-object v6, p5

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    if-eq v6, p5, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 3
    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkAlternateBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    aget-object v3, p4, v2

    .line 5
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v4, :cond_9

    .line 6
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v7, :cond_4

    return-void

    .line 8
    :cond_4
    aget-object v8, p5, v2

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_1

    .line 10
    :cond_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v7, v4, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    if-ne v6, p5, :cond_8

    .line 12
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v3

    .line 13
    :cond_8
    aput-object v7, v6, v2

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static checkNeedForCastCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    return-void
.end method

.method public static checkNeedForEnclosingInstanceCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v0, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private isIndirectlyUsed()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static preventsUnlikelyTypeWarning(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 4

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNLIKELY_ARGUMENT_TYPE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnyEnabled(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p1, p4, v2, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->determineCheckForNonStaticSingleArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->isDangerous(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->determineCheckForNonStaticSingleArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->isDangerous(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    return-object v0
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    move-result p1

    return p1
.end method

.method public checkUnsafeCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 10

    invoke-static {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p5, :cond_1

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p5

    invoke-static {p4, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProvablyDistinct(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    return v0

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_14

    const/16 v3, 0x1004

    const/16 v4, 0x104

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_5

    goto/16 :goto_7

    :cond_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v2

    if-nez v2, :cond_16

    if-nez p4, :cond_7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_7
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 p3, 0x404

    if-eq v2, p3, :cond_8

    if-eqz p5, :cond_16

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_9
    if-eqz p5, :cond_13

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p5

    if-nez p5, :cond_12

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p5

    if-nez p5, :cond_a

    goto/16 :goto_6

    :cond_a
    move-object p5, p2

    check-cast p5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-object v2, p4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v4, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_b

    move v5, v0

    goto :goto_1

    :cond_b
    array-length v5, v4

    :goto_1
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_10

    array-length v2, v2

    if-le v5, v2, :cond_c

    goto :goto_4

    :cond_c
    iget-wide v6, p5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v8, 0x60000000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_11

    move v2, v0

    :goto_2
    if-lt v2, v5, :cond_d

    goto :goto_5

    :cond_d
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v6

    const/16 v7, 0x204

    if-eq v6, v7, :cond_e

    if-eq v6, v3, :cond_e

    goto :goto_3

    :cond_e
    iget-object v6, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v7, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v0, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    invoke-virtual {v6, v8, v7, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-static {v6, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_5

    :cond_f
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_10
    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_11
    :goto_5
    return v1

    :cond_12
    :goto_6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_13
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_16

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_14
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    if-eqz p5, :cond_16

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p3

    if-eqz p3, :cond_16

    :cond_15
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return v1

    :cond_16
    :goto_7
    if-nez p5, :cond_17

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    invoke-static {p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_17
    return v1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 7

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v5, v6, :cond_6

    if-nez p3, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v5, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    if-nez v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v1, :cond_7

    if-nez p3, :cond_7

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    invoke-virtual {v5, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-nez v1, :cond_8

    if-eqz v4, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :cond_9
    if-eqz p3, :cond_a

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_3

    :cond_a
    if-nez v1, :cond_b

    if-eqz v4, :cond_d

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p3, 0x7

    if-eq p1, p3, :cond_c

    const/16 p3, 0x8

    if-eq p1, p3, :cond_c

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_d
    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public innermostCastedExpression()Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0
.end method

.method public localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v0

    return-object v0
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p1

    return p1
.end method

.method public optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x1fe00000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x15

    const-string v0, ""

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x28

    if-lt v2, p1, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ") "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x340000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->CASTING_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v6, :cond_2

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPolymorphic()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    invoke-virtual {v7, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->updatePolymorphicMethodReturnType(Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move-object v2, v1

    :cond_2
    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    invoke-static {v1, v2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnavoidableGenericTypeProblems:Z

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->forcedToBeRaw(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeNullnessCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    const/high16 v2, 0x20010000

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v0

    const/16 v2, 0x100

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x4020

    const/16 v2, 0x4000

    if-ne v0, v2, :cond_a

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->isIndirectlyUsed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_1

    :cond_8
    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCastError(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_9
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, p1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_b

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForCastCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public tagAsNeedCheckCast()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public tagAsUnnecessaryCast(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
