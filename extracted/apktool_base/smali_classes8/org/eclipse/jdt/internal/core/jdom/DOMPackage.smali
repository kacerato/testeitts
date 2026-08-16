.class Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMPackage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>()V

    const/16 v0, 0x800

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>([C[ILjava/lang/String;[I)V

    const/16 p1, 0x800

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>([C[ILjava/lang/String;[I)V

    const/16 p1, 0x800

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method


# virtual methods
.method public appendFragmentedContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package "

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v1, v3, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    return-void
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createPackage(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMPackage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMPackage;-><init>()V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PACKAGE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
