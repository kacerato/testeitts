.class public Lorg/eclipse/jdt/internal/core/SourceMethodInfo;
.super Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;
.source "SourceFile"


# instance fields
.field protected returnType:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getReturnTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->returnType:[C

    return-object v0
.end method

.method public isAnnotationMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setReturnType([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->returnType:[C

    return-void
.end method
