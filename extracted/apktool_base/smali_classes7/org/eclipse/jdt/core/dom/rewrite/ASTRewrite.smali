.class public Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ast:Lorg/eclipse/jdt/core/dom/AST;

.field private final eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

.field private final nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

.field private property1:Ljava/lang/Object;

.field private property2:Ljava/lang/Object;

.field private targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->ast:Lorg/eclipse/jdt/core/dom/AST;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method private createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsExistingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsCorrectAST(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getRewriteEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->markAsCopySource(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->newPlaceholderNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->markAsCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)V

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating a target node is not supported for nodes of type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private getRootNode()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getRewriteEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getChangeRootIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    :goto_1
    add-int/2addr v4, v0

    if-lt v2, v0, :cond_2

    if-gt v3, v4, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNewNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v6, v5

    if-eqz v1, :cond_7

    if-ge v5, v2, :cond_5

    if-le v6, v3, :cond_5

    goto :goto_5

    :cond_5
    if-ge v5, v2, :cond_6

    move v2, v5

    goto :goto_0

    :cond_6
    if-le v6, v3, :cond_0

    :goto_4
    move v3, v6

    goto :goto_0

    :cond_7
    :goto_5
    move-object v1, v4

    move v2, v5

    goto :goto_4
.end method

.method private internalRewriteAST([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)Lorg/eclipse/text/edits/TextEdit;
    .locals 14

    move-object v0, p0

    new-instance v12, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v12}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getExtendedSourceRangeComputer()Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    move-result-object v10

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->prepareMovedNodes(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V

    new-instance v13, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;-><init>([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    move-object/from16 v1, p6

    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->revertMovedNodes()V

    return-object v12
.end method

.method private validateIsCorrectAST(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is not inside the AST"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateIsExistingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is not an existing node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateIsListProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a list property"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsPropertyOfNode(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getNodeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a property of type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private validatePropertyType(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isSimpleProperty()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->isMandatory()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result p2

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;->isMandatory()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not remove property "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isSimpleProperty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    const-class v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;->getChildType()Ljava/lang/Class;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " is not a valid type for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getNodeClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " property \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not modify a list property, use getListRewrite()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final createGroupNode([Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->createCollapsePlaceholder()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v3, p1, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertLast(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final createMoveTarget(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createTargetNode(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final createStringPlaceholder(Ljava/lang/String;I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->newPlaceholderNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->markAsStringPlaceholder(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String placeholder is not supported for type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public get(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use the list rewriter to access nodes in a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getAST()Lorg/eclipse/jdt/core/dom/AST;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->ast:Lorg/eclipse/jdt/core/dom/AST;

    return-object v0
.end method

.method public final getExtendedSourceRangeComputer()Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    invoke-direct {v0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    return-object v0
.end method

.method public final getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsCorrectAST(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsListProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsPropertyOfNode(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;-><init>(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getNodeStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->nodeStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getRewriteEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    return-object v0
.end method

.method public final remove(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNewNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getPropertyLocation(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node is not part of the rewriter\'s AST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->remove(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isNewNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getPropertyLocation(Ljava/lang/Object;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node is not part of the rewriter\'s AST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public rewriteAST()Lorg/eclipse/text/edits/TextEdit;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getRootNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v6

    if-nez v6, :cond_0

    .line 12
    new-instance v0, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v0}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 14
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const-string v2, "This API can only be used if the AST is created from a compilation unit or class file"

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    .line 16
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v2

    .line 19
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->create(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v3

    .line 20
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->findRecommendedLineSeparator()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v5

    .line 22
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getStatementsRecoveryData()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->internalRewriteAST([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getRootNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2
    new-instance p1, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {p1}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jface/text/IDocument;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->create(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v2

    .line 5
    invoke-static {p1}, Lorg/eclipse/jface/text/TextUtilities;->getDefaultLineDelimiter(Lorg/eclipse/jface/text/IDocument;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez p2, :cond_2

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p2

    :cond_2
    move-object v5, p2

    .line 9
    check-cast p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getStatementsRecoveryData()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->internalRewriteAST([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsCorrectAST(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validatePropertyType(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->validateIsPropertyOfNode(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Z)Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {p2, p1, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_3
    if-nez p2, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    return-void

    :cond_5
    check-cast v0, Ljava/util/Map;

    if-nez p2, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-array p2, p2, [Ljava/util/Map$Entry;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property1:Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->property2:Ljava/lang/Object;

    :cond_6
    return-void

    :cond_7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setTargetSourceRangeComputer(Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->targetSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Events:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final track(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/ITrackedNodePosition;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/text/edits/TextEditGroup;

    const-string v1, "internal"

    invoke-direct {v0, v1}, Lorg/eclipse/text/edits/TextEditGroup;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->setTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TrackedNodePosition;-><init>(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
