.class Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuffer;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->lambda$expand$0(Ljava/lang/StringBuffer;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method

.method private static synthetic lambda$expand$0(Ljava/lang/StringBuffer;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "e"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->expand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addChild(ILcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "child"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method

.method public addChild(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method

.method public addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeTextElement"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeTextElement"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToken(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "tokenKind",
            "text"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addToken(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenKind",
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public expand()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/W;

    invoke-direct {v2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/W;-><init>(Ljava/lang/StringBuffer;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findChild(Lcom/github/javaparser/ast/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findChild(Lcom/github/javaparser/ast/Node;I)I

    move-result p1

    return p1
.end method

.method public findChild(Lcom/github/javaparser/ast/Node;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "from"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->byNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result p1

    return p1
.end method

.method public findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result p1

    return p1
.end method

.method public findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "from"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 5
    const-string p2, "I could not find child \'%s\' from position %d. Elements: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    return-object p1
.end method

.method public numberOfElements()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "potentiallyFollowingWhitespace"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-interface {p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "There is no element to remove!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public replace(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "newElement"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result p1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeText{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryToFindChild(Lcom/github/javaparser/ast/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindChild(Lcom/github/javaparser/ast/Node;I)I

    move-result p1

    return p1
.end method

.method public tryToFindChild(Lcom/github/javaparser/ast/Node;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "from"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->byNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I

    move-result p1

    return p1
.end method

.method public tryToFindElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcher",
            "from"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->elements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-interface {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
