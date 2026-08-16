.class Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;
.source "SourceFile"


# instance fields
.field isSoft:Z

.field left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    .line 5
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object v0

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p0
.end method

.method public static create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p0
.end method

.method private findMostSpecificSuperArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 4

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    move-object p1, v1

    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_3

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    if-ne v2, p3, :cond_2

    return-object p1

    :cond_2
    const-string p1, "Extracting array from intersection is not defined"

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->missingImplementation(Ljava/lang/String;)V

    return-object v1

    :cond_3
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object p1, p2, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private peelOneDimension(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method private reduceSubType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_2
    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v1, v2, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-direct {p1, p2, p3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object p1

    :cond_4
    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v1, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v0, 0x3

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-direct {p1, p3, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object p1

    :cond_5
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_24

    const/16 v3, 0x1004

    const/16 v4, 0x44

    const/16 v5, 0x2004

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x104

    const/4 v6, 0x0

    if-eq v1, v4, :cond_17

    const/16 v4, 0x204

    if-eq v1, v4, :cond_12

    const/16 v4, 0x404

    if-eq v1, v4, :cond_24

    const/16 v4, 0x804

    if-eq v1, v4, :cond_24

    if-eq v1, v3, :cond_d

    if-eq v1, v5, :cond_a

    const v0, 0x8004

    if-eq v1, v0, :cond_b

    const v0, 0x10004

    if-ne v1, v0, :cond_9

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result p3

    invoke-virtual {v0, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->reduceSubType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected RHS "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    :cond_b
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length p3, p1

    new-array v0, p3, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    :goto_2
    array-length p3, p1

    if-lt v6, p3, :cond_c

    return-object v0

    :cond_c
    aget-object p3, p1, v6

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p2, p3, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p3

    aput-object p3, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    if-ne p1, v5, :cond_10

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_10

    :goto_3
    array-length v0, p1

    if-lt v6, v0, :cond_e

    goto :goto_4

    :cond_e
    aget-object v0, p1, v6

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz p1, :cond_11

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_11

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p2, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_11
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    if-ne p1, v5, :cond_15

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_15

    :goto_5
    array-length v0, p1

    if-lt v6, v0, :cond_13

    goto :goto_6

    :cond_13
    aget-object v0, p1, v6

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_15
    :goto_6
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne p1, v2, :cond_16

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p2, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_16
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_7
    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    if-ne v2, v4, :cond_1a

    if-nez p2, :cond_18

    goto :goto_8

    :cond_18
    move-object v2, p3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p0, p2, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->addConstraintsFromTypeParameters(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v1, :cond_19

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_19
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    move v1, v6

    goto :goto_7

    :cond_1a
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1d
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p3

    if-eq p3, v4, :cond_20

    if-eq p3, v3, :cond_1f

    if-eq p3, v5, :cond_1e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1e
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->findMostSpecificSuperArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p2

    goto :goto_9

    :cond_1f
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->otherUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->findMostSpecificSuperArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p2

    goto :goto_9

    :cond_20
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    :goto_9
    if-nez p2, :cond_21

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_21
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result p3

    if-nez p3, :cond_22

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result p3

    if-nez p3, :cond_22

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p2, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_22
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    goto :goto_a

    :cond_23
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    :goto_a
    return-object p1

    :cond_24
    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_25
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1
.end method

.method private reduceTypeEquality(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x204

    if-ne v0, v3, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p2

    if-ne p2, v3, :cond_15

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v3, :cond_0

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v4, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_0
    if-nez v3, :cond_1

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v4, v1, :cond_1

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v3, v1, :cond_2

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v4, :cond_2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p2, p1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne v3, v1, :cond_3

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p1, v1, :cond_4

    :cond_3
    const/4 p1, 0x2

    if-ne v3, p1, :cond_15

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v1, p1, :cond_15

    :cond_4
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    if-eq p1, v3, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v1, :cond_8

    goto/16 :goto_3

    :cond_8
    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-direct {p1, p2, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object p1

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-direct {p1, p2, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object p1

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-eqz p1, :cond_10

    if-nez p2, :cond_d

    goto :goto_1

    :cond_d
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_e
    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_f

    return-object v1

    :cond_f
    aget-object v4, p1, v3

    aget-object v5, p2, v3

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {v4, v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_10
    :goto_1
    if-ne p1, p2, :cond_11

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    goto :goto_2

    :cond_11
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    :goto_2
    return-object p1

    :cond_12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    if-lez p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    if-lez p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->peelOneDimension(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->peelOneDimension(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_15
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1
.end method


# virtual methods
.method public addConstraintsFromTypeParameters(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedWithOwnVariables()Z

    move-result p1

    return p1

    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v1, :cond_6

    array-length p1, v1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    array-length p1, p2

    if-lt v0, p1, :cond_5

    return v2

    :cond_5
    aget-object p1, v1, v0

    aget-object v3, p2, v0

    const/4 v4, 0x5

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    return p1
.end method

.method public applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v2, p2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkIVFreeTVmatch(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 6

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->nullHints:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_10

    if-eq v0, v3, :cond_f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_e

    if-eq v0, v1, :cond_c

    const/4 v4, 0x5

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v4, 0x204

    if-eq v0, v4, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    if-eq p1, v4, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-direct {v0, p1, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    return-object v0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v5, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    if-ne v5, v2, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v5

    if-eq v5, v4, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v5, :cond_7

    if-eq v5, v2, :cond_6

    if-ne v5, v3, :cond_5

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected boundKind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    if-eq p1, v4, :cond_9

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v1, v3, :cond_a

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {v0, p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected relation kind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->checkIVFreeTVmatch(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->checkIVFreeTVmatch(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    :cond_d
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->reduceTypeEquality(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->reduceSubType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->reduceSubType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_0

    :cond_11
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    goto :goto_1

    :cond_12
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    :goto_1
    return-object p1

    :cond_13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    const/16 v2, 0x104

    if-eq v0, v1, :cond_16

    if-eq v0, v2, :cond_17

    goto :goto_2

    :cond_16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    if-eq v0, v2, :cond_17

    goto :goto_2

    :cond_17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->recordUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_18
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->isSoft:Z

    invoke-static {p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type Constraint:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x27e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->appendTypeName(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->appendTypeName(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/16 v1, 0x27e9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
