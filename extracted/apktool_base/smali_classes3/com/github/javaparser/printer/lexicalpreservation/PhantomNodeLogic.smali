.class public Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LEVELS_TO_EXPLORE:I = 0x3

.field private static final cacheCleaner:Lcom/github/javaparser/ast/observer/AstObserver;

.field private static final isPhantomNodeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;-><init>()V

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->cacheCleaner:Lcom/github/javaparser/ast/observer/AstObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    return-object v0
.end method

.method public static cleanUpCache()V
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "levels"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNode(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    sub-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isPhantomNode(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v1, p0, Lcom/github/javaparser/ast/type/UnknownType;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/Range;

    invoke-virtual {v1, v3}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->cacheCleaner:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    return v2
.end method
