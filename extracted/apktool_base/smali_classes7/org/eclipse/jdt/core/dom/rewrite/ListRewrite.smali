.class public final Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private parent:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-void
.end method

.method private createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 12

    move-object v0, p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v10

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->newPlaceholderNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->createCollapsePlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v7

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->createRangeCopy(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->markAsCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)V

    return-object v11

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating a target node is not supported for nodes of type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    return-object v0
.end method

.method private getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getRewriteEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    return-object v0
.end method

.method private internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->validatePropertyType(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->insert(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_1
    return-void
.end method

.method private isInsertBoundToPreviousByDefault(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/Statement;

    if-nez v0, :cond_0

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private validatePropertyType(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->getElementType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a valid type for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getNodeClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " property \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Must be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->getElementType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final createCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 6

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 6

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public getASTRewrite()Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->rewriter:Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    return-object v0
.end method

.method public getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->childListProperty:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public getOriginalList()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public getRewrittenList()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertAfter(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public insertAt(Lorg/eclipse/jdt/core/dom/ASTNode;ILorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->isInsertBoundToPreviousByDefault(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public insertBefore(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public insertFirst(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public insertLast(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->internalInsertAt(Lorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public remove(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->removeEntry(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->validatePropertyType(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getEvent()Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->replaceEntry(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getRewriteStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
