.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeParametersAnnotationWalker"
.end annotation


# instance fields
.field currentRank:I

.field rankStarts:[I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CII[ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 5

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {p0, p1, p2, p3, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->currentRank:I

    if-eqz p5, :cond_0

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->rankStarts:[I

    goto :goto_2

    :cond_0
    array-length p1, p2

    new-array p2, p1, [I

    const/4 p4, 0x0

    const/4 p5, 0x1

    move p6, p4

    move v1, p6

    move v0, p5

    :goto_0
    if-lt p3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v3, v2, p3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    aput p3, p2, v1

    move v1, v0

    move v0, p4

    goto :goto_5

    :pswitch_1
    add-int/lit8 p6, p6, -0x1

    if-gez p6, :cond_8

    :goto_1
    new-array p1, v1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->rankStarts:[I

    invoke-static {p2, p4, p1, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void

    :pswitch_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    :pswitch_3
    if-nez p6, :cond_8

    add-int/lit8 v3, p3, 0x1

    if-ge v3, p1, :cond_8

    aget-char v2, v2, v3

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_8

    move v0, p5

    goto :goto_5

    :pswitch_4
    if-nez p6, :cond_2

    move v0, p5

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v2, v2, p3

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2

    :cond_3
    if-ge p3, p1, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v2, v2, p3

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_7

    move v2, p6

    :goto_3
    if-ge p3, p1, :cond_7

    if-ne v2, p6, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v3, v3, p3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v3, v3, p3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 p3, p3, -0x1

    :cond_8
    :goto_5
    add-int/2addr p3, p5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    array-length v4, v3

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_2

    aget-char v2, v3, v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NONNULL_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    new-array p2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object p1, p2, v0

    return-object p2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NULLABLE_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    new-array p2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object p1, p2, v0

    return-object p2

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot navigate to fields"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot navigate to method parameter"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot navigate to method return"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot navigate to throws"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->currentTypeBound:I

    :goto_0
    const/16 v2, 0x3a

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    invoke-static {v2, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->currentTypeBound:I

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapperWithStart(I)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->currentRank:I

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->rankStarts:[I

    array-length p1, v5

    if-ge p2, p1, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget v3, v5, p2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CII[ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 7

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->rankStarts:[I

    aget v3, v5, p2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CII[ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p1
.end method

.method public bridge synthetic toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method
