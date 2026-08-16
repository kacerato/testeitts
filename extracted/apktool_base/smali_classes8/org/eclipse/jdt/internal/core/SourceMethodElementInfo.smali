.class public abstract Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;
.super Lorg/eclipse/jdt/internal/core/AnnotatableInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ISourceMethod;


# instance fields
.field protected argumentNames:[[C

.field protected arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

.field protected exceptionTypes:[[C

.field protected typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-void
.end method


# virtual methods
.method public getArgumentNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->argumentNames:[[C

    return-object v0
.end method

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

.method public getExceptionTypeNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->exceptionTypes:[[C

    return-object v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public abstract getReturnTypeName()[C
.end method

.method public getTypeParameterBounds()[[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v0, v0

    new-array v1, v0, [[[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    aget-object v3, v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    aput-object v3, v1, v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTypeParameterNames()[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract isAnnotationMethod()Z
.end method

.method public abstract isConstructor()Z
.end method

.method public setArgumentNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->argumentNames:[[C

    return-void
.end method

.method public setExceptionTypeNames([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->exceptionTypes:[[C

    return-void
.end method

.method public abstract setReturnType([C)V
.end method
