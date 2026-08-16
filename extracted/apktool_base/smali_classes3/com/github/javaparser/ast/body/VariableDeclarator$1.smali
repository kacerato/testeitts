.class Lcom/github/javaparser/ast/body/VariableDeclarator$1;
.super Lcom/github/javaparser/ast/observer/AstObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ast/body/VariableDeclarator;->customInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/javaparser/ast/body/VariableDeclarator;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator$1;->this$0:Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-direct {p0}, Lcom/github/javaparser/ast/observer/AstObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    sget-object p1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator$1;->this$0:Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    move-object v2, p4

    check-cast v2, Lcom/github/javaparser/ast/type/Type;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    check-cast p2, Lcom/github/javaparser/ast/Node;

    sget-object p4, Lcom/github/javaparser/ast/observer/ObservableProperty;->MAXIMUM_COMMON_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p3, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
