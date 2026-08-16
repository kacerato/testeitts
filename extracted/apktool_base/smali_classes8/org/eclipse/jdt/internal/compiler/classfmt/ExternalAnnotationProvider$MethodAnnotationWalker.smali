.class Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$IMethodAnnotationWalker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodAnnotationWalker"
.end annotation


# instance fields
.field prevParamStart:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method


# virtual methods
.method public getParameterCount()I
    .locals 4

    const/16 v0, 0x28

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-char v2, v2, v0

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->typeEnd(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Methods have no fields"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x28

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->prevParamStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    return-object p0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->prevParamStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->typeEnd(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->prevParamStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    return-object p0
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    const/16 v0, 0x29

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    return-object p0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object v0
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    const/4 v0, 0x0

    aget-char v0, v2, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    if-nez v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CII[ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public typeEnd(I)I
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v0, v0, p1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapperWithStart(I)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->skipNullAnnotation(I)I

    move-result p1

    goto :goto_0
.end method
