.class public abstract Lcom/github/javaparser/ast/expr/PatternExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/expr/Expression;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lcom/github/javaparser/ast/expr/PatternExpr;",
        "Lcom/github/javaparser/ast/type/Type;",
        ">;"
    }
.end annotation


# instance fields
.field private type:Lcom/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/TokenRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "type"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/PatternExpr;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/PatternExpr;

    .line 6
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;)V
    .locals 0
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/javaparser/ast/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public asPatternExpr()Lcom/github/javaparser/ast/expr/PatternExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/PatternExpr;->clone()Lcom/github/javaparser/ast/expr/PatternExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/PatternExpr;->clone()Lcom/github/javaparser/ast/expr/PatternExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/PatternExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/PatternExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/PatternExpr;->clone()Lcom/github/javaparser/ast/expr/PatternExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/PatternExpr;->getMetaModel()Lcom/github/javaparser/metamodel/PatternExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/PatternExpr;->getMetaModel()Lcom/github/javaparser/metamodel/PatternExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/PatternExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->patternExprMetaModel:Lcom/github/javaparser/metamodel/PatternExprMetaModel;

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/PatternExpr;->type:Lcom/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public ifPatternExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/PatternExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isPatternExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/PatternExpr;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/PatternExpr;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/PatternExpr;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/PatternExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/PatternExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/PatternExpr;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/PatternExpr;->type:Lcom/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/PatternExpr;->type:Lcom/github/javaparser/ast/type/Type;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toPatternExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/PatternExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
