.class public Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;


# instance fields
.field private final nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

.field private final previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousOrder",
            "nextOrder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->lambda$replaceTokens$0(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p0

    return-object p0
.end method

.method private isNewLineToken(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->isToken(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isToken(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    return p1
.end method

.method private synthetic lambda$replaceTokens$0(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "lineSeparator",
            "element"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->isNewLineToken(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private replaceTokens(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/d0;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/d0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v2, p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public getNextOrder()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public getPreviousOrder()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAdded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public replaceEolTokens(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->replaceTokens(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->replaceTokens(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    invoke-direct {p1, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reshuffled{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
