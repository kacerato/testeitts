.class public Lcom/github/javaparser/ast/modules/ModuleDeclaration;
.super Lcom/github/javaparser/ast/Node;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/Node;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end field

.field private directives:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;"
        }
    .end annotation
.end field

.field private isOpen:Z

.field private name:Lcom/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/expr/Name;

    invoke-direct {v3}, Lcom/github/javaparser/ast/expr/Name;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "annotations",
            "name",
            "isOpen",
            "directives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Name;",
            "Z",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setOpen(Z)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 8
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setDirectives(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotations",
            "name",
            "isOpen",
            "directives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Name;",
            "Z",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Name;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "isOpen"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public addDirective(Lcom/github/javaparser/ast/modules/ModuleDirective;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directive"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p0
.end method

.method public addDirective(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directive"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDirective;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->addDirective(Lcom/github/javaparser/ast/modules/ModuleDirective;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->clone()Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 2

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->clone()Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getDirectives()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ModuleDeclarationMetaModel;
    .locals 1

    .line 2
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->moduleDeclarationMetaModel:Lcom/github/javaparser/metamodel/ModuleDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/ModuleDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/Name;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->name:Lcom/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen:Z

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleDirective;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->name:Lcom/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_5

    check-cast p2, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    return v3

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->annotations:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setDirectives(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "directives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;)",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->DIRECTIVES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->directives:Lcom/github/javaparser/ast/NodeList;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->name:Lcom/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->name:Lcom/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->name:Lcom/github/javaparser/ast/expr/Name;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setOpen(Z)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isOpen"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->OPEN:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen:Z

    return-object p0
.end method
