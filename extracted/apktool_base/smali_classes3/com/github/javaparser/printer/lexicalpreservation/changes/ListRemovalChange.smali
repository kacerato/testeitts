.class public Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final index:I

.field private final observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->index:I

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->lambda$getValue$1(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->lambda$getValue$0(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method private isSameNode(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n1",
            "n2"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->isSameRange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSameRange(Lcom/github/javaparser/Range;Lcom/github/javaparser/Range;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r1",
            "r2"
        }
    .end annotation

    .line 5
    invoke-virtual {p1, p2}, Lcom/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSameRange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n1",
            "n2"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/Range;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->isSameRange(Lcom/github/javaparser/Range;Lcom/github/javaparser/Range;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$getValue$0(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "currentNodeList",
            "n"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->index:I

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->isSameNode(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static synthetic lambda$getValue$1(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newNodeList",
            "selectedNode"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->observableProperty:Lcom/github/javaparser/ast/observer/ObservableProperty;

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

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;Lcom/github/javaparser/ast/NodeList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/changes/c;

    invoke-direct {v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/c;-><init>(Lcom/github/javaparser/ast/NodeList;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

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
