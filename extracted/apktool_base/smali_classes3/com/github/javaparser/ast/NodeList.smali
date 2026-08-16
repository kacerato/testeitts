.class public Lcom/github/javaparser/ast/NodeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Iterable;
.implements Lcom/github/javaparser/HasParentNode;
.implements Lcom/github/javaparser/ast/visitor/Visitable;
.implements Lcom/github/javaparser/ast/observer/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/NodeList$NodeListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TN;>;",
        "Ljava/lang/Iterable<",
        "TN;>;",
        "Lcom/github/javaparser/HasParentNode<",
        "Lcom/github/javaparser/ast/NodeList<",
        "TN;>;>;",
        "Lcom/github/javaparser/ast/visitor/Visitable;",
        "Lcom/github/javaparser/ast/observer/Observable;"
    }
.end annotation


# instance fields
.field private final innerList:Ljava/util/List;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/observer/AstObserver;",
            ">;"
        }
    .end annotation
.end field

.field private parentNode:Lcom/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->parentNode:Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TN;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TN;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/ast/NodeList;->lambda$notifyElementReplaced$3(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->notifyElementRemoved(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->notifyElementReplaced(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/NodeList;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->notifyElementAdded(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/NodeList;->own(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/NodeList;->lambda$toNodeList$4(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/ast/NodeList;->lambda$notifyElementRemoved$2(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/ast/NodeList;->lambda$notifyElementAdded$1(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/Collection;Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/NodeList;->lambda$retainAll$0(Ljava/util/Collection;Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$notifyElementAdded$1(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    invoke-interface {p3, p0, v0, p1, p2}, Lcom/github/javaparser/ast/observer/AstObserver;->listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private synthetic lambda$notifyElementRemoved$2(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    invoke-interface {p3, p0, v0, p1, p2}, Lcom/github/javaparser/ast/observer/AstObserver;->listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private synthetic lambda$notifyElementReplaced$3(ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-interface {p3, p0, p1, v0, p2}, Lcom/github/javaparser/ast/observer/AstObserver;->listReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$retainAll$0(Ljava/util/Collection;Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "c",
            "it"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$toNodeList$4(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->addAll(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public static nodeList(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TX;>;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/github/javaparser/ast/NodeList;->addAll(Lcom/github/javaparser/ast/NodeList;)V

    return-object v0
.end method

.method public static nodeList(Ljava/util/Collection;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs nodeList([Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/github/javaparser/ast/Node;",
            ">([TX;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    .line 2
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method private notifyElementAdded(ILcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/ast/Y;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/ast/Y;-><init>(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyElementRemoved(ILcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/ast/b0;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/ast/b0;-><init>(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyElementReplaced(ILcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/ast/a0;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/ast/a0;-><init>(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private own(Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/NodeList;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childNode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-void
.end method

.method private setAsParentNodeOf(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/HasParentNode;

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/javaparser/HasParentNode;->setParentNode(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toNodeList()Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/V;

    invoke-direct {v0}, Lcom/github/javaparser/ast/V;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/W;

    invoke-direct {v1}, Lcom/github/javaparser/ast/W;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/X;

    invoke-direct {v2}, Lcom/github/javaparser/ast/X;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    return-void
.end method

.method public add(ILcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->notifyElementAdded(ILcom/github/javaparser/ast/Node;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/github/javaparser/ast/NodeList;->own(Lcom/github/javaparser/ast/Node;)V

    .line 8
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "node"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public add(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/NodeList;->notifyElementAdded(ILcom/github/javaparser/ast/Node;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/NodeList;->own(Lcom/github/javaparser/ast/Node;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "node"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public addAfter(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "afterThisNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t find node to insert after."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    add-int/lit8 v2, p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    move p1, v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/T;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/T;-><init>(Lcom/github/javaparser/ast/NodeList;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public addBefore(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "beforeThisNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t find node to insert before."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFirst(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public addLast(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p0
.end method

.method public clear()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
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
            "-TN;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(I)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->parentNode:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeForChildren()Lcom/github/javaparser/ast/Node;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->parentNode:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public ifNonEmpty(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNonEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRegistered(Lcom/github/javaparser/ast/observer/AstObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;-><init>(Lcom/github/javaparser/ast/NodeList;Ljava/util/List;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;-><init>(Lcom/github/javaparser/ast/NodeList;Ljava/util/List;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;-><init>(Lcom/github/javaparser/ast/NodeList;Ljava/util/List;I)V

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public remove(I)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/NodeList;->notifyElementRemoved(ILcom/github/javaparser/ast/Node;)V

    .line 7
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
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

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/NodeList;->notifyElementRemoved(ILcom/github/javaparser/ast/Node;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 9
    instance-of v0, p1, Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeFirst()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TN;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public removeLast()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/U;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/U;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)TN;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p2

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->notifyElementReplaced(ILcom/github/javaparser/ast/Node;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    invoke-direct {p0, p2}, Lcom/github/javaparser/ast/NodeList;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    .line 7
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal index. The index should be between 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " excluded. It is instead "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList;->parentNode:Lcom/github/javaparser/ast/Node;

    .line 3
    iget-object p1, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/NodeList;->setAsParentNodeOf(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic setParentNode(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parentNode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TN;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/Z;

    invoke-direct {v1}, Lcom/github/javaparser/ast/Z;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ", "

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public unregister(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
