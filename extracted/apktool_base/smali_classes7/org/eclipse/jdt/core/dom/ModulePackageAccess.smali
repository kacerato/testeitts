.class public abstract Lorg/eclipse/jdt/core/dom/ModulePackageAccess;
.super Lorg/eclipse/jdt/core/dom/ModuleDirective;
.source "SourceFile"


# instance fields
.field protected modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field protected name:Lorg/eclipse/jdt/core/dom/Name;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalModulesProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-void
.end method

.method public static final internalModulesPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Name;

    const/4 v2, 0x0

    const-string v3, "modules"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static final internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "name"

    const-class v3, Lorg/eclipse/jdt/core/dom/Name;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method


# virtual methods
.method public acceptVisitChildren(ZLorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    return-void
.end method

.method public cloneHelper(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ModulePackageAccess;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/Name;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v2, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/AST;->newQualifiedName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    return-object v0
.end method

.method public final getNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalModulesProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public abstract internalModulesProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.end method

.method public abstract internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public modules()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->name:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
