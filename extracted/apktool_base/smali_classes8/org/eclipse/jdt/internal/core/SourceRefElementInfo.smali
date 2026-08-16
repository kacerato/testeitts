.class Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;
.super Lorg/eclipse/jdt/internal/core/JavaElementInfo;
.source "SourceFile"


# instance fields
.field protected sourceRangeEnd:I

.field protected sourceRangeStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeclarationSourceEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeEnd:I

    return v0
.end method

.method public getDeclarationSourceStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeStart:I

    return v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method

.method public setSourceRangeEnd(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeEnd:I

    return-void
.end method

.method public setSourceRangeStart(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->sourceRangeStart:I

    return-void
.end method
