.class public Lorg/eclipse/jdt/core/dom/RequiresDirective;
.super Lorg/eclipse/jdt/core/dom/ModuleDirective;
.source "SourceFile"


# static fields
.field public static final MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;


# instance fields
.field private modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private name:Lorg/eclipse/jdt/core/dom/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    const/4 v2, 0x0

    const-class v3, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    const-string v4, "modifiers"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-class v6, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    const-string v7, "name"

    const-class v8, Lorg/eclipse/jdt/core/dom/Name;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/RequiresDirective;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/RequiresDirective;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->toFlagValue()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/Name;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

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

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    sget-object v1, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x5e

    return v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public modifiers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    sget-object v1, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/RequiresDirective;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->name:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
