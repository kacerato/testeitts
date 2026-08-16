.class public Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;


# instance fields
.field protected final matches:J

.field protected final pathPtr:I

.field protected final typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V
    .locals 3

    .line 1
    array-length v0, p1

    rsub-int/lit8 v0, v0, 0x40

    const-wide/16 v1, -0x1

    ushr-long v0, v1, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;J)V

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    .line 5
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    .line 6
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    return-void
.end method


# virtual methods
.method public getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length p1, p1

    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, p1, :cond_2

    if-nez v4, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p1

    :cond_0
    if-ge v4, p1, :cond_1

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-static {p2, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p1

    :cond_1
    return-object p2

    :cond_2
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v6

    array-length v6, v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    if-le v6, v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v5

    aput-object v5, p2, v4

    move v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    shl-long/2addr v0, v5

    goto :goto_0
.end method

.method public restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    if-ne v0, p3, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V

    return-object v1

    :cond_2
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTarget(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_0
    if-lt v6, v2, :cond_1

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_2

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getMethodFormalParameterIndex()I

    move-result v7

    int-to-short v7, v7

    if-eq v7, p1, :cond_3

    :cond_2
    not-long v7, v4

    and-long/2addr v0, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    goto :goto_0
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTarget(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toNextDetail(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toNextDetail(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v2, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget v6, v6, v7

    if-eq v6, p1, :cond_3

    :cond_2
    not-long v6, v3

    and-long/2addr v0, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    shl-long/2addr v3, v6

    goto :goto_0
.end method

.method public toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toNextDetail(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTarget(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length p2, p2

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    move v5, v2

    :goto_0
    if-lt v5, p2, :cond_1

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getSupertypeIndex()I

    move-result v6

    int-to-short v6, v6

    if-eq v6, p1, :cond_3

    :cond_2
    not-long v6, v3

    and-long/2addr v0, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    shl-long/2addr v3, v6

    goto :goto_0
.end method

.method public toTarget(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_0
    if-lt v6, v2, :cond_1

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v7

    if-eq v7, p1, :cond_2

    not-long v7, v4

    and-long/2addr v0, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    goto :goto_0
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_0
    if-lt v6, v2, :cond_1

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_2

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getThrowsTypeIndex()I

    move-result v7

    if-eq v7, p1, :cond_3

    :cond_2
    not-long v7, v4

    and-long/2addr v0, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    goto :goto_0
.end method

.method public toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v2, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget v8, v6, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    if-eq v6, p1, :cond_3

    :cond_2
    not-long v6, v3

    and-long/2addr v0, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    shl-long/2addr v3, v6

    goto :goto_0
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_0
    if-lt v6, v2, :cond_1

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getBoundIndex()I

    move-result v7

    int-to-short v7, v7

    if-eq v7, p1, :cond_2

    not-long v7, v4

    and-long/2addr v0, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    goto :goto_0
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    const/4 v2, 0x1

    xor-int/2addr p1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v3, v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    move v7, v4

    :goto_0
    if-lt v7, v3, :cond_1

    invoke-virtual {p0, v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v8, v8, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v8

    if-eq v8, p2, :cond_3

    :cond_2
    not-long v8, v5

    and-long/2addr v0, v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    shl-long/2addr v5, v2

    goto :goto_0
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 9

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    if-eqz p1, :cond_1

    const/16 p1, 0x11

    goto :goto_0

    :cond_1
    const/16 p1, 0x12

    :goto_0
    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_1
    if-lt v6, v2, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v8

    if-ne v8, p1, :cond_3

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v7

    int-to-short v7, v7

    if-eq v7, p2, :cond_4

    :cond_3
    not-long v7, v4

    and-long/2addr v0, v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    goto :goto_1
.end method

.method public toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    array-length v2, v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-lt v5, v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    add-int/2addr v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    aget-object v7, v7, v5

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    array-length v9, v7

    if-ge v8, v9, :cond_2

    aget v7, v7, v8

    if-eq v7, v6, :cond_3

    :cond_2
    not-long v6, v3

    and-long/2addr v0, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    shl-long/2addr v3, v6

    goto :goto_0
.end method
