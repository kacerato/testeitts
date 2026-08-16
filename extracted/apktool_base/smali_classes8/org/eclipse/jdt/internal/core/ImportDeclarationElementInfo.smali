.class public Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;
.super Lorg/eclipse/jdt/internal/core/MemberElementInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;


# instance fields
.field protected nameEnd:I

.field protected nameStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameEnd:I

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

    iget v1, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getNameSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->getNameSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNameSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->getNameSourceStart()I

    move-result v0

    return v0
.end method

.method public setNameSourceEnd(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameEnd:I

    return-void
.end method

.method public setNameSourceStart(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/ImportDeclarationElementInfo;->nameStart:I

    return-void
.end method
