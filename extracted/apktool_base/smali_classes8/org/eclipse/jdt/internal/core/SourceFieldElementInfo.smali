.class public Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;
.super Lorg/eclipse/jdt/internal/core/AnnotatableInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceField;


# instance fields
.field protected initializationSource:[C

.field protected typeName:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public getInitializationSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->initializationSource:[C

    return-object v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->typeName:[C

    return-object v0
.end method

.method public getTypeSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->typeName:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTypeName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->typeName:[C

    return-void
.end method
