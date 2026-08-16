.class public Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# instance fields
.field private enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private staticFactoryFor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 8

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit8 v2, v0, 0x8

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_STATIC_FACTORY:[C

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->staticFactoryFor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method


# virtual methods
.method public applyTypeArgumentsOnConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;
    .locals 8

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->staticFactoryFor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v2, v4, :cond_3

    array-length p1, p2

    if-gtz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v6, 0x0

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v3

    :goto_3
    return-object v3

    :cond_3
    instance-of v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-eqz v2, :cond_4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->staticFactoryFor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v3, v4, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Type doesn\'t have its own method?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConstructor()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->staticFactoryFor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method
