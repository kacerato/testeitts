.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private content:Ljava/lang/String;

.field private final tokenType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 3
    sget-object v0, Lcom/github/javaparser/GeneratedJavaParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 4
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    invoke-static {p1}, Lcom/github/javaparser/utils/LineSeparator;->lookupEscaped(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p1}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isWhitespaceButNotEndOfLine(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    const-string p1, " "

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "content"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    .line 12
    iput-object p2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    iget v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    iget v3, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    iget-object p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNewLine()Z
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public isWhiteSpaceNotEol()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 0
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

    iget p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->tokenType:I

    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->content:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(property:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
