.class public Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;
.super Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
.source "SourceFile"


# instance fields
.field private final child:Lcom/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->lambda$accept$0(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method

.method private static synthetic lambda$accept$0(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "visitor",
            "element"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/PrintableTextElement;->accept(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visitor"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getNodeTextForWrappedNode()Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/a;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public expand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChild()Lcom/github/javaparser/ast/Node;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public getNodeTextForWrappedNode()Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChildOfClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isComment()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    instance-of v0, v0, Lcom/github/javaparser/ast/comments/Comment;

    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyword()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLiteral()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNewline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNode(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSeparator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpaceOrTab()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isToken(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isWhiteSpace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildTextElement{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
