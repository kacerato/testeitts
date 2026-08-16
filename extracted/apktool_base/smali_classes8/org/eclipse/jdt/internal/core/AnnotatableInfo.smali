.class public Lorg/eclipse/jdt/internal/core/AnnotatableInfo;
.super Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.source "SourceFile"


# instance fields
.field protected annotations:[Lorg/eclipse/jdt/core/IAnnotation;

.field protected nameEnd:I

.field protected nameStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameEnd:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method

.method public getNameSourceEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameEnd:I

    return v0
.end method

.method public getNameSourceStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameStart:I

    return v0
.end method

.method public setNameSourceEnd(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameEnd:I

    return-void
.end method

.method public setNameSourceStart(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->nameStart:I

    return-void
.end method
