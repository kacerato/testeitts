.class public Lorg/eclipse/jdt/core/dom/ForStatement;
.super Lorg/eclipse/jdt/core/dom/Statement;
.source "SourceFile"


# static fields
.field public static final BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS:Ljava/util/List;

.field public static final UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private body:Lorg/eclipse/jdt/core/dom/Statement;

.field private initializers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

.field private updaters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/ForStatement;

    const-string v2, "initializers"

    const-class v3, Lorg/eclipse/jdt/core/dom/Expression;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-class v6, Lorg/eclipse/jdt/core/dom/ForStatement;

    const-string v7, "expression"

    const-class v8, Lorg/eclipse/jdt/core/dom/Expression;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/ForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v5, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v6, "updaters"

    invoke-direct {v5, v1, v6, v3, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/ForStatement;->UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v3, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-class v8, Lorg/eclipse/jdt/core/dom/ForStatement;

    const-string v9, "body"

    const-class v10, Lorg/eclipse/jdt/core/dom/Statement;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Statement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ForStatement;->UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/ForStatement;->PROPERTY_DESCRIPTORS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/ForStatement;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/ForStatement;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/ForStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/Statement;->copyLeadingComment(Lorg/eclipse/jdt/core/dom/Statement;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ForStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return-object v0
.end method

.method public getBody()Lorg/eclipse/jdt/core/dom/Statement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/Block;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    return-object v0
.end method

.method public getExpression()Lorg/eclipse/jdt/core/dom/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public initializers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ForStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ForStatement;->setBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/Statement;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public setBody(Lorg/eclipse/jdt/core/dom/Statement;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/ForStatement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->optionalConditionExpression:Lorg/eclipse/jdt/core/dom/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->body:Lorg/eclipse/jdt/core/dom/Statement;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public updaters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
