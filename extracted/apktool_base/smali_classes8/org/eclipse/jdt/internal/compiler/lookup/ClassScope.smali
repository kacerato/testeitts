.class public Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.source "SourceFile"


# instance fields
.field deferredBoundChecks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->innermostSwitchCase()Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkAndSetModifiers()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildTypeVariables()V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_7

    array-length v1, v1

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move p1, v3

    move v4, p1

    :goto_0
    if-lt p1, v1, :cond_1

    if-eq v4, v1, :cond_0

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :cond_0
    move-object p1, v2

    goto/16 :goto_3

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v5, v5, p1

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    move-object v6, v0

    :cond_2
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v3

    :goto_1
    if-lt v6, p1, :cond_4

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v6, v6, p1

    invoke-direct {v5, p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    invoke-direct {v5, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setAsMemberType()V

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v7, v7, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateNestedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalLocalTypeDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMemberTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method private buildMemberTypes(Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_a

    array-length v0, v0

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v5, v0, :cond_1

    if-eq v6, v0, :cond_0

    new-array v2, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_0
    move-object v2, v3

    goto/16 :goto_5

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v7, v2, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isMissingType([C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_4

    const/4 v8, 0x4

    if-eq v2, v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalLocalTypeDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_4

    :cond_5
    :goto_2
    move-object v2, v1

    :cond_6
    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v4

    :goto_3
    if-lt v2, v5, :cond_8

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v2, p0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v7, v6, 0x1

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v2, v1, v8, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    aput-object v2, v3, v6

    move v6, v7

    goto :goto_4

    :cond_8
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v8, v8, v2

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateNestedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMemberTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method private buildTypeVariables()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->objectCannotBeGeneric(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-void
.end method

.method private checkAndSetModifiers()V
    .locals 15

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModifierForType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    or-int/2addr v1, v6

    :cond_1
    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v6, v6, 0x800

    or-int/2addr v1, v6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonStaticContextForEnumMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    or-int/lit8 v1, v1, 0x8

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalLocalTypeDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return-void

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v8, 0x350000

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    or-int/lit8 v1, v1, 0x10

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v6, :cond_8

    or-int/lit16 v1, v1, 0x4000

    :cond_8
    move-object v6, p0

    :cond_9
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/high16 v8, 0x200000

    const/4 v9, 0x2

    if-eq v7, v9, :cond_c

    if-eq v7, v4, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result v7

    if-eqz v7, :cond_b

    or-int/lit16 v1, v1, 0x800

    :cond_b
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v7

    if-nez v7, :cond_12

    or-int/2addr v1, v8

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v9, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_2

    :cond_c
    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v7

    :cond_d
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isViewedAsDeprecated()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v7

    if-nez v7, :cond_12

    :goto_1
    or-int/2addr v1, v8

    goto :goto_2

    :cond_e
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result v7

    if-eqz v7, :cond_f

    or-int/lit16 v1, v1, 0x800

    :cond_f
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_1

    :cond_10
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStrictfp()Z

    move-result v9

    if-eqz v9, :cond_11

    or-int/lit16 v1, v1, 0x800

    :cond_11
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isViewedAsDeprecated()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_1

    :cond_12
    :goto_2
    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v6, :cond_9

    :cond_13
    :goto_3
    const v6, 0xffff

    and-int/2addr v6, v1

    and-int/lit16 v7, v1, 0x200

    const/4 v8, 0x1

    if-eqz v7, :cond_19

    if-eqz v3, :cond_15

    const v4, 0xd1f0

    and-int/2addr v4, v1

    if-eqz v4, :cond_17

    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForAnnotationMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMemberInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_4

    :cond_15
    const v4, 0xd1fe

    and-int/2addr v4, v1

    if-eqz v4, :cond_17

    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_17
    :goto_4
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    if-ne v4, v5, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v9, 0x310000

    cmp-long v4, v4, v9

    if-lez v4, :cond_18

    or-int/lit16 v1, v1, 0x1000

    :cond_18
    or-int/lit16 v1, v1, 0x400

    goto/16 :goto_12

    :cond_19
    and-int/lit16 v7, v1, 0x4000

    if-eqz v7, :cond_2a

    if-eqz v3, :cond_1a

    const v7, 0xb7f0

    and-int/2addr v7, v1

    if-eqz v7, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMemberEnum(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    and-int/lit16 v6, v1, -0x401

    const v7, 0xfbff

    and-int/2addr v1, v7

    move v14, v6

    move v6, v1

    move v1, v14

    goto :goto_5

    :cond_1a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v7

    if-nez v7, :cond_1b

    const v7, 0xb7fe

    and-int/2addr v7, v1

    if-eqz v7, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForEnum(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_1b
    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v7

    if-nez v7, :cond_2e

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_1c

    :goto_6
    or-int/lit16 v1, v1, 0x400

    goto :goto_d

    :cond_1c
    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v9, :cond_1d

    move v10, v5

    goto :goto_7

    :cond_1d
    array-length v10, v9

    :goto_7
    if-nez v10, :cond_1e

    goto :goto_d

    :cond_1e
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v11, :cond_1f

    move v12, v5

    goto :goto_8

    :cond_1f
    array-length v12, v11

    :goto_8
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_20

    move v7, v8

    goto :goto_9

    :cond_20
    move v7, v5

    :goto_9
    move v13, v5

    :goto_a
    if-ge v13, v12, :cond_22

    if-eqz v7, :cond_21

    goto :goto_b

    :cond_21
    aget-object v7, v11, v13

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_22
    :goto_b
    if-nez v7, :cond_23

    goto :goto_d

    :cond_23
    move v7, v5

    move v11, v7

    :goto_c
    if-lt v7, v10, :cond_24

    if-eqz v11, :cond_25

    goto :goto_6

    :cond_24
    aget-object v12, v9, v7

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v13

    if-ne v13, v4, :cond_29

    iget-object v11, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v11, :cond_25

    move v11, v8

    goto :goto_10

    :cond_25
    :goto_d
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v7, :cond_28

    array-length v9, v7

    :goto_e
    if-lt v5, v9, :cond_26

    goto :goto_f

    :cond_26
    aget-object v10, v7, v5

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v11

    if-ne v11, v4, :cond_27

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v10, :cond_27

    goto :goto_12

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    :goto_f
    or-int/lit8 v1, v1, 0x10

    goto :goto_12

    :cond_29
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_2a
    if-eqz v3, :cond_2b

    const v4, 0xf3e0

    and-int/2addr v4, v1

    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForMemberClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_11

    :cond_2b
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v4

    if-eqz v4, :cond_2c

    const v4, 0xf3ef

    and-int/2addr v4, v1

    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForLocalClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_11

    :cond_2c
    const v4, 0xf3ee

    and-int/2addr v4, v1

    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_2d
    :goto_11
    and-int/lit16 v4, v1, 0x410

    const/16 v5, 0x410

    if-ne v4, v5, :cond_2e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierCombinationFinalAbstractForClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_2e
    :goto_12
    if-eqz v3, :cond_35

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_30

    and-int/lit8 v3, v6, 0x6

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVisibilityModifierForInterfaceMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    and-int/lit8 v3, v6, 0x4

    if-eqz v3, :cond_2f

    and-int/lit8 v1, v1, -0x5

    :cond_2f
    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_33

    :goto_13
    and-int/lit8 v1, v1, -0x3

    goto :goto_14

    :cond_30
    and-int/lit8 v3, v6, 0x7

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v3, v4

    if-le v3, v8, :cond_33

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVisibilityModifierCombinationForMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    and-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_32

    and-int/lit8 v3, v6, 0x4

    if-eqz v3, :cond_31

    and-int/lit8 v1, v1, -0x5

    :cond_31
    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_33

    goto :goto_13

    :cond_32
    and-int/lit8 v3, v6, 0x4

    if-eqz v3, :cond_33

    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_33

    goto :goto_13

    :cond_33
    :goto_14
    and-int/lit8 v3, v6, 0x8

    if-nez v3, :cond_34

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_35

    or-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_34
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalStaticModifierForMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_35
    :goto_15
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return-void
.end method

.method private checkAndSetModifiersForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V
    .locals 5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModifierForField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    const v3, 0xffff

    if-eqz v2, :cond_3

    const/16 v2, 0x19

    or-int/2addr v0, v2

    and-int/2addr v3, v0

    if-eq v3, v2, :cond_2

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForAnnotationField(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForInterfaceField(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_2
    :goto_0
    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return-void

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForEnumConstant(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_4
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v0, 0x8004019

    or-int/2addr p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return-void

    :cond_5
    const v2, 0xff20

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    const v2, -0xff21

    and-int/2addr v2, v0

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVisibilityModifierCombinationForField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_8

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_7

    and-int/lit8 v2, v2, -0x5

    :cond_7
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_9

    :goto_2
    and-int/lit8 v2, v2, -0x3

    goto :goto_3

    :cond_8
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_9

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    const/16 v3, 0x50

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierCombinationFinalVolatileForField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_a
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p2, :cond_b

    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_b

    const/high16 p2, 0x4000000

    or-int/2addr v2, p2

    :cond_b
    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return-void
.end method

.method private checkForInheritedMemberTypes(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move v3, v1

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasMemberTypes()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_7

    if-nez v0, :cond_2

    array-length v3, v4

    move-object v0, v4

    goto :goto_4

    :cond_2
    array-length v5, v4

    add-int v6, v3, v5

    array-length v7, v0

    if-lt v6, v7, :cond_3

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move-object v6, v0

    :goto_0
    move v7, v1

    move v8, v3

    :goto_1
    if-lt v7, v5, :cond_4

    move-object v0, v6

    move v3, v8

    goto :goto_4

    :cond_4
    aget-object v9, v4, v7

    move v0, v1

    :goto_2
    if-lt v0, v8, :cond_5

    add-int/lit8 v0, v8, 0x1

    aput-object v9, v6, v8

    move v8, v0

    goto :goto_3

    :cond_5
    aget-object v3, v6, v0

    invoke-static {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x10000

    if-eqz v2, :cond_8

    iget-wide v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_0

    :cond_8
    if-eqz v0, :cond_12

    move v2, v1

    move v8, v2

    :goto_5
    if-lt v2, v3, :cond_a

    if-eqz v8, :cond_12

    :goto_6
    if-lt v1, v3, :cond_9

    goto/16 :goto_c

    :cond_9
    aget-object v2, v0, v1

    iget-wide v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v8, v6

    iput-wide v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    aget-object v9, v0, v2

    iget-wide v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v10, v6

    cmp-long v10, v10, v4

    if-nez v10, :cond_11

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasMemberTypes()Z

    move-result v8

    if-eqz v8, :cond_b

    return-void

    :cond_b
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_10

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v8, v10, :cond_10

    array-length v10, v8

    add-int v11, v3, v10

    array-length v12, v0

    if-lt v11, v12, :cond_c

    add-int/lit8 v11, v11, 0x5

    new-array v11, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_c
    move-object v11, v0

    :goto_7
    move v12, v1

    move v13, v3

    :goto_8
    if-lt v12, v10, :cond_d

    move v8, v9

    move-object v0, v11

    move v3, v13

    goto :goto_b

    :cond_d
    aget-object v14, v8, v12

    move v0, v1

    :goto_9
    if-lt v0, v13, :cond_e

    add-int/lit8 v0, v13, 0x1

    aput-object v14, v11, v13

    move v13, v0

    goto :goto_a

    :cond_e
    aget-object v3, v11, v0

    invoke-static {v14, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    move v8, v9

    :cond_11
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    :goto_c
    move-object/from16 v0, p1

    :cond_13
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v1, v6

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v6

    cmp-long v1, v1, v4

    if-eqz v1, :cond_13

    :cond_14
    return-void
.end method

.method private connectEnumSuperclass()Z
    .locals 14

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangEnum()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-wide/32 v4, 0x20000

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v3, v7, v4

    iput-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return v6

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v8

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v1, v0, v6

    invoke-virtual {v4, v6, v3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonGenericTypeCannotBeParameterized(ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v6

    :cond_1
    array-length v9, v8

    if-eq v0, v9, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v1, v0, v6

    invoke-virtual {v4, v3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectArityForParameterizedType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return v6

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v10

    invoke-virtual {v10, v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    filled-new-array {v10}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    invoke-virtual {v9, v2, v10, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v9

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v12, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v12

    or-long/2addr v4, v10

    iput-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v8, v6

    invoke-virtual {v4, v9, v1, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->isOKbyJLS()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    aget-object v5, v8, v6

    invoke-virtual {v4, v2, v5, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    xor-int/2addr v0, v7

    return v0
.end method

.method private connectMemberTypes()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private connectSuperInterfaces()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangAnnotationAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v4

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    xor-int/lit8 v1, v4, 0x1

    return v1

    :cond_0
    return v3

    :cond_1
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v4, v3, :cond_2

    return v3

    :cond_2
    array-length v2, v2

    new-array v4, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-lt v6, v2, :cond_5

    if-lez v7, :cond_4

    if-eq v7, v2, :cond_3

    new-array v2, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    return v3

    :cond_5
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v8, v6

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->findSupertype(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    const-wide/32 v10, 0x20000

    if-nez v9, :cond_6

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v8, v10

    iput-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move v3, v5

    move v15, v6

    goto/16 :goto_3

    :cond_6
    move v12, v5

    :goto_1
    if-lt v12, v6, :cond_d

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v12

    const-wide/16 v13, 0x0

    move v15, v6

    if-nez v12, :cond_7

    iget-wide v5, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v16, 0x80

    and-long v5, v5, v16

    cmp-long v5, v5, v13

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superinterfaceMustBeAnInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v5, v10

    iput-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationTypeUsedAsSuperinterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_8
    iget-wide v5, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v16, 0x40000000

    and-long v16, v5, v16

    cmp-long v12, v16, v13

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superTypeCannotUseWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v5, v10

    iput-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_2

    :cond_9
    and-long/2addr v5, v10

    cmp-long v5, v5, v13

    if-nez v5, :cond_a

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v5, v10

    iput-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    and-int/2addr v3, v5

    :cond_b
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget v6, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v6, v6, 0x713

    or-int/2addr v5, v6

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit8 v6, v5, 0x3

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->applyCloseableInterfaceWhitelists()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_c
    add-int/lit8 v5, v7, 0x1

    aput-object v9, v4, v7

    move v7, v5

    goto :goto_3

    :cond_d
    move v15, v6

    aget-object v5, v4, v12

    invoke-static {v5, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateSuperinterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v5, v10

    iput-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_2

    :goto_3
    add-int/lit8 v6, v15, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v12, v12, 0x1

    move v6, v15

    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private connectSuperclass()Z
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->objectMustBeClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->objectCannotHaveSuperTypes(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_2
    return v4

    :cond_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectEnumSuperclass()Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_5
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->findSupertype(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const-wide/32 v5, 0x20000

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v9

    if-nez v9, :cond_6

    iget-wide v9, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v11, 0x80

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superclassMustBeAClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->classExtendFinalClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_7
    iget-wide v9, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v11, 0x40000000

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superTypeCannotUseWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v10, 0x29

    if-ne v9, v10, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotExtendEnum(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_9
    iget-wide v9, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v5

    cmp-long v3, v9, v7

    if-nez v3, :cond_c

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v2, v2, 0x713

    or-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->applyCloseableClassWhitelists()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_b
    return v4

    :cond_c
    :goto_0
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v5

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    return v0

    :cond_d
    :goto_1
    iget-wide v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v4, v9, v5

    iput-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v9, 0x100

    and-long/2addr v4, v9

    cmp-long v2, v4, v7

    if-nez v2, :cond_e

    invoke-direct {p0, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private connectTypeHierarchyWithoutMembers()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-nez v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndSetImports()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchyWithoutMembers()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    :try_start_0
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v3, v5

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectSuperclass()Z

    move-result v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectSuperInterfaces()Z

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v6, 0x200

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->connectTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Z)Z

    move-result v4

    and-int/2addr v3, v4

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyHasProblems(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    return-void

    :goto_2
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    throw v0
.end method

.method private detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z
    .locals 11

    .line 10
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x20000

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 14
    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p2, v2

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 15
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 17
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyBeingActivelyConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 19
    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p2, v2

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 20
    iget-wide p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p1, v2

    iput-wide p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_2

    .line 22
    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_f

    .line 23
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-wide v7, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v2

    cmp-long v0, v7, v5

    if-eqz v0, :cond_5

    .line 24
    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p2, v2

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyHasProblems(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    return v1

    .line 26
    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 29
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v4, v2

    iput-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 30
    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 31
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 32
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 33
    :cond_7
    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v7

    .line 34
    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v2

    cmp-long v8, v8, v5

    if-eqz v8, :cond_9

    .line 35
    iget-wide v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v8, v2

    iput-wide v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 36
    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v8, v2

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :cond_8
    move v7, v4

    .line 37
    :cond_9
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 38
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v8, :cond_e

    .line 39
    array-length v8, v0

    :goto_1
    if-lt v4, v8, :cond_a

    goto :goto_2

    .line 40
    :cond_a
    aget-object v9, v0, v4

    .line 41
    invoke-static {p1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 42
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 43
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v4, v2

    iput-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 44
    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 45
    :cond_b
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 46
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    .line 47
    :cond_c
    invoke-direct {p0, p1, v9, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 48
    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v2

    cmp-long v9, v9, v5

    if-eqz v9, :cond_d

    .line 49
    iget-wide v9, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v9, v2

    iput-wide v9, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 50
    iget-wide v9, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v9, v2

    iput-wide v9, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_e
    :goto_2
    return v7

    .line 51
    :cond_f
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyBeingActivelyConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_12

    .line 53
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_12

    .line 54
    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 55
    :cond_10
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyBeingActivelyConnected()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 56
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 57
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v4, v2

    iput-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 58
    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 59
    :cond_11
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-nez v7, :cond_10

    :cond_12
    if-eqz v0, :cond_15

    .line 60
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v7, :cond_15

    .line 61
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getLastToken()[C

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_3

    .line 63
    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 64
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v8

    invoke-static {v0, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 66
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v4, v2

    iput-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 67
    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v1

    .line 68
    :cond_15
    :goto_3
    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x100

    and-long/2addr v0, v7

    cmp-long p3, v0, v5

    if-nez p3, :cond_16

    .line 69
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result p3

    if-nez p3, :cond_16

    .line 70
    move-object p3, p2

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchyWithoutMembers()V

    .line 71
    :cond_16
    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr p2, v2

    cmp-long p2, p2, v5

    if-eqz p2, :cond_17

    .line 72
    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p2, v2

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_17
    return v4
.end method

.method private findSupertype(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    :try_start_0
    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v4, :cond_0

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    throw p1
.end method


# virtual methods
.method public buildAnonymousTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 10

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    move-result-object p1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLOSE:[C

    aget-object v4, v1, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_1

    and-int/lit16 v0, v0, 0x713

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x40000000

    const-wide/32 v5, 0x20000

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_6

    filled-new-array {v7}, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-wide v8, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v8

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, v7, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superTypeCannotUseWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_6

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v8, 0x29

    if-ne v0, v8, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, v7, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotExtendEnum(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->anonymousClassCannotExtendFinalClass(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_5
    iget-wide v8, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v8

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, v7, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superTypeCannotUseWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectMemberTypes()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFieldsAndMethods()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->faultInTypesForFieldsAndMethods()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    return-void
.end method

.method public buildFields()V
    .locals 15

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->areFieldsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-void

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v2, :cond_9

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v7, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    move v4, v3

    move v8, v4

    :goto_1
    if-lt v4, v2, :cond_3

    if-eq v8, v5, :cond_2

    new-array v1, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {v6, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    :cond_2
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, -0x3001

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-void

    :cond_3
    aget-object v9, v1, v4

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const/high16 v12, 0x2000000

    or-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v10, v9, v12, v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput v8, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-direct {p0, v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkAndSetModifiersForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    iget-object v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v7, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v10, :cond_6

    move v11, v3

    :goto_2
    if-lt v11, v4, :cond_4

    goto :goto_3

    :cond_4
    aget-object v13, v1, v11

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v14, v10, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    invoke-virtual {v10, v0, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateFieldInType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v7, v10, v12}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateFieldInType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    iput-object v12, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_4

    :cond_7
    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v7, v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    aput-object v10, v6, v8

    move v8, v9

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    aget-object v6, v1, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public buildFieldsAndMethods()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFields()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildMethods()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->tagIndirectlyAccessibleMembers()V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;->checkSyntheticArgsAndFields()V

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFieldsAndMethods()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public buildLocalTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedTypeBounds()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedSuperTypeCollisions()V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFieldsAndMethods()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->faultInTypesForFieldsAndMethods()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    return-void
.end method

.method public buildMethods()V
    .locals 15

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->areMethodsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void

    :cond_2
    if-nez v5, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    array-length v2, v5

    :goto_1
    move v6, v4

    :goto_2
    const/4 v7, -0x1

    if-lt v6, v2, :cond_4

    move v8, v7

    goto :goto_3

    :cond_4
    aget-object v8, v5, v6

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v8

    if-eqz v8, :cond_16

    move v8, v6

    :goto_3
    if-eqz v1, :cond_5

    const/4 v6, 0x2

    goto :goto_4

    :cond_5
    move v6, v4

    :goto_4
    if-ne v8, v7, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v2, -0x1

    :goto_5
    add-int/2addr v7, v6

    new-array v9, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_7

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticEnumMethod([C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v10

    aput-object v10, v9, v4

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticEnumMethod([C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v10

    aput-object v10, v9, v3

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v4

    move v11, v10

    :goto_6
    if-lt v10, v2, :cond_8

    goto :goto_9

    :cond_8
    if-eq v10, v8, :cond_a

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    aget-object v13, v5, v10

    invoke-direct {v12, p0, v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    aget-object v13, v5, v10

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->createMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    if-eqz v12, :cond_a

    add-int/lit8 v13, v6, 0x1

    aput-object v12, v9, v6

    if-nez v11, :cond_9

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isNative()Z

    move-result v6

    if-nez v6, :cond_9

    move v11, v4

    goto :goto_7

    :cond_9
    move v11, v3

    :goto_7
    move v6, v13

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    move v10, v4

    move v11, v10

    move v12, v11

    :goto_8
    if-lt v10, v2, :cond_12

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodInConcreteClass(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_c
    :goto_9
    if-eq v6, v7, :cond_d

    new-array v2, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v9, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v2

    :cond_d
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v7, -0xc001

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v11, :cond_10

    move v2, v4

    :goto_a
    array-length v5, v9

    const/high16 v6, 0x8000000

    if-lt v2, v5, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v5

    move v0, v4

    :goto_b
    array-length v2, v5

    if-lt v0, v2, :cond_e

    goto :goto_c

    :cond_e
    aget-object v2, v5, v0

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/2addr v7, v6

    iput v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    aget-object v5, v9, v2

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v6, v7

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    aget-object v1, v9, v4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aget-object v1, v9, v3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_11
    return-void

    :cond_12
    if-eq v10, v8, :cond_15

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    aget-object v14, v5, v10

    invoke-direct {v13, p0, v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    aget-object v14, v5, v10

    invoke-virtual {v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->createMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    if-eqz v13, :cond_15

    add-int/lit8 v14, v6, 0x1

    aput-object v13, v9, v6

    if-nez v12, :cond_13

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v6

    if-nez v6, :cond_13

    move v12, v4

    goto :goto_d

    :cond_13
    move v12, v3

    :goto_d
    if-nez v11, :cond_14

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isNative()Z

    move-result v6

    if-nez v6, :cond_14

    move v11, v4

    goto :goto_e

    :cond_14
    move v11, v3

    :goto_e
    move v6, v14

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public buildType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {v1, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->deepCopy([[C)[[C

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v3

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    const/16 v5, 0x24

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v2

    aput-object v2, v0, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateNestedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    invoke-direct {v1, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->setAccessRestriction(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz p2, :cond_3

    array-length p2, p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_2
    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkAndSetModifiers()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildTypeVariables()V

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildMemberTypes(Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p1
.end method

.method public checkParameterizedSuperTypeCollisions()V
    .locals 20

    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance v9, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :goto_1
    array-length v11, v8

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    if-lt v13, v11, :cond_e

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-nez v14, :cond_1

    move v15, v12

    goto :goto_3

    :cond_1
    array-length v0, v14

    move v15, v0

    :goto_3
    move v7, v12

    :goto_4
    if-lt v7, v15, :cond_4

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_3

    array-length v1, v0

    :goto_5
    if-lt v12, v1, :cond_2

    goto :goto_6

    :cond_2
    aget-object v2, v0, v12

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedSuperTypeCollisions()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_3
    :goto_6
    return-void

    :cond_4
    aget-object v0, v14, v7

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v10, :cond_d

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    array-length v13, v10

    move v5, v12

    :goto_7
    if-lt v5, v13, :cond_6

    goto :goto_a

    :cond_6
    aget-object v4, v10, v5

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move/from16 v18, v5

    goto :goto_9

    :cond_8
    if-eqz v11, :cond_9

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 v17, v4

    move-object v4, v8

    move/from16 v18, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    :cond_a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :goto_8
    add-int/lit8 v19, v0, -0x1

    if-gez v19, :cond_b

    goto :goto_9

    :cond_b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v0, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v3, v9

    move-object v4, v8

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v0, v19

    goto :goto_8

    :goto_9
    add-int/lit8 v5, v18, 0x1

    goto :goto_7

    :cond_d
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_e
    aget-object v14, v8, v13

    if-nez v14, :cond_f

    goto :goto_c

    :cond_f
    if-eqz v10, :cond_10

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move-object v3, v9

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    move v15, v12

    :goto_b
    if-lt v15, v13, :cond_11

    goto :goto_c

    :cond_11
    aget-object v2, v8, v15

    if-nez v2, :cond_12

    goto :goto_d

    :cond_12
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v9

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_13
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_b
.end method

.method public checkParameterizedTypeBounds()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v2, :cond_2

    array-length v2, v0

    :goto_2
    if-lt v1, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedTypeBounds()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_4

    :cond_4
    instance-of v4, v3, Ljava/lang/Runnable;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localCheckRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNullDefault()I

    move-result v1

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

.method public connectTypeHierarchy()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    :try_start_0
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v5, 0x100

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    or-long/2addr v3, v5

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectSuperclass()Z

    move-result v3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectSuperInterfaces()Z

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v6, 0x200

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->connectTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Z)Z

    move-result v4

    and-int/2addr v3, v4

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v6, 0x40000

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyHasProblems(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectMemberTypes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkForInheritedMemberTypes(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw v0

    :goto_2
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    throw v0
.end method

.method public deferCheck(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-ne p2, v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result p1

    return p1

    .line 8
    :cond_3
    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz p2, :cond_4

    .line 9
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchyWithoutMembers()V

    :cond_4
    return v1
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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNullDefault()I

    move-result v0

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

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    return-object v0
.end method

.method public referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0
.end method

.method public resolveTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--- Class Scope ---\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "--- Class Scope ---\n\n Binding not initialized"

    return-object v0
.end method
