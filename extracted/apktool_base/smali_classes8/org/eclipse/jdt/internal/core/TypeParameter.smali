.class public Lorg/eclipse/jdt/internal/core/TypeParameter;
.super Lorg/eclipse/jdt/internal/core/SourceRefElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ITypeParameter;


# static fields
.field static final NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/ITypeParameter;

    sput-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/TypeParameter;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/TypeParameter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBounds()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsSignatures()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/BinaryMember;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->boundsSignatures:[[C

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-lt v4, v1, :cond_4

    return-object v2

    :cond_4
    new-instance v5, Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-static {v6, v3}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/IMember;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/TypeParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x5d

    return v0
.end method

.method public getKey(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    instance-of v2, v1, Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getKey(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/BinaryMember;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/BinaryMember;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getKey(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const-string p1, ":T"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/TypeParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    iget v2, v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->nameEnd:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    return-object v1
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    return-object v0
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getDeclaringMember()Lorg/eclipse/jdt/core/IMember;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object v0

    return-object v0
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
