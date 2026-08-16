.class public Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
.super Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
.source "SourceFile"


# instance fields
.field public analysisIndex:I

.field public definiteInits:[J

.field public extraDefiniteInits:[[J

.field public extraSyntheticArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

.field public hasMissingSwitchDefault:Z

.field public initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public isConstructorCall:Z

.field public isPropagatingInnerClassEmulation:Z

.field public isStatic:Z

.field public lastIndex:I

.field public lastVisibleFieldID:I

.field public referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    .line 6
    new-array v0, v0, [[J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 8
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 9
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    .line 10
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;ZI)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    .line 12
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    return-void
.end method

.method private checkAndSetModifiersForConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModifierForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v3, v2, 0x4005

    if-eqz v3, :cond_2

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, -0x8

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, -0x8

    or-int/2addr v0, v3

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    const v3, 0xf7fd

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForEnumConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    const v2, -0xf7fe

    and-int/2addr v2, v0

    goto :goto_1

    :cond_3
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_4
    move v2, v0

    :goto_1
    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_5
    const v2, 0xf7f8

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    const v2, -0xf7f9

    and-int/2addr v2, v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_7
    move v2, v0

    :goto_2
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVisibilityModifierCombinationForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_8

    and-int/lit8 v2, v2, -0x5

    :cond_8
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    :goto_3
    and-int/lit8 v2, v2, -0x3

    goto :goto_4

    :cond_9
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    return-void
.end method

.method private checkAndSetModifiersForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 13

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModifierForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_0
    const v2, 0xffff

    and-int/2addr v2, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v5

    const-wide/32 v6, 0x350000

    if-eqz v5, :cond_d

    const/high16 v5, 0x10000

    and-int v8, v0, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    const-wide/32 v11, 0x340000

    cmp-long v11, v3, v11

    if-ltz v11, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v11

    if-nez v11, :cond_9

    cmp-long v6, v3, v6

    const/4 v7, 0x2

    if-ltz v6, :cond_2

    move v11, v7

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    const v12, 0x10c09

    or-int/2addr v11, v12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_5

    move v9, v10

    goto :goto_3

    :cond_3
    if-nez v8, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move v9, v10

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStrictfp()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    iget-object v12, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalAbstractModifierCombinationForMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierCombinationForInterfaceMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_6
    if-ltz v6, :cond_8

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    not-int v6, v11

    and-int/2addr v6, v2

    if-nez v6, :cond_8

    const v6, 0xf7f5

    and-int/2addr v0, v6

    if-nez v8, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierCombinationForPrivateInterfaceMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_8
    if-eqz v8, :cond_a

    or-int/2addr v2, v5

    goto :goto_4

    :cond_9
    const/16 v11, 0x401

    :cond_a
    :goto_4
    not-int v0, v11

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForAnnotationMember(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForInterfaceMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;J)V

    :goto_5
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, -0x10000

    or-int/2addr v1, v11

    and-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v2

    if-eqz v2, :cond_e

    cmp-long v2, v3, v6

    if-ltz v2, :cond_e

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_e

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    and-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_e

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v4, 0x2000000000000L

    or-long/2addr v2, v4

    iput-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_e
    const v2, 0xf2c0

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    const v2, -0xf2c1

    and-int/2addr v2, v0

    goto :goto_6

    :cond_f
    move v2, v0

    :goto_6
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVisibilityModifierCombinationForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_11

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_10

    and-int/lit8 v2, v2, -0x5

    :cond_10
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_12

    :goto_7
    and-int/lit8 v2, v2, -0x3

    goto :goto_8

    :cond_11
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_12

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    :goto_8
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_14

    and-int/lit16 v3, v2, 0x93a

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalAbstractModifierCombinationForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_13
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodInAbstractClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_14
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_15

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nativeMethodsCannotBeStrictfp(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_15
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unexpectedStaticModifierForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_16
    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    return-void
.end method


# virtual methods
.method public basicToString(I)Ljava/lang/String;
    .locals 4

    const-string v0, "\n"

    :goto_0
    add-int/lit8 p1, p1, -0x1

    const-string v1, "\t"

    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--- Method Scope ---"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "locals:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "startIndex = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->startIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isConstructorCall = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "initializedField = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lastVisibleFieldID = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "referenceContext = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localCheckRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_2

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1
.end method

.method public checkUnusedParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterWhenImplementingAbstract:Z

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOverriding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterWhenOverridingConcrete:Z

    if-eqz v0, :cond_6

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isMain()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedArgument(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 8

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->maxOffset:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    iget-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    if-le v4, v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noMoreAvailableSpaceForArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraSyntheticArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-eqz p1, :cond_a

    array-length p1, p1

    :goto_4
    if-lt v0, p1, :cond_6

    goto :goto_7

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraSyntheticArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    goto :goto_6

    :cond_8
    :goto_5
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    :goto_6
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    if-le v4, v2, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noMoreAvailableSpaceForArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->offset:I

    invoke-virtual {p0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->computeLocalVariablePositions(IILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void
.end method

.method public createMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    iget-object v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v3, 0x2000000

    or-int/2addr v3, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v3, 0x6000000

    or-int/2addr v3, v2

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->checkAndSetModifiersForConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/32 v4, 0x350000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultMethod()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const v3, 0x2000401

    :goto_0
    or-int/2addr v2, v3

    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    const v3, 0x2000001

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_2
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->checkAndSetModifiersForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :goto_3
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v2, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    array-length v3, v2

    :goto_4
    if-lez v3, :cond_b

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v5

    const-wide/32 v6, 0x310000

    if-eqz v5, :cond_7

    cmp-long v5, v0, v6

    if-ltz v5, :cond_7

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_7
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    invoke-static {v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalThisDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_9

    goto :goto_6

    :cond_9
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v5

    if-eqz v5, :cond_a

    cmp-long v5, v0, v6

    if-ltz v5, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVararg(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_a
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    invoke-static {v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalThisDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_5

    :cond_b
    :goto_6
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v2, :cond_d

    const-wide/32 v2, 0x330000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalSourceLevelForThis(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    :cond_c
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_d

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_d
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v1, v0

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_8

    :cond_f
    :goto_7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public detectAPILeaks(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    return-void
.end method

.method public findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p4

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isQualifiedSuper()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v0, 0x1c

    invoke-direct {p1, p4, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p1

    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p4

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p1, p4, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p1

    :cond_5
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p1, :cond_6

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-nez p1, :cond_6

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p1, p4, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p1

    :cond_6
    :goto_0
    return-object p4
.end method

.method public hasDefaultNullnessFor(II)Z
    .locals 3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localNonNullByDefaultValue(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    if-eqz v0, :cond_3

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasDefaultNullnessFor(II)Z

    move-result p1

    return p1
.end method

.method public isInsideConstructor()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    return v0
.end method

.method public isInsideInitializer()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return v0
.end method

.method public isInsideInitializerOrConstructor()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLambdaScope()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    return v0
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v0
.end method

.method public final recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I
    .locals 12

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    aget-object v0, v0, v2

    :goto_0
    iget-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    :cond_2
    :goto_1
    add-int/2addr p1, v1

    if-gez p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    array-length v1, p1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    if-ne v1, v5, :cond_3

    add-int/lit8 v1, v5, 0x14

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    invoke-static {p1, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    add-int/lit8 v5, v1, 0x14

    new-array v5, v5, [[J

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    invoke-static {p1, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    aput-wide v3, p1, v1

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    array-length v3, v0

    new-array v3, v3, [J

    aput-object v3, p1, v1

    array-length p1, v0

    invoke-static {v0, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastIndex:I

    return p1

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    aget-wide v6, v5, p1

    cmp-long v5, v6, v3

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    aget-object v5, v5, p1

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    array-length v6, v0

    array-length v7, v5

    if-ne v6, v7, :cond_2

    array-length v6, v0

    move v7, v2

    :goto_2
    if-lt v7, v6, :cond_6

    return p1

    :cond_6
    aget-wide v8, v0, v7

    aget-wide v10, v5, v7

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    if-nez v0, :cond_2

    if-nez v5, :cond_2

    return p1
.end method

.method public referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public referenceMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    :goto_0
    return-object v0
.end method

.method public resolveTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public shouldCheckAPILeaks(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
