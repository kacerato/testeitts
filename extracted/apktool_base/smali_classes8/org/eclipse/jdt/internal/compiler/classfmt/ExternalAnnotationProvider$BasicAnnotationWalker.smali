.class abstract Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BasicAnnotationWalker"
.end annotation


# instance fields
.field currentTypeBound:I

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field pos:I

.field prevTypeArgStart:I

.field source:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field wrapper:Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->initAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method


# virtual methods
.method public getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 4

    const/4 p1, 0x0

    const/4 p2, 0x1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_3

    aget-char v2, v1, v0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x54

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    aget-char v0, v1, v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NONNULL_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object v0, p2, p1

    return-object p2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NULLABLE_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object v0, p2, p1

    return-object p2

    :cond_3
    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p1
.end method

.method public skipNullAnnotation(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return p1

    :cond_0
    aget-char v0, v0, p1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->skipNullAnnotation(I)I

    move-result v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object v0
.end method

.method public toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object v0
.end method

.method public toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    const/16 v1, 0x3c

    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->prevTypeArgStart:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->prevTypeArgStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    aget-char v0, v0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->skipNullAnnotation(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapperWithStart(I)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->skipNullAnnotation(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->prevTypeArgStart:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->skipNullAnnotation(I)I

    move-result v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v1
.end method

.method public wrapperWithStart(I)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapper:Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->source:[C

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapper:Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;->wrapper:Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 p1, -0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    return-object v0
.end method
