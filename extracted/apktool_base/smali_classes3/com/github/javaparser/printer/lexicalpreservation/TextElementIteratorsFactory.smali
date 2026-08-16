.class Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;,
        Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;,
        Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;,
        Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static partialReverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "fromIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            "I)",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ltz p1, :cond_0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$ComposedIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static reverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->partialReverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static reverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            "I)",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v0, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)V

    return-object v1

    .line 4
    :cond_0
    instance-of p0, v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz p0, :cond_1

    .line 5
    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 6
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getNodeTextForWrappedNode()Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
