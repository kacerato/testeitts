.class public final Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.source "SourceFile"


# static fields
.field public static final ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;


# instance fields
.field private clone:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field constantPoolName:[C

.field public dimensions:I

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field genericTypeSignature:[C

.field public leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public nullTagBitsPerDimension:[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LENGTH:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v4, 0x0

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/16 v3, 0x11

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    sput-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;-><init>()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p2, p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_0

    :cond_0
    iget-wide p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x2000000060000880L    # 1.491668679702862E-154

    and-long/2addr p2, v2

    or-long/2addr p2, v0

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :goto_0
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v0, 0x180000000000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    aput-wide p1, v0, p3

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    return-void
.end method

.method public static isArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->clone:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public acceptsNonNullDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public annotatedDebugName()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-lt v3, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    :goto_2
    const-string v5, "[]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    return-object v0
.end method

.method public collectInferenceVariables(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq p2, v0, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const v1, 0x10004

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public computeUniqueKey(Z)[C
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    new-array v1, v0, [C

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0x5b

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public constantPoolName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    new-array v1, v0, [C

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->constantPoolName:[C

    return-object v0

    :cond_1
    const/16 v2, 0x5b

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public debugName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public dimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    return v0
.end method

.method public downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    array-length v4, v0

    :goto_0
    move v5, v3

    :goto_1
    if-lt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v6, v0, v5

    if-nez v6, :cond_3

    add-int/lit8 v2, v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public genericTypeSignature()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->genericTypeSignature:[C

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    new-array v1, v0, [C

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->genericTypeSignature:[C

    goto :goto_1

    :cond_0
    const/16 v2, 0x5b

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->genericTypeSignature:[C

    return-object v0
.end method

.method public getCloneMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->clone:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean p1, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_2
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v3, 0x100000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_3
    :goto_1
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long p1, v1, v5

    if-eqz p1, :cond_4

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->clone:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 5

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x44

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/16 v2, 0x84

    if-eq v0, v2, :cond_8

    const/16 v2, 0x204

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2004

    if-eq v0, v2, :cond_7

    const v2, 0x8004

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    move p1, v3

    :goto_0
    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    aget-object v4, v0, p1

    invoke-virtual {p0, v4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1

    :cond_6
    return v3

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_8
    return v3

    :cond_9
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_a
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-ne v0, v2, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_b
    if-ge v0, v2, :cond_c

    return v3

    :cond_c
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p1, v1, :cond_d

    const/16 p2, 0x24

    if-eq p1, p2, :cond_d

    const/16 p2, 0x25

    if-eq p1, p2, :cond_d

    return v3

    :cond_d
    return v1
.end method

.method public isProperType(Z)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    return p1
.end method

.method public isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z
    .locals 5

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x44

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/16 v2, 0x84

    if-eq v0, v2, :cond_6

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_4

    const v2, 0x8004

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    move p1, v3

    :goto_0
    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    aget-object v4, v0, p1

    invoke-virtual {p0, v4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p1

    return p1

    :cond_6
    return v3

    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-ne v2, v4, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result p1

    return p1

    :cond_9
    if-ge v2, v4, :cond_a

    return v3

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p1, v1, :cond_b

    const/16 p2, 0x24

    if-eq p1, p2, :cond_b

    const/16 p2, 0x25

    if-eq p1, p2, :cond_b

    return v3

    :cond_b
    return v1
.end method

.method public kind()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method

.method public leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result p1

    return p1
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->shortReadableName()[C

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->readableName()[C

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    new-array v5, v5, [[C

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-lt v7, v8, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    invoke-static {v1, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    aget-wide v9, v8, v7

    const-wide/high16 v11, 0x180000000000000L

    and-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    const/16 v11, 0x5d

    const/16 v12, 0x5b

    if-eqz v8, :cond_5

    const-wide/high16 v15, 0x100000000000000L

    and-long v8, v9, v15

    cmp-long v8, v8, v13

    if-eqz v8, :cond_3

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationName:[[C

    goto :goto_2

    :cond_3
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationName:[[C

    :goto_2
    if-eqz v2, :cond_4

    array-length v9, v8

    sub-int/2addr v9, v4

    aget-object v8, v8, v9

    goto :goto_3

    :cond_4
    const/16 v9, 0x2e

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    :goto_3
    array-length v9, v8

    add-int/lit8 v9, v9, 0x3

    new-array v9, v9, [C

    aput-object v9, v5, v7

    const/16 v10, 0x40

    aput-char v10, v9, v6

    array-length v10, v8

    invoke-static {v8, v6, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v9, v5, v7

    array-length v10, v8

    add-int/2addr v10, v4

    aput-char v12, v9, v10

    array-length v8, v8

    add-int/2addr v8, v3

    aput-char v11, v9, v8

    goto :goto_4

    :cond_5
    new-array v8, v3, [C

    fill-array-data v8, :array_0

    aput-object v8, v5, v7

    :goto_4
    add-int/2addr v7, v4

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x5bs
        0x5ds
    .end array-data
.end method

.method public problemId()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    return v0
.end method

.method public qualifiedSourceName()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5d

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public readableName()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5d

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 11

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-nez p2, :cond_1

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [J

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    :cond_1
    array-length p2, p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move v6, v3

    move-wide v4, v1

    :goto_0
    if-lt v3, p2, :cond_2

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    aget-wide v0, v1, v0

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_2

    :cond_2
    aget-object v7, p1, v3

    if-eqz v7, :cond_4

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v8

    const-wide/32 v9, 0x100000

    if-eqz v8, :cond_3

    const-wide/high16 v7, 0x80000000000000L

    or-long/2addr v4, v7

    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v7, v9

    iput-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    :cond_3
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-wide/high16 v7, 0x100000000000000L

    or-long/2addr v4, v7

    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v7, v9

    iput-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    :cond_4
    cmp-long v7, v4, v1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    aput-wide v4, v7, v6

    move-wide v4, v1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public shortReadableName()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5d

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public sourceName()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5d

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v0, p1, :cond_1

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq p1, p2, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_0
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x2000000060000080L

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->debugName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULL TYPE ARRAY"

    :goto_0
    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public updateTagBits()J
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v3

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->updateTagBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    return-object v0
.end method
