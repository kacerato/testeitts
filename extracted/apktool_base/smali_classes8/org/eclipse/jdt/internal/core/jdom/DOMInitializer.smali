.class Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMInitializer;


# instance fields
.field protected fBody:Ljava/lang/String;

.field protected fBodyRange:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>()V

    return-void
.end method

.method public constructor <init>([C[II)V
    .locals 8

    const/4 v0, -0x1

    .line 8
    filled-new-array {v0, v0}, [I

    move-result-object v4

    filled-new-array {v0, v0}, [I

    move-result-object v6

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;-><init>([C[I[II[II)V

    const/16 p1, 0x800

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[I[II[II)V
    .locals 9

    const/4 v0, -0x1

    .line 2
    filled-new-array {v0, v0}, [I

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>([C[ILjava/lang/String;[I[II[I)V

    const/4 p1, 0x2

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    const/4 p3, 0x0

    .line 4
    aput p6, p1, p3

    const/4 p3, 0x1

    .line 5
    aget p2, p2, p3

    aput p2, p1, p3

    .line 6
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasBody(Z)V

    const/16 p1, 0x800

    .line 7
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method


# virtual methods
.method public appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "{}"

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    return-void
.end method

.method public appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public appendSimpleContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v2, v3, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMInitializer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getPreviousNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getPreviousNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMemberDeclarationStartPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public isSignatureEqual(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;-><init>()V

    return-object v0
.end method

.method public offset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->offset(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBody:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setHasBody(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBody:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBody:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMInitializer;->fBodyRange:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "INITIALIZER"

    return-object v0
.end method
