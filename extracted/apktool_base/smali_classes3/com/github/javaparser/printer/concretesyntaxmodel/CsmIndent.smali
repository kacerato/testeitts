.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

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

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSpaceOrTab()Z

    move-result p1

    if-eqz p1, :cond_0

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

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method
