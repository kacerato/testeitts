.class public Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# instance fields
.field public intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private javaLangObject:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field length:I


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    .line 8
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 9
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->javaLangObject:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->javaLangObject:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 3
    array-length v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->javaLangObject:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canBeInstantiated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)V

    return-object p1
.end method

.method public collectInferenceVariables(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constantPoolName()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    array-length v2, v0

    if-le v2, v3, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0
.end method

.method public debugName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    .line 5
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v3

    const v5, 0x7fffffff

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v2, v0, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    move v2, v5

    :goto_1
    if-le v2, v0, :cond_2

    if-ge v2, v5, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getInterfaceAbstractContracts(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length p3, p3

    new-array v0, p3, [[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p3, :cond_1

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move p1, v1

    move p2, p1

    :goto_1
    if-lt p1, p3, :cond_0

    return-object v4

    :cond_0
    aget-object v2, v0, p1

    array-length v3, v2

    invoke-static {v2, v1, v4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getInterfaceAbstractContracts(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    aput-object v4, v0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasTypeBit(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isBoxedPrimitiveType()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoxedPrimitiveType()Z

    move-result v0

    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 9

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x2004

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v2

    if-ne v2, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    const v2, 0x8004

    if-ne v0, v2, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    array-length v3, v0

    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_3

    return v1

    :cond_3
    aget-object v5, v0, v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v7, v6

    move p1, v2

    :goto_2
    if-lt p1, v7, :cond_4

    return v2

    :cond_4
    aget-object v8, v6, p1

    invoke-virtual {v8, v5, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v0, v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public isIntersectionType18()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 8

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    if-le v3, v1, :cond_6

    array-length v3, v0

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    move v5, v3

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v0, p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, p1, v0

    move p1, v2

    :goto_1
    if-lt p1, v3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, v4, p1

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    aput-object v6, v4, p1

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_4

    return v1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    move p2, v2

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v0

    if-lt p2, v3, :cond_7

    return v2

    :cond_7
    aget-object v0, v0, p2

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method public kind()I
    .locals 1

    const v0, 0x8004

    return v0
.end method

.method public mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    move v1, p2

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    return p2

    :cond_1
    aget-object v2, v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public qualifiedSourceName()[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->qualifiedSourceName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readableName()[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shortReadableName()[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sourceName()[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->length:I

    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->javaLangObject:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->debugName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTagBits()J
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v0

    return-wide v0

    :cond_0
    aget-object v3, v0, v2

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v6

    or-long v3, v4, v6

    iput-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    .line 5
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method
