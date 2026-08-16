.class public Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final index:I

.field private final newValue:Lcom/github/javaparser/ast/Node;

.field private final observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;ILcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "index",
            "newValue"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->index:I

    iput-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->newValue:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Optional;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/Optional;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    instance-of p2, p1, Lcom/github/javaparser/ast/NodeList;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    new-instance p2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/ast/NodeList;->addAll(Lcom/github/javaparser/ast/NodeList;)V

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->index:I

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->newValue:Lcom/github/javaparser/ast/Node;

    invoke-virtual {p2, p1, v0}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected NodeList, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
