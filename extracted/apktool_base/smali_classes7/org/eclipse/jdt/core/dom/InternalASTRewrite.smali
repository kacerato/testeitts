.class Lorg/eclipse/jdt/core/dom/InternalASTRewrite;
.super Lorg/eclipse/jdt/core/dom/NodeEventHandler;
.source "SourceFile"


# instance fields
.field cloneDepth:I

.field protected final clonedNodes:Ljava/util/Hashtable;

.field protected final eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

.field protected final nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

.field private root:Lorg/eclipse/jdt/core/dom/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->root:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    return-void
.end method

.method private getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object p1

    return-object p1
.end method

.method private getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p1

    return-object p1
.end method

.method private getRootNode()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->root:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object v0
.end method

.method private markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    :goto_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->structuralPropertiesForType()Ljava/util/List;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_3

    :cond_2
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v0, 0x2

    if-eqz p1, :cond_7

    iget v2, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getPropertyLocation(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    invoke-virtual {v2, v3, v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->markAsCopySource(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->markAsCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getPropertyLocation(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->markAsCopySource(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->markAsCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public postAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 4

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object v0

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-ge v1, v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, p3, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->insert(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_1
    return-void
.end method

.method public postCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->root:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->clonedNodes:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    return-void
.end method

.method public postValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method public preAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    :cond_1
    :goto_0
    return-void
.end method

.method public preCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->cloneDepth:I

    return-void
.end method

.method public preRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p3

    aget-object p2, p3, p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->revertChange(Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public preReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p4}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p4}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getListEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p4

    aget-object p2, p4, p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->markAsMoveOrCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    return-void
.end method

.method public rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;
    .locals 13

    new-instance v11, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v11}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->getRootNode()Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v12

    if-eqz v12, :cond_1

    new-instance v9, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;

    invoke-direct {v9, p0, v12}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite$1;-><init>(Lorg/eclipse/jdt/core/dom/InternalASTRewrite;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    invoke-interface {p1}, Lorg/eclipse/jface/text/IDocument;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->create(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v2

    invoke-static {p1}, Lorg/eclipse/jface/text/TextUtilities;->getDefaultLineDelimiter(Lorg/eclipse/jface/text/IDocument;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v7

    if-nez p2, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p2

    :cond_0
    move-object v8, p2

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-virtual {v12}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getStatementsRecoveryData()Ljava/lang/Object;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    move-object v0, p1

    move-object v4, v11

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;-><init>([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {v12, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Events:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
