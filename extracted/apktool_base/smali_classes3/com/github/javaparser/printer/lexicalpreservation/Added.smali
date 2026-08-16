.class public Lcom/github/javaparser/printer/lexicalpreservation/Added;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;


# instance fields
.field private final element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-void
.end method

.method private isToken()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    return v0
.end method


# virtual methods
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
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIndent()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNewLine()Z
    .locals 1

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->isToken()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnindent()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v0, v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return v0
.end method

.method public replaceEolTokens(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->isNewLine()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTextElement()Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    check-cast v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v0

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported element type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Added;->element:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
