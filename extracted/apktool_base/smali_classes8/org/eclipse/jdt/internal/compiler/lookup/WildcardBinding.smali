.class public Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# instance fields
.field public bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public boundKind:I

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field genericSignature:[C

.field public genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field inRecursiveFunction:Z

.field public otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public rank:I

.field superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field typeVariable:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const p2, 0x40000001    # 2.0000002f

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->initialize(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p1, p0, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_0
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p3, p0, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_1
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 p3, 0x1000000

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const/high16 p1, 0x8000000

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    return-void
.end method


# virtual methods
.method public acceptsNonNullDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public additionalBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :catch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public annotatedDebugName()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_5

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    :goto_2
    if-lt v2, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    array-length v0, v0

    :goto_0
    move v3, v2

    :goto_1
    if-lt v3, v0, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public boundKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    return v0
.end method

.method public canBeInstantiated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public collectMissingTypes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq p2, v0, :cond_2b

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const v1, 0x10004

    if-ne v0, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    :cond_2
    const/16 v0, 0x2004

    const/16 v1, 0x204

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_1c

    if-eq p4, v3, :cond_11

    if-eq p4, v2, :cond_3

    goto/16 :goto_b

    :cond_3
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p4, v3, :cond_9

    if-eq p4, v2, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_5

    goto/16 :goto_b

    :cond_5
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p2, v2, :cond_6

    goto/16 :goto_b

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_7

    move v5, v4

    goto :goto_0

    :cond_7
    array-length p2, p2

    move v5, p2

    :goto_0
    if-lt v4, v5, :cond_8

    goto/16 :goto_b

    :cond_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v4

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_d

    if-eq p4, v0, :cond_a

    goto/16 :goto_b

    :cond_a
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_b

    move v0, v4

    goto :goto_1

    :cond_b
    array-length p2, p2

    move v0, p2

    :goto_1
    if-lt v4, v0, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v4

    invoke-virtual {p2, p1, v1, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_d
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p2, v3, :cond_e

    goto/16 :goto_b

    :cond_e
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_f

    move v5, v4

    goto :goto_2

    :cond_f
    array-length p2, p2

    move v5, p2

    :goto_2
    if-lt v4, v5, :cond_10

    goto/16 :goto_b

    :cond_10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v4

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_11
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p4, v3, :cond_17

    if-eq p4, v2, :cond_12

    goto/16 :goto_b

    :cond_12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_13

    if-eq p4, v0, :cond_29

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p4, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    goto/16 :goto_b

    :cond_13
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p2, v2, :cond_14

    goto/16 :goto_b

    :cond_14
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_15

    move v5, v4

    goto :goto_3

    :cond_15
    array-length p2, p2

    move v5, p2

    :goto_3
    if-lt v4, v5, :cond_16

    goto/16 :goto_b

    :cond_16
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v4

    invoke-virtual {p2, p1, v0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_17
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_1a

    if-eq p4, v0, :cond_18

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p4, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    goto/16 :goto_b

    :cond_18
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p2

    :goto_4
    if-lt v4, v0, :cond_19

    goto/16 :goto_b

    :cond_19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v4

    invoke-virtual {p2, p1, v1, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1a
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p4, v3, :cond_1b

    goto/16 :goto_b

    :cond_1b
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p4, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    goto/16 :goto_b

    :cond_1c
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p4, v3, :cond_22

    if-eq p4, v2, :cond_1d

    goto/16 :goto_b

    :cond_1d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_1e

    goto/16 :goto_b

    :cond_1e
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p2, v2, :cond_1f

    goto/16 :goto_b

    :cond_1f
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_20

    move v2, v4

    goto :goto_5

    :cond_20
    array-length p2, p2

    move v2, p2

    :goto_5
    move p2, v4

    :goto_6
    if-lt p2, v2, :cond_21

    goto :goto_b

    :cond_21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, p2

    invoke-virtual {v0, p1, v1, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_22
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    if-eq p4, v1, :cond_26

    if-eq p4, v0, :cond_23

    goto :goto_b

    :cond_23
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v0, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_24

    move v0, v4

    goto :goto_7

    :cond_24
    array-length p2, p2

    move v0, p2

    :goto_7
    move p2, v4

    :goto_8
    if-lt p2, v0, :cond_25

    goto :goto_b

    :cond_25
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, p2

    invoke-virtual {v1, p1, v2, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_26
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq p4, v3, :cond_27

    goto :goto_b

    :cond_27
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p4, p1, v0, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget-object p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p4, :cond_28

    move p4, v4

    goto :goto_9

    :cond_28
    array-length p4, p4

    :goto_9
    move v0, v4

    :goto_a
    if-lt v0, p4, :cond_2a

    :cond_29
    :goto_b
    return-void

    :cond_2a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2b
    :goto_c
    return-void
.end method

.method public computeUniqueKey(Z)[C
    .locals 4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_MINUS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_PLUS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_STAR:[C

    :goto_0
    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object p1

    return-object p1
.end method

.method public constantPoolName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0
.end method

.method public debugName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public determineNullBitsFromDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const-wide/high16 v4, 0x80000000000000L

    const-wide/high16 v6, 0x100000000000000L

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_5

    array-length v10, v2

    move-wide v12, v8

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v10, :cond_0

    goto :goto_2

    :cond_0
    aget-object v14, v2, v11

    if-eqz v14, :cond_4

    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v3, 0x40

    invoke-virtual {v15, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    and-long v14, v12, v6

    cmp-long v3, v14, v8

    if-nez v3, :cond_1

    or-long/2addr v12, v4

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_1

    :cond_2
    iget-object v3, v14, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v14, 0x20

    invoke-virtual {v3, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    and-long v14, v12, v4

    cmp-long v3, v14, v8

    if-nez v3, :cond_3

    or-long/2addr v12, v6

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-wide v12, v8

    :goto_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v10, 0x180000000000000L

    and-long/2addr v10, v2

    cmp-long v14, v10, v8

    if-eqz v14, :cond_e

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_e

    cmp-long v2, v12, v8

    if-nez v2, :cond_6

    goto/16 :goto_7

    :cond_6
    if-eqz v1, :cond_e

    and-long v2, v12, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_e

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v2, v12, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsOnBounds(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    goto :goto_6

    :cond_8
    and-long/2addr v2, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_b

    cmp-long v2, v12, v8

    if-nez v2, :cond_9

    move-wide v4, v6

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_b

    and-long v2, v12, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_b

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v2, v12, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotationsOnBounds(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    :cond_b
    :goto_3
    move-wide v4, v12

    :goto_4
    cmp-long v1, v4, v8

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_f

    array-length v1, v1

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_c

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v3

    iget-wide v10, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v10, v6

    cmp-long v2, v10, v8

    if-eqz v2, :cond_d

    move-wide v4, v6

    goto :goto_7

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    move-wide v4, v12

    :cond_f
    :goto_7
    return-wide v4
.end method

.method public enterRecursiveFunction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v1, :cond_3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->determineNullBitsFromDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    move-wide p1, v2

    :cond_0
    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, -0x180000000000001L

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    return-void
.end method

.method public exitRecursiveFunction()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return-void
.end method

.method public genericTypeSignature()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericSignature:[C

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_MINUS:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericSignature:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_PLUS:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericSignature:[C

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_STAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericSignature:[C

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericSignature:[C

    return-object v0
.end method

.method public getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->isIntersectionType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    return-object v1
.end method

.method public hasTypeBit(I)Z
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const v1, -0x8000001

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v3, v3, 0x713

    or-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hashCode()I

    move-result v0

    return v0
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 7

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_0
    if-eqz p2, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x2000000020100880L    # 1.491668324408768E-154

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    if-eqz p3, :cond_3

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v0, p3, p2

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v5, 0x2000000000100800L

    and-long/2addr v3, v5

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public isHierarchyConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIntersectionType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProperType(Z)Z
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProperType(Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_5

    array-length v2, v2

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProperType(Z)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_4

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v1

    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public isUnboundWildcard()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kind()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    const/16 v0, 0x204

    goto :goto_0

    :cond_0
    const/16 v0, 0x2004

    :goto_0
    return v0
.end method

.method public mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :cond_1
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_5

    array-length p2, p2

    move v3, v1

    :goto_0
    if-lt v3, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    return v1

    :goto_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array p2, p1, [C

    invoke-virtual {v0, v2, p1, p2, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p2
.end method

.method public rank()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    return v0
.end method

.method public readableName()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v3, v1, [C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v3

    :cond_2
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    return-object v0
.end method

.method public resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 12

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/32 v2, -0x1000001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const-wide/high16 v3, 0x2000000000000000L

    const-wide/16 v5, 0x800

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v5

    or-long/2addr v9, v3

    or-long/2addr v7, v9

    iput-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    array-length v0, v0

    :goto_0
    if-lt v2, v0, :cond_5

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)V

    :cond_4
    return-object p0

    :cond_5
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, v8, v2

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v10, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v10, v5

    or-long/2addr v10, v3

    or-long v7, v8, v10

    iput-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)V

    :cond_1
    return-void
.end method

.method public shortReadableName()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v3, v1, [C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v3

    :cond_2
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    return-object v0
.end method

.method public signature()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public sourceName()[C
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    return-object v0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    move v2, v1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v2, :cond_1

    new-array v3, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_3

    :cond_2
    move-object v7, v3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v0

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v0

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v7, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v1, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :cond_4
    aput-object v5, v3, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_6

    const/4 v1, 0x1

    :cond_6
    or-int p1, v2, v1

    if-eqz p1, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p0
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v0

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v1, v0, v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v1

    array-length v0, v0

    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-lt v2, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int v4, v3, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v2

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v3, p1, :cond_1

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v0, v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_4

    array-length v3, v3

    :goto_1
    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v4, v2

    if-ne v5, p1, :cond_3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    aput-object v0, v4, v2

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->initialize(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v6, v1

    move v0, v2

    goto :goto_1

    :cond_2
    array-length v0, v0

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v6, v3

    :goto_1
    if-lt v2, v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public updateTagBits()J
    .locals 7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

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
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    array-length v1, v1

    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    goto :goto_4

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->inRecursiveFunction:Z

    throw v1

    :cond_3
    :goto_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v0

    return-object v0
.end method
