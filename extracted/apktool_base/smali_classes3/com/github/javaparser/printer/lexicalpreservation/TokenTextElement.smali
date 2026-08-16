.class public Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
.super Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
.source "SourceFile"


# instance fields
.field private final token:Lcom/github/javaparser/JavaToken;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, p1}, Lcom/github/javaparser/JavaToken;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
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

    .line 3
    new-instance v0, Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/JavaToken;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lcom/github/javaparser/JavaToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visitor"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;->visit(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)V

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
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public expand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getText()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Lcom/github/javaparser/JavaToken;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    return-object v0
.end method

.method public getTokenKind()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChildOfClass(Ljava/lang/Class;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public isComment()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isComment()Z

    move-result v0

    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isIdentifier()Z

    move-result v0

    return v0
.end method

.method public isKeyword()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isKeyword()Z

    move-result v0

    return v0
.end method

.method public isLiteral()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isLiteral()Z

    move-result v0

    return v0
.end method

.method public isNewline()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v0

    return v0
.end method

.method public isNode(Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isPrimitive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/JavaToken$Kind;->valueOf(I)Lcom/github/javaparser/JavaToken$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Kind;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isSeparator()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isSeparator()Z

    move-result v0

    return v0
.end method

.method public isSpaceOrTab()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespaceButNotEndOfLine()Z

    move-result v0

    return v0
.end method

.method public isToken(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenKind"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWhiteSpace()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->token:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
