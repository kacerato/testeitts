.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$PlaceholderData;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;
    }
.end annotation


# instance fields
.field private ast:Lorg/eclipse/jdt/core/dom/AST;

.field private collapsedNodes:Ljava/util/Set;

.field private placeholderNodes:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    return-void
.end method

.method private setPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$PlaceholderData;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    return-void
.end method

.method public createCollapsePlaceholder()Lorg/eclipse/jdt/core/dom/Block;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->newBlock()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->placeholderNodes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCollapsed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->collapsedNodes:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final markAsCopyTarget(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;-><init>()V

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;->copySource:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->setPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$PlaceholderData;)V

    return-void
.end method

.method public final markAsStringPlaceholder(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;-><init>()V

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;->code:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->setPlaceholderData(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$PlaceholderData;)V

    return-void
.end method

.method public final newPlaceholderNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/AST;->createInstance(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x36

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/Modifier;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier;->setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newVariableDeclarationFragment()Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newVariableDeclarationFragment()Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/TryStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newBlock()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TryStatement;->setFinally(Lorg/eclipse/jdt/core/dom/Block;)V

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newVariableDeclarationFragment()Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
