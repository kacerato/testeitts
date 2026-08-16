.class public Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field public allSuperDeclaringTypeNames:[[[C

.field protected isDeclarationOfReferencedMethodsPattern:Z

.field private matchLocator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

.field private methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

.field private samePkgSuperDeclaringTypeNames:[[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->isDeclarationOfReferencedMethodsPattern:Z

    return-void
.end method

.method private getMatchingSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-virtual {p0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->getMatchingSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_4

    return-object v0

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v2

    if-eqz v2, :cond_5

    aget-object p1, p1, v1

    return-object p1

    :cond_5
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->getMatchingSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, p1, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, p3

    array-length v5, v3

    if-ne v4, v5, :cond_3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_1

    return-object v2

    :cond_1
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aget-object v7, p3, v5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isTypeInSuperDeclaringTypeNames([[C)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez p3, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodParametersEqualsPattern(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v2

    :cond_2
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_6

    return v0

    :cond_6
    array-length v1, p1

    move v3, v0

    :goto_2
    if-lt v3, v1, :cond_7

    return v0

    :cond_7
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_3
    if-lt v6, v5, :cond_8

    goto :goto_4

    :cond_8
    aget-object v7, v4, v6

    invoke-virtual {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez p3, :cond_9

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodParametersEqualsPattern(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_a

    return v2

    :cond_9
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    invoke-virtual {v7, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_a

    return v2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_c

    return v2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    :goto_5
    return v0
.end method

.method private methodParametersEqualsPattern(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    aget-object v4, v4, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    aget-object v3, v3, v1

    invoke-static {v4, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedPattern([C[C)[C

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v4

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v3, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resolveLevelAsSuperInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CZ)Z
    .locals 9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, p3, v3

    invoke-static {v5, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p4, :cond_1

    return v4

    :cond_1
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    array-length v6, v5

    move p4, v2

    :goto_1
    if-lt p4, v6, :cond_6

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    move p4, v2

    :goto_3
    array-length v0, p1

    if-lt p4, v0, :cond_3

    goto :goto_4

    :cond_3
    aget-object v0, p1, p4

    invoke-direct {p0, v0, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSuperInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CZ)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v2

    :cond_6
    aget-object v0, v5, p4

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, p2

    array-length v3, v0

    if-ne v1, v3, :cond_9

    array-length v1, v0

    move v3, v2

    :goto_5
    if-lt v3, v1, :cond_7

    return v4

    :cond_7
    aget-object v7, v0, v3

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aget-object v8, p2, v3

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkMethodRef(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    return-void
.end method

.method public fineGrain()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    return v0
.end method

.method public initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 10

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    :try_start_0
    new-instance v9, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v7, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    iget-object v8, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    move-object v2, v9

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;[C[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collect()[[[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->getSamePackageSuperTypeNames()[[[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->samePkgSuperDeclaringTypeNames:[[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchLocator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Time to initialize polymorphic search: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isVirtualInvoke(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->isSuperAccess()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v0, p2, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    aget-object v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-array v3, v2, [[C

    .line 7
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    const/16 v4, 0x2e

    invoke-static {v2, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    .line 9
    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 6

    .line 46
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_3

    .line 49
    :cond_1
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_2

    return v1

    .line 50
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v3

    aget-object v3, v3, v2

    .line 51
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    .line 53
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    :goto_2
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 13
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    const/4 v0, 0x2

    .line 15
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 32
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 5

    .line 34
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 35
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-eqz v1, :cond_4

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z

    if-eqz v3, :cond_2

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 37
    :cond_2
    array-length v1, v1

    .line 38
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    .line 39
    :cond_3
    array-length v3, v3

    :goto_0
    if-eq v1, v3, :cond_4

    return v2

    .line 40
    :cond_4
    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 7

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 17
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 18
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    .line 19
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-eqz v0, :cond_8

    .line 20
    array-length v0, v0

    .line 21
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_2

    move v4, v2

    goto :goto_0

    .line 22
    :cond_2
    array-length v4, v3

    :goto_0
    if-eq v0, v4, :cond_3

    return v2

    :cond_3
    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_7

    .line 23
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    aget-object v5, v5, v0

    aget-object v6, v3, v0

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesTypeReference([CLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 24
    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    if-eqz v5, :cond_6

    .line 25
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v5, v5, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-nez v5, :cond_5

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    .line 27
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodArguments:[[C

    array-length v3, v3

    if-eq v0, v3, :cond_a

    :cond_9
    return v2

    :cond_a
    if-eqz v1, :cond_b

    const/4 v0, 0x2

    goto :goto_4

    :cond_b
    const/4 v0, 0x3

    .line 30
    :goto_4
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 41
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 42
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 43
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    if-eqz v0, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    .line 45
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchContainer()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_0
    return-void
.end method

.method public matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    const/4 v3, 0x3

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-le v3, v0, :cond_1

    if-nez v0, :cond_2

    return v1

    :cond_1
    move v0, v3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    const/4 v4, -0x1

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    array-length v2, v2

    :goto_0
    if-le v2, v4, :cond_15

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v5, 0x1

    if-nez v4, :cond_4

    return v5

    :cond_4
    array-length v4, v4

    if-eq v2, v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemId()I

    move-result v4

    if-ne v4, v3, :cond_6

    return v5

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v4, v4, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    if-eqz v4, :cond_7

    move v4, v5

    goto :goto_1

    :cond_7
    move v4, v1

    :goto_1
    const/4 v6, 0x0

    move v7, v1

    move v8, v7

    move v9, v8

    :goto_2
    if-lt v7, v2, :cond_a

    if-eqz v8, :cond_15

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p2

    if-nez p2, :cond_9

    if-nez v9, :cond_8

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchLocator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    iget-object p2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, p2, v6, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v1

    :cond_a
    iget-object v10, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v12, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    aget-object v12, v12, v7

    if-eqz v12, :cond_b

    goto :goto_3

    :cond_b
    iget-object v11, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    aget-object v11, v11, v7

    invoke-virtual {p0, v11, v12, v10}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v11

    move v12, v1

    goto :goto_6

    :cond_c
    :goto_3
    if-nez v9, :cond_d

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchLocator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    move v9, v5

    :cond_d
    if-eqz v6, :cond_10

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v12, v11

    if-lt v12, v2, :cond_10

    if-eqz v4, :cond_e

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_4

    :cond_e
    aget-object v11, v11, v7

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_f

    :goto_4
    move v11, v3

    goto :goto_5

    :cond_f
    move v11, v1

    :goto_5
    move v12, v5

    goto :goto_6

    :cond_10
    move v11, v1

    move v12, v11

    :goto_6
    if-le v0, v11, :cond_14

    if-nez v11, :cond_13

    if-eqz p2, :cond_11

    if-nez v12, :cond_13

    goto :goto_7

    :cond_11
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v5

    goto :goto_7

    :cond_12
    return v1

    :cond_13
    move v0, v11

    :cond_14
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_15
    return v0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v3, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 2
    instance-of v13, v10, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v13, :cond_0

    move-object v1, v10

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    move-object v14, v1

    goto :goto_1

    :cond_0
    instance-of v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1

    move-object v1, v3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->isDeclarationOfReferencedMethodsPattern:Z

    if-eqz v1, :cond_6

    if-nez v14, :cond_2

    return-void

    :cond_2
    if-eqz v11, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;

    move-object/from16 v2, p2

    :goto_2
    if-eqz v2, :cond_5

    .line 5
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v2, :cond_b

    .line 7
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedMethodsPattern;->knownMethods:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {p0, v14, v12, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v9, p1

    .line 8
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newMethodReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIIZZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    move-result-object v1

    move-object/from16 v2, p3

    .line 9
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 10
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 11
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    .line 12
    iget-object v1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v1, :cond_7

    .line 13
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    if-eqz v14, :cond_7

    .line 14
    iget-object v2, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_7

    .line 15
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Flags;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    iget-object v2, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 17
    :cond_7
    move-object v1, v10

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v1, v12, v11, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;ILorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_5

    .line 18
    :cond_8
    instance-of v1, v10, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 19
    move-object v1, v10

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 20
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setImplicit(Z)V

    move-object v10, v1

    .line 21
    :cond_9
    nop

    instance-of v1, v10, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v1, :cond_a

    .line 22
    move-object v1, v10

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->nameSourceStart:I

    goto :goto_4

    .line 23
    :cond_a
    iget v1, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 24
    :goto_4
    iget v3, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 25
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 26
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    .line 27
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v12, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;ILorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 28
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eqz v0, :cond_5

    .line 29
    move-object p3, p4

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-boolean v3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRaw(Z)V

    .line 31
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 32
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodArguments:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodParameters()Z

    move-result v0

    invoke-virtual {p0, p3, p2, v3, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;[[CZ)V

    .line 33
    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 35
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v4, p3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 37
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedWithOwnVariables()Z

    move-result p3

    if-nez p3, :cond_3

    .line 38
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v5

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 39
    :cond_3
    :goto_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p3, :cond_4

    .line 40
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_4
    :goto_2
    move p3, v1

    goto/16 :goto_5

    .line 41
    :cond_5
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    if-eqz v0, :cond_a

    .line 42
    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 43
    :cond_6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 44
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_4

    .line 45
    :cond_7
    :goto_3
    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 46
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedWithOwnVariables()Z

    move-result v0

    if-nez v0, :cond_9

    and-int/lit16 v0, p3, 0xc00

    if-eqz v0, :cond_8

    .line 47
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->getMatchingSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 48
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v3, :cond_8

    .line 49
    move-object p4, v0

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    :cond_8
    move-object v4, p4

    and-int/lit16 p3, p3, 0x200

    if-nez p3, :cond_9

    .line 50
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v5

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 51
    :cond_9
    :goto_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p3, :cond_4

    .line 52
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_2

    .line 53
    :cond_a
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 54
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_b
    const/4 p3, 0x0

    .line 55
    :goto_5
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result p4

    if-nez p4, :cond_c

    return-void

    .line 56
    :cond_c
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    if-eqz p4, :cond_d

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->isErasure()Z

    move-result p4

    if-nez p4, :cond_f

    :cond_d
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isEquivalentMatch:Z

    if-eqz p4, :cond_e

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result p4

    if-nez p4, :cond_f

    :cond_e
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result p4

    if-nez p4, :cond_f

    return-void

    .line 57
    :cond_f
    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 p4, 0x20

    ushr-long/2addr v2, p4

    long-to-int p4, v2

    .line 58
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 59
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, p4

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    if-eqz p3, :cond_10

    .line 60
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 61
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-object p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, p3, p1, p4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateParameterizedMethodReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_6

    .line 62
    :cond_10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :goto_6
    return-void
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 4

    if-eqz p3, :cond_5

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->isTypeInSuperDeclaringTypeNames([[C)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p6, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v3, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchOverriddenMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->methodDeclarationsWithInvalidParam:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_5
    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v5

    new-array v8, v7, [[C

    move v9, v6

    :goto_0
    if-lt v9, v7, :cond_4

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v4, v2, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createBinaryMethodHandle(Lorg/eclipse/jdt/core/IType;[C[[C)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    aget-object v2, v5, v9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object v2

    aget-object v10, v5, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v10

    move v11, v6

    :goto_2
    if-lt v11, v10, :cond_5

    aput-object v2, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x2

    new-array v12, v12, [C

    fill-array-data v12, :array_0

    invoke-static {v2, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v18

    instance-of v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v5, :cond_7

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    :cond_7
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v5, Ljava/lang/String;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_8

    move v7, v6

    goto :goto_3

    :cond_8
    array-length v7, v3

    :goto_3
    new-array v8, v7, [Ljava/lang/String;

    move v9, v6

    :goto_4
    if-lt v9, v7, :cond_b

    invoke-interface {v4, v5, v8}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    move-object/from16 v10, p0

    goto :goto_5

    :cond_a
    iget v15, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance v1, Lorg/eclipse/jdt/core/search/MethodDeclarationMatch;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v15

    add-int/lit8 v16, v2, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v17

    const/4 v14, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lorg/eclipse/jdt/core/search/MethodDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move-object/from16 v10, p0

    iput-object v1, v10, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_6

    :goto_5
    return-void

    :cond_b
    move-object/from16 v10, p0

    aget-object v11, v3, v9

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v11

    const/16 v12, 0x2e

    invoke-static {v11, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v11

    invoke-static {v11, v6}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v10, p0

    :goto_6
    return-void

    :array_0
    .array-data 2
        0x5bs
        0x5ds
    .end array-data
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v1, :cond_2

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    .line 9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 10
    :cond_2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v1, :cond_3

    .line 11
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)I

    move-result p1

    return p1

    .line 12
    :cond_3
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    if-eqz v0, :cond_5

    .line 13
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 15
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_5

    .line 16
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)I
    .locals 12

    .line 29
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 31
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    array-length p1, p1

    .line 32
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-eqz v0, :cond_3

    array-length v0, v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1

    .line 33
    :cond_4
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v2

    if-nez v2, :cond_7

    .line 34
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-eq v0, v4, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v2

    :cond_5
    if-nez v2, :cond_6

    return v3

    .line 35
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    .line 36
    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    if-nez v4, :cond_8

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-nez v3, :cond_8

    return v2

    .line 37
    :cond_8
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->isVirtualInvoke(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_d

    .line 38
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 39
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v6, v3, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v11

    move-object v4, p0

    move-object v7, p1

    invoke-virtual/range {v4 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I

    move-result v3

    if-nez v3, :cond_b

    .line 40
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    if-nez v4, :cond_9

    goto :goto_3

    .line 41
    :cond_9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->samePkgSuperDeclaringTypeNames:[[[C

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    :goto_2
    if-eqz v4, :cond_b

    .line 42
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSuperInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CZ)Z

    move-result p1

    if-eqz p1, :cond_b

    or-int/lit16 v1, v2, 0x200

    goto :goto_3

    :cond_b
    move v1, v3

    :cond_c
    :goto_3
    and-int/lit8 p1, v1, -0x10

    if-eqz p1, :cond_e

    return v1

    .line 43
    :cond_d
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v1

    :cond_e
    and-int/lit8 p1, v2, 0xf

    and-int/lit8 v0, v1, 0xf

    if-le p1, v0, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)I
    .locals 12

    .line 44
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 47
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    return v2

    .line 48
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    .line 49
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    if-nez v4, :cond_4

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-nez v2, :cond_4

    return v3

    .line 50
    :cond_4
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->checkMethodRef(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 51
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v11

    move-object v4, p0

    move-object v7, p1

    invoke-virtual/range {v4 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I

    move-result v2

    if-nez v2, :cond_7

    .line 52
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    if-nez v4, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->samePkgSuperDeclaringTypeNames:[[[C

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->allSuperDeclaringTypeNames:[[[C

    :goto_0
    if-eqz v4, :cond_7

    .line 54
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSuperInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CZ)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit16 v1, v3, 0x200

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    and-int/lit8 p1, v1, -0x10

    if-eqz p1, :cond_a

    return v1

    .line 55
    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v1

    :cond_a
    and-int/lit8 p1, v3, 0xf

    and-int/lit8 v0, v1, 0xf

    if-le p1, v0, :cond_b

    move v3, v1

    :cond_b
    return v3

    :cond_c
    :goto_2
    return v1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 12

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 18
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 19
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mayBeGeneric:Z

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 20
    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v3

    if-nez v3, :cond_5

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-eq p1, v4, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->matchMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)I

    move-result v3

    :cond_3
    if-nez v3, :cond_4

    return v2

    .line 22
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    .line 23
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    if-nez v4, :cond_6

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-nez v1, :cond_6

    return v3

    .line 24
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    if-eqz v1, :cond_9

    .line 25
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-eqz v4, :cond_9

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v5, :cond_9

    .line 26
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v1

    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareWith([C[C)I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    move v1, v0

    :cond_9
    if-eqz v1, :cond_a

    .line 27
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v11

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I

    move-result p1

    goto :goto_3

    .line 28
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    :goto_3
    and-int/lit8 v0, v3, 0xf

    and-int/lit8 v1, p1, 0xf

    if-le v0, v1, :cond_b

    move v3, p1

    :cond_b
    return v3
.end method

.method public resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x1

    if-nez v9, :cond_0

    return v12

    :cond_0
    invoke-virtual/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    if-eqz p7, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v1

    move-object/from16 v14, p6

    invoke-static {v14, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_1

    return v13

    :cond_1
    if-nez v11, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    :cond_5
    return v0

    :cond_6
    move-object/from16 v14, p6

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v11, :cond_8

    invoke-direct {p0, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_8

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_7

    return v13

    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    or-int/lit16 v0, v0, 0x800

    :cond_8
    or-int/lit16 v0, v0, 0x400

    return v0

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v11

    if-nez v11, :cond_a

    return v12

    :cond_a
    move v12, v13

    :goto_1
    array-length v0, v11

    if-lt v12, v0, :cond_b

    return v13

    :cond_b
    aget-object v3, v11, v12

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->resolveLevelAsSubtype([C[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CZ)I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_c

    or-int/lit16 v0, v0, 0x800

    :cond_c
    or-int/lit16 v0, v0, 0x400

    return v0

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
