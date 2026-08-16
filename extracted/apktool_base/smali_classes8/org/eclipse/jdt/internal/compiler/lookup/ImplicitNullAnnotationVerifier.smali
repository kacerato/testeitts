.class public Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;
    }
.end annotation


# instance fields
.field buddyImplicitNullAnnotationsVerifier:Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

.field protected environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private inheritNullAnnotations:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 7
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inheritNullAnnotations:Z

    invoke-direct {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->buddyImplicitNullAnnotationsVerifier:Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    .line 8
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inheritNullAnnotations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->inheritNullAnnotations:Z

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->buddyImplicitNullAnnotationsVerifier:Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    .line 3
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->inheritNullAnnotations:Z

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method

.method public static areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    array-length v3, p1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    move v3, v4

    :goto_0
    if-lt v3, v2, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v0, v3

    aget-object v6, p1, v3

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areTypesEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_b

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v5

    if-eqz v5, :cond_a

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v6

    if-ne v5, v6, :cond_a

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p0, v5, :cond_3

    return v4

    :cond_3
    move p0, v4

    :goto_1
    if-lt p0, v3, :cond_8

    :goto_2
    add-int/2addr v3, v1

    :goto_3
    if-lt v3, v2, :cond_4

    return v1

    :cond_4
    aget-object p0, v0, v3

    aget-object v5, p1, v3

    invoke-static {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areTypesEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-nez p0, :cond_6

    aget-object p0, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p0

    if-eqz p0, :cond_5

    aget-object p0, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p0

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    if-ne p0, v5, :cond_5

    aget-object p0, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    return v4

    :cond_6
    aget-object p0, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result p0

    if-eqz p0, :cond_7

    return v4

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    aget-object v5, v0, p0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v5

    if-eqz v5, :cond_9

    return v4

    :cond_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_a
    return v4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public static areTypesEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x404

    const/16 v3, 0x104

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private collectOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_1

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->findAllOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    aget-object v4, v0, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p2, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->doesParameterLengthMatch(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inheritNullAnnotations:Z

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_0
    return-void
.end method

.method private findAllOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V
    .locals 9

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->collectOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    aget-object v6, p4, v1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->collectOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getParameterNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IZ)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    const-wide/high16 v0, 0x100000000000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    aget-object v0, p1, p2

    :goto_1
    return-object v0
.end method

.method private getReturnTypeNullnessTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)J
    .locals 2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v0, 0x180000000000000L

    and-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public applyReturnNullBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;J)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p2, v0

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    :goto_0
    return-void
.end method

.method public checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    const-wide/16 v13, 0x1000

    :try_start_0
    iget-object v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v13

    :goto_1
    iput-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    return-void

    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v15

    invoke-virtual/range {p1 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v10

    invoke-virtual/range {p1 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForParameter(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasAnyNonNullDefault()Z

    move-result v1

    or-int v8, v10, v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    move v2, v7

    :goto_2
    and-int v16, p3, v2

    if-nez v8, :cond_3

    if-nez v16, :cond_3

    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->inheritNullAnnotations:Z

    if-eqz v1, :cond_0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyConnected()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    :cond_4
    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v1, p0

    move/from16 p3, v4

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    move/from16 v17, v8

    move v8, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->findAllOverriddenMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[CILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    move/from16 v7, p3

    add-int/lit8 v4, v7, 0x1

    new-array v6, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;

    move v1, v8

    :goto_3
    if-lt v1, v4, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    add-int/lit8 v5, v1, -0x1

    const-wide/16 v1, 0x0

    if-gez v5, :cond_d

    aget-object v3, v6, v8

    iget-boolean v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->complained:Z

    if-nez v5, :cond_8

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->inheritedNonNullness:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_5

    const-wide/high16 v18, 0x100000000000000L

    :goto_5
    move-wide/from16 v4, v18

    goto :goto_6

    :cond_5
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_6

    const-wide/high16 v18, 0x80000000000000L

    goto :goto_5

    :cond_6
    move-wide v4, v1

    :goto_6
    cmp-long v1, v4, v1

    if-eqz v1, :cond_8

    if-nez v15, :cond_7

    iget-wide v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v4

    iput-wide v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_7

    :cond_7
    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_8
    :goto_7
    if-lt v8, v7, :cond_9

    move-object v13, v9

    move v14, v10

    move/from16 v8, v17

    goto/16 :goto_b

    :cond_9
    add-int/lit8 v16, v8, 0x1

    aget-object v1, v6, v16

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->complained:Z

    if-nez v2, :cond_c

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->inheritedNonNullness:Ljava/lang/Boolean;

    if-eqz v5, :cond_c

    if-nez v0, :cond_a

    const/16 v18, 0x0

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v1, v1, v8

    move-object/from16 v18, v1

    :goto_8
    if-nez v15, :cond_b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v7

    move v4, v8

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;)V

    goto :goto_9

    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v8

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_9

    :cond_c
    move-object/from16 v21, v6

    :goto_9
    move/from16 v8, v16

    move-object/from16 v6, v21

    goto :goto_7

    :cond_d
    move-object/from16 v21, v6

    move-object/from16 v6, v18

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v18, v9

    iget-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v8, v13

    cmp-long v1, v8, v1

    if-nez v1, :cond_e

    move-object/from16 v9, p4

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11, v4, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_a

    :cond_e
    move-object/from16 v9, p4

    const/4 v8, 0x0

    :goto_a
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v19, v4

    move v4, v10

    move/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    move/from16 v23, v7

    move-object/from16 v7, v19

    move/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    move-object/from16 v9, p4

    move v14, v10

    move-object/from16 v10, v21

    invoke-virtual/range {v1 .. v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    move-object v9, v13

    move v10, v14

    move/from16 v8, v19

    move/from16 v17, v8

    move/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v18, v22

    move/from16 v7, v23

    const-wide/16 v13, 0x1000

    goto/16 :goto_4

    :cond_f
    move-object/from16 v21, v6

    move/from16 v23, v7

    move/from16 v19, v8

    move-object v13, v9

    move v14, v10

    move-object/from16 v22, v18

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;-><init>()V

    aput-object v2, v21, v1

    add-int/lit8 v1, v1, 0x1

    move-object v9, v13

    move v10, v14

    move/from16 v8, v19

    move-object/from16 v6, v21

    move-object/from16 v18, v22

    move/from16 v7, v23

    const-wide/16 v13, 0x1000

    goto/16 :goto_3

    :cond_10
    move/from16 v17, v8

    move-object v13, v9

    move v14, v10

    :goto_b
    if-eqz v8, :cond_12

    if-nez v15, :cond_11

    invoke-virtual {v12, v0, v14, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->fillInDefaultNonNullness(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;)V

    goto :goto_c

    :cond_11
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->fillInDefaultNonNullness18(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    :goto_c
    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    goto/16 :goto_1

    :goto_d
    iget-wide v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v3, 0x1000

    or-long/2addr v1, v3

    iput-wide v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    throw v0
.end method

.method public checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->buddyImplicitNullAnnotationsVerifier:Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    move-object/from16 v14, p8

    invoke-virtual {v0, v10, v12, v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_1
    move-object/from16 v14, p8

    :goto_0
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v15

    invoke-direct {v6, v10, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->getReturnTypeNullnessTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)J

    move-result-wide v2

    invoke-direct {v6, v7, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->getReturnTypeNullnessTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)J

    move-result-wide v16

    iget-boolean v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->inheritNullAnnotations:Z

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move/from16 v18, v0

    goto/16 :goto_5

    :cond_3
    cmp-long v1, v16, v4

    const-wide/high16 v12, 0x100000000000000L

    if-nez v1, :cond_9

    if-eqz v0, :cond_7

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    const-wide/high16 v4, 0x80000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    move-object v4, v8

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, v7, v4, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_4
    if-eqz p9, :cond_6

    if-eqz v8, :cond_6

    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    cmp-long v1, v2, v12

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v1, 0x0

    aget-object v12, p9, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object v2, v4

    move-object/from16 v3, p6

    move-object v4, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordDeferredInheritedNullness(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    goto/16 :goto_5

    :cond_6
    move/from16 v18, v0

    invoke-virtual {v6, v7, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->applyReturnNullBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;J)V

    goto/16 :goto_5

    :cond_7
    move/from16 v18, v0

    if-eqz p3, :cond_a

    if-eqz v15, :cond_8

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-virtual {v6, v7, v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->applyReturnNullBits(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;J)V

    move-wide/from16 v16, v12

    goto :goto_2

    :cond_9
    move/from16 v18, v0

    :cond_a
    :goto_2
    if-eqz p5, :cond_f

    and-long v0, v2, v12

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    cmp-long v0, v16, v12

    if-eqz v0, :cond_c

    if-eqz v8, :cond_b

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v1

    invoke-virtual {v0, v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalReturnRedefinition(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[[C)V

    goto :goto_5

    :cond_b
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v10, v15}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImplementIncompatibleNullness(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    return-void

    :cond_c
    if-eqz v15, :cond_f

    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_d

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v23, v0

    goto :goto_3

    :cond_d
    const/16 v23, 0x0

    :goto_3
    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v26, 0x0

    sget-object v27, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE_RETURN:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v27}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v8, :cond_e

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v1

    invoke-virtual {v0, v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalReturnRedefinition(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[[C)V

    goto :goto_4

    :cond_e
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v10, v15}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImplementIncompatibleNullness(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    :goto_4
    return-void

    :cond_f
    :goto_5
    if-eqz p5, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v1, :cond_10

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v12, v0

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    if-nez v8, :cond_11

    const/4 v13, 0x0

    goto :goto_7

    :cond_11
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-object v13, v0

    :goto_7
    if-eqz v13, :cond_12

    array-length v0, v13

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    if-eqz v15, :cond_14

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    :cond_13
    :goto_9
    move v5, v0

    goto :goto_a

    :cond_14
    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    array-length v0, v1

    goto :goto_9

    :cond_15
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    array-length v0, v1

    goto :goto_9

    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-lt v4, v5, :cond_19

    if-eqz p5, :cond_18

    if-eqz v15, :cond_18

    if-eqz v8, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v2, :cond_18

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_18

    const/4 v13, 0x0

    :goto_c
    array-length v2, v0

    if-lt v13, v2, :cond_16

    goto :goto_d

    :cond_16
    aget-object v2, v1, v13

    aget-object v16, v0, v13

    const/16 v20, 0x0

    sget-object v21, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v15, v2

    invoke-static/range {v15 .. v21}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v3, v2, v10, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotRedefineTypeArgumentNullity(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    return-void

    :cond_19
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v8, v4

    move/from16 v21, v5

    :cond_1a
    :goto_e
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_1b
    if-nez v13, :cond_1c

    const/4 v3, 0x0

    goto :goto_f

    :cond_1c
    aget-object v0, v13, v4

    move-object v3, v0

    :goto_f
    invoke-direct {v6, v10, v4, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->getParameterNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IZ)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v6, v7, v4, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->getParameterNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IZ)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_24

    if-eqz v2, :cond_20

    if-eqz v18, :cond_20

    invoke-interface {v9, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasNonNullDefaultForParam(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p5, :cond_1d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7, v3, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1d
    if-eqz p9, :cond_1e

    if-eqz v8, :cond_1e

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v0, v0, v4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v0, v4, 0x1

    aget-object v16, p9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 p3, v2

    move-object v2, v3

    move-object/from16 v3, p6

    move/from16 v17, v4

    move-object/from16 v4, p3

    move/from16 v21, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordDeferredInheritedNullness(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    :goto_10
    move/from16 v8, v17

    goto :goto_e

    :cond_1e
    move-object/from16 p3, v2

    move/from16 v17, v4

    move/from16 v21, v5

    if-nez v15, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object v5, v3

    move/from16 v3, v17

    move-object v4, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;)V

    goto :goto_10

    :cond_1f
    move-object v5, v3

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v5, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_10

    :cond_20
    move-object/from16 p3, v2

    move/from16 v21, v5

    move-object v5, v3

    invoke-interface {v9, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasNonNullDefaultForParam(I)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-nez v15, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move v3, v4

    move v8, v4

    move-object v4, v5

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;)V

    goto :goto_11

    :cond_21
    move v8, v4

    move-object/from16 v17, v5

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->recordArgNonNullness18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_11
    move-object/from16 v0, v16

    goto :goto_12

    :cond_22
    const/4 v0, 0x0

    goto :goto_12

    :cond_23
    move v8, v4

    move-object/from16 v17, v5

    goto :goto_12

    :cond_24
    move-object/from16 p3, v2

    move-object/from16 v17, v3

    move v8, v4

    move/from16 v21, v5

    :goto_12
    if-eqz p5, :cond_1a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, p3

    if-ne v2, v1, :cond_25

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v3

    goto :goto_13

    :cond_25
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v3

    :goto_13
    if-eq v2, v1, :cond_28

    if-ne v0, v1, :cond_28

    move-object/from16 v4, v17

    if-eqz v4, :cond_27

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_14

    :cond_26
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v2

    :goto_14
    invoke-virtual {v0, v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalRedefinitionToNonNullParameter(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    goto/16 :goto_e

    :cond_27
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v10, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImplementIncompatibleNullness(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    goto/16 :goto_18

    :cond_28
    move-object/from16 v4, v17

    if-nez v0, :cond_2e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_2a

    if-eqz v4, :cond_29

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parameterLackingNullableAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    goto/16 :goto_e

    :cond_29
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v10, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImplementIncompatibleNullness(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    goto/16 :goto_18

    :cond_2a
    if-ne v2, v1, :cond_2e

    if-eqz v11, :cond_2d

    array-length v0, v11

    const/4 v1, 0x0

    :goto_15
    if-lt v1, v0, :cond_2b

    goto :goto_16

    :cond_2b
    aget-object v2, v11, v1

    iget-object v5, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move/from16 v16, v0

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {v6, v2, v8, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->getParameterNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IZ)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2c

    goto/16 :goto_e

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    goto :goto_15

    :cond_2d
    :goto_16
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parameterLackingNonnullAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    goto/16 :goto_e

    :cond_2e
    if-eqz v15, :cond_1a

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v8

    if-eqz v12, :cond_2f

    aget-object v1, v12, v8

    move-object/from16 v24, v1

    goto :goto_17

    :cond_2f
    const/16 v24, 0x0

    :goto_17
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v22, v1, v8

    const/16 v27, 0x0

    sget-object v28, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v28}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v4, :cond_30

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v4, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalParameterRedefinition(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_e

    :cond_30
    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v10, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImplementIncompatibleNullness(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    :goto_18
    add-int/lit8 v4, v8, 0x1

    move-object/from16 v8, p2

    move/from16 v5, v21

    goto/16 :goto_b
.end method

.method public recordArgNonNullness(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-array p2, p2, [Ljava/lang/Boolean;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    aput-object p5, p1, p3

    if-eqz p4, :cond_2

    iget-object p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_1

    const-wide/high16 p4, 0x100000000000000L

    goto :goto_0

    :cond_1
    const-wide/high16 p4, 0x80000000000000L

    :goto_0
    or-long/2addr p2, p4

    iput-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_2
    return-void
.end method

.method public recordArgNonNullness18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    :goto_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v0, p2

    filled-new-array {p4}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    invoke-virtual {p5, v1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    aput-object p4, v0, p2

    if-eqz p3, :cond_1

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p1, p1, p2

    iput-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    return-void
.end method

.method public recordDeferredInheritedNullness(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V
    .locals 7

    iget-object v0, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->inheritedNonNullness:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eq v0, p4, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->inheritedNonNullness:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->annotationOrigin:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingInheritedNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    const/4 p1, 0x1

    iput-boolean p1, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->complained:Z

    goto :goto_0

    :cond_0
    iput-object p4, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->inheritedNonNullness:Ljava/lang/Boolean;

    iput-object p3, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;->annotationOrigin:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    return-void
.end method
