.class public Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;
.super Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;
.source "SourceFile"


# instance fields
.field public bounds:[[C

.field public boundsSignatures:[[C

.field public nameEnd:I

.field public nameStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameEnd:I

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
