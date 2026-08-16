.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private final following:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final preceeding:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final property:Lcom/github/javaparser/ast/observer/ObservableProperty;

.field private final separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "separator"
        }
    .end annotation

    .line 1
    new-instance v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
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
            "property",
            "separatorPre",
            "separatorPost",
            "preceeding",
            "following"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    .line 5
    iput-object p2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 6
    iput-object p3, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 7
    iput-object p4, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 8
    iput-object p5, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-void
.end method


# virtual methods
.method public getFollowing()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getPreceeding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getSeparatorPost()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getSeparatorPre()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/observer/ObservableProperty;->isAboutNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getValueAsMultipleReference(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v2, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->genericPrettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getValueAsCollection(Lcom/github/javaparser/ast/Node;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/PrintingHelper;->printToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    goto :goto_1

    :cond_a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(property:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
