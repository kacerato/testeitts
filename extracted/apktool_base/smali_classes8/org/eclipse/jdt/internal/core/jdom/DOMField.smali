.class Lorg/eclipse/jdt/internal/core/jdom/DOMField;
.super Lorg/eclipse/jdt/internal/core/jdom/DOMMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMField;


# instance fields
.field protected fInitializer:Ljava/lang/String;

.field protected fInitializerRange:[I

.field protected fType:Ljava/lang/String;

.field protected fTypeRange:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>()V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[IILjava/lang/String;Z)V
    .locals 14

    const/4 v0, -0x1

    .line 9
    filled-new-array {v0, v0}, [I

    move-result-object v6

    filled-new-array {v0, v0}, [I

    move-result-object v8

    filled-new-array {v0, v0}, [I

    move-result-object v9

    const/4 v11, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    move/from16 v13, p7

    invoke-direct/range {v1 .. v13}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;-><init>([C[ILjava/lang/String;[I[II[I[ILjava/lang/String;Z[IZ)V

    const/16 v0, 0x800

    const/4 v1, 0x0

    move-object v2, p0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I[II[I[ILjava/lang/String;Z[IZ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;-><init>([C[ILjava/lang/String;[I[II[I)V

    .line 3
    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    .line 4
    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    .line 5
    invoke-virtual {p0, p10}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setHasInitializer(Z)V

    .line 6
    iput-object p11, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    .line 7
    invoke-virtual {p0, p12}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setIsVariableDeclarator(Z)V

    const/16 p1, 0x800

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method


# virtual methods
.method public appendMemberBodyContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public appendMemberDeclarationContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v4, v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getTypeContents()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    aget v4, v4, v2

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v6, v6, v1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v5, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNameContents()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasInitializer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    aget v0, v0, v1

    if-gez v0, :cond_1

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v3, v3, v2

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v4, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getInitializer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    aget v1, v0, v1

    if-gez v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v1, v1, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    aget v0, v0, v2

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v2, v4, v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_1
    return-void
.end method

.method public appendMemberHeaderFragment(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->appendMemberHeaderFragment(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

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

.method public becomeDetailed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isDetailed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasMultipleVariableDeclarators()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->becomeDetailed()V

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getFirstFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getLastFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createFields([C)[Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object v2, p0

    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_2

    goto :goto_3

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_cannotDetail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasMultipleVariableDeclarators()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getSingleVariableDeclaratorContents()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createField(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object v0

    return-object v0
.end method

.method public expand()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasMultipleVariableDeclarators()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getFirstFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;-><init>(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->localizeContents()V

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->localizeContents()V

    :cond_4
    return-void
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasMultipleVariableDeclarators()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createField(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getSingleVariableDeclaratorContents()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/jdom/IDOMFactory;->createField(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getFirstFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getFirstFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getInitializer()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasInitializer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

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

.method public getJavaElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_illegalParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasMultipleVariableDeclarators()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getMemberDeclarationStartPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNodeType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getSingleVariableDeclaratorContents()[C
    .locals 8

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getFirstFieldDeclaration()Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isDetailed()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->appendMemberHeaderFragment(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    aget v2, v2, v4

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v6, v6, v3

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v0, v1, v5, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    aget v5, v5, v3

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v1, v1, v3

    sub-int/2addr v1, v5

    invoke-virtual {v0, v2, v5, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->hasInitializer()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v5, 0x3b

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    aget v1, v1, v3

    if-gez v1, :cond_2

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    aget v6, v6, v4

    add-int/lit8 v7, v6, 0x1

    sub-int/2addr v1, v6

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v7, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->getInitializer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeContents()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isTypeAltered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public hasInitializer()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public hasMultipleVariableDeclarators()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public insertSibling(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->expand()V

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->insertSibling(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    return-void
.end method

.method public isTypeAltered()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isVariableDeclarator()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;-><init>()V

    return-object v0
.end method

.method public normalizeEndPosition(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz p2, :cond_1

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/jdom/DOMCompilationUnit;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->getCloseBodyPosition()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;->getLineStart(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    instance-of p1, p2, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    aget p1, p1, v1

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    :goto_1
    return-void
.end method

.method public normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->isVariableDeclarator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setStartPosition(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    :goto_0
    return-void
.end method

.method public offset(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->offset(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public remove()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->expand()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->remove()V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->expand()V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->expand()V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->setFlags(I)V

    return-void
.end method

.method public setHasInitializer(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setInitializer(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setHasInitializer(Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    return-void
.end method

.method public setInitializerRange(II)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public setIsVariableDeclarator(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setTypeAltered(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->becomeDetailed()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->expand()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->setTypeAltered(Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setNameAltered(Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullType:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTypeAltered(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMMember;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializer:Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fInitializerRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fType:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMField;->fTypeRange:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIELD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
