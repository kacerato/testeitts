.class public abstract Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMNode;


# static fields
.field protected static final MASK_DETAILED_SOURCE_INDEXES:I = 0x800

.field protected static final MASK_FIELD_HAS_INITIALIZER:I = 0x1

.field protected static final MASK_FIELD_IS_VARIABLE_DECLARATOR:I = 0x2

.field protected static final MASK_FIELD_TYPE_ALTERED:I = 0x4

.field protected static final MASK_HAS_BODY:I = 0x10

.field protected static final MASK_HAS_COMMENT:I = 0x20

.field protected static final MASK_IS_CONSTRUCTOR:I = 0x40

.field protected static final MASK_NAME_ALTERED:I = 0x8

.field protected static final MASK_RETURN_TYPE_ALTERED:I = 0x400

.field protected static final MASK_TYPE_HAS_INTERFACES:I = 0x200

.field protected static final MASK_TYPE_HAS_SUPERCLASS:I = 0x100

.field protected static final MASK_TYPE_IS_CLASS:I = 0x80


# instance fields
.field protected fDocument:[C

.field protected fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fInsertionPosition:I

.field protected fIsFragmented:Z

.field protected fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fName:Ljava/lang/String;

.field protected fNameRange:[I

.field protected fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

.field protected fSourceRange:[I

.field protected fStateMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    const/4 v0, -0x1

    .line 11
    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    .line 12
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void
.end method

.method public constructor <init>([C[ILjava/lang/String;[I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 16
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 17
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 18
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    .line 19
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    .line 21
    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    .line 22
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    .line 23
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    .line 24
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    return-void
.end method

.method private cloneSharingDocument([CI)Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    if-lez p2, :cond_0

    rsub-int/lit8 v1, p2, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offset(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->canHaveChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    if-ne v3, v4, :cond_2

    invoke-direct {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->cloneSharingDocument([CI)Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->basicAddChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->basicAddChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    :goto_0
    return-void
.end method

.method public appendContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendFragmentedContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    return-void
.end method

.method public appendContentsOfChildren(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isContentMergableWith(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v4, v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([CII)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_2
    move-object v0, v3

    goto :goto_0
.end method

.method public abstract appendFragmentedContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
.end method

.method public basicAddChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->canHaveChildren()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getRoot()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-eq p1, v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->localizeContents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object p0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-void

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addAncestorAsChild:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addChildWithParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addIncompatibleChild:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addNullChild:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_unableAddChild:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public becomeDetailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isDetailed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_cannotDetail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public canHaveChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    new-array v3, v0, [C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    if-lez v2, :cond_1

    rsub-int/lit8 v1, v2, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offset(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->canHaveChildren()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    if-ne v5, v6, :cond_3

    invoke-direct {v4, v3, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->cloneSharingDocument([CI)Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->basicAddChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->addChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public fragment()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    :cond_0
    return-void
.end method

.method public getCharacters()[C
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    if-nez v1, :cond_2

    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    goto :goto_0
.end method

.method public getChildren()Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;-><init>(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->appendContents(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailedNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
    .locals 0

    return-object p0
.end method

.method public getDocument()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    return-object v0
.end method

.method public getEndPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getFactory()Lorg/eclipse/jdt/core/jdom/IDOMFactory;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/jdom/DOMFactory;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;-><init>()V

    return-object v0
.end method

.method public getFirstChild()Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getInsertionPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fInsertionPosition:I

    return v0
.end method

.method public getMask(I)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameContents()[C
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isNameAltered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    new-array v3, v0, [C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getParentEndDeclaration()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    if-eqz v2, :cond_1

    return v1

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMType;->getOpenBodyEnd()I

    move-result v0

    return v0
.end method

.method public getPreviousNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-object v0
.end method

.method public getRoot()Lorg/eclipse/jdt/core/jdom/IDOMNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getRoot()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public insertSibling(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/eclipse/jdt/core/jdom/DOMException;
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getParent()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getRoot()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-eq p1, v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->localizeContents()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object p0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addAncestorAsSibling:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addSiblingWithParent:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addIncompatibleSibling:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/core/jdom/DOMException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addSiblingBeforeRoot:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/jdom/DOMException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->dom_addNullSibling:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAllowableChild(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isContentMergableWith(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->isFragmented()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getDocument()[C

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getEndPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDetailed()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isFragmented()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    return v0
.end method

.method public isNameAltered()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getMask(I)Z

    move-result v0

    return v0
.end method

.method public isSignatureEqual(Lorg/eclipse/jdt/core/jdom/IDOMNode;)Z
    .locals 2

    invoke-interface {p0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNodeType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public localizeContents()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    return-void
.end method

.method public abstract newDOMNode()Lorg/eclipse/jdt/internal/core/jdom/DOMNode;
.end method

.method public normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getPreviousNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getParentEndDeclaration()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->canHaveChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalize(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->normalizeEndPosition(Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    return-void
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

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setSourceRangeEnd(I)V

    :goto_1
    return-void
.end method

.method public normalizeStartPosition(ILorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getStartPosition()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/internal/core/jdom/ILineStartFinder;->getLineStart(I)I

    move-result p2

    if-le v0, p2, :cond_1

    if-gt p2, p1, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setStartPosition(I)V

    :cond_1
    return-void
.end method

.method public offset(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->offsetRange([II)V

    return-void
.end method

.method public offsetRange([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v1, p1, v0

    add-int/2addr v1, p2

    aput v1, p1, v0

    if-gez v1, :cond_1

    const/4 v1, -0x1

    aput v1, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public rangeCopy([I)[I
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget v2, p1, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-ne v2, p0, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fFirstChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    if-ne v2, p0, :cond_4

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fLastChild:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fParent:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNextNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fPreviousNode:Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    return-void
.end method

.method public setMask(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setNameAltered(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fragment()V

    return-void
.end method

.method public setNameAltered(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->setMask(IZ)V

    return-void
.end method

.method public setSourceRangeEnd(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setStartPosition(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fDocument:[C

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fIsFragmented:Z

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fName:Ljava/lang/String;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fNameRange:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->rangeCopy([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fSourceRange:[I

    iget v0, p1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->fStateMask:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->canHaveChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->getChildren()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/jdom/DOMNode;->shareContents(Lorg/eclipse/jdt/internal/core/jdom/DOMNode;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
