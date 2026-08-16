.class public Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsmChild"
.end annotation


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    return-void
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
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChild()Lcom/github/javaparser/ast/Node;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The prettyPrint method is not supported or implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "child("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->child:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
