.class Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field protected fHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([C[I)V
    .locals 2

    const/4 v0, -0x1

    .line 3
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;-><init>([C[ILjava/lang/String;[I)V

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendFragmentedContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContentsOfChildren(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    return-void
.end method

.method public canHaveChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

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

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/jdom/IDOMType;

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/jdom/IDOMMember;->getFlags()I

    move-result v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Flags;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/jdom/IDOMType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initalizeHeader()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFirstChild()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->setHeader(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;-><init>()V

    return-object v0
.end method

.method public normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->initalizeHeader()V

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->fHeader:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COMPILATION_UNIT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
