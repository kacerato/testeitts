.class public Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
.super Lcom/github/javaparser/ast/modules/ModuleDirective;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/modules/ModuleDirective;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
        ">;"
    }
.end annotation


# instance fields
.field private modifiers:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lcom/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/expr/Name;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/Name;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleDirective;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 6
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V

    return-void
.end method

.method public asModuleRequiresDirective()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 0

    return-object p0
.end method

.method public asModuleRequiresStmt()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/modules/ModuleDirective;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ModuleDirectiveMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getMetaModel()Lcom/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->moduleRequiresDirectiveMetaModel:Lcom/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getMetaModel()Lcom/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/Name;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lcom/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public ifModuleRequiresDirective(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public ifModuleRequiresStmt(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isModuleRequiresDirective()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModuleRequiresStmt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lcom/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;)",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public bridge synthetic setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lcom/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lcom/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lcom/github/javaparser/ast/expr/Name;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setTransitive(Z)Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    return-object p1
.end method

.method public toModuleRequiresDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleRequiresStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
