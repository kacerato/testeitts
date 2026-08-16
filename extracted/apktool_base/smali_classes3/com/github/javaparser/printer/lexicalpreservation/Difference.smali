.class public Lcom/github/javaparser/printer/lexicalpreservation/Difference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;,
        Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;
    }
.end annotation


# static fields
.field public static final STANDARD_INDENTATION_SIZE:I = 0x4


# instance fields
.field private addedIndentation:Z

.field private final diffElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation
.end field

.field private diffIndex:I

.field private final indentation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lcom/github/javaparser/ast/Node;

.field private final nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

.field private final originalElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation
.end field

.field private originalIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diffElements",
            "nodeText",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iput-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->node:Lcom/github/javaparser/ast/Node;

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-static {p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findIndentation(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nodeText can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lambda$processIndentation$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private adjustIndentation(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "indentation",
            "nodeText",
            "nodeTextIndex",
            "followedByUnindent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            "IZ)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    const/4 v1, 0x4

    if-ge p3, v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p4, v0

    invoke-interface {p1, v2, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-interface {p1, v2, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-virtual {p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p3, v1

    goto :goto_1

    :cond_3
    if-ltz p3, :cond_4

    return p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private applyAddedDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/Added;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "added"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->isIndent()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v0, v3}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->isUnindent()Z

    move-result v0

    if-eqz v0, :cond_3

    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->toTextElement()Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object p1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    const/4 v1, 0x2

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v5}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nextIsRightBrace(I)Z

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    if-nez v5, :cond_5

    instance-of v7, v6, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-object v8, v6

    check-cast v8, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v8}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8, v6}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v4, v5}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isAfterLBrace(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v4}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isAReplacement(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v4

    iget-object v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    new-instance v7, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-static {}, Lcom/github/javaparser/TokenTypes;->eolTokenKind()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    :goto_4
    iget v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lt v5, v1, :cond_7

    iget-object v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v5}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8, v6}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    goto :goto_5

    :cond_8
    iget-boolean v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->addedIndentation:Z

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentationBlock()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8, v6}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    goto :goto_6

    :cond_9
    move v4, v2

    :cond_a
    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v4

    iget v5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v6, v5, 0x2

    if-le v4, v6, :cond_b

    move v4, v3

    goto :goto_7

    :cond_b
    move v4, v2

    :goto_7
    iget-object v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v6, v5}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v5

    iget v6, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lez v6, :cond_c

    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    sub-int/2addr v6, v3

    invoke-virtual {v7, v6}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_8

    :cond_c
    move v6, v2

    :goto_8
    iget-object v7, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v7, v8}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v7

    iget v8, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-nez v8, :cond_d

    move v9, v3

    goto :goto_9

    :cond_d
    move v9, v2

    :goto_9
    if-lez v8, :cond_e

    iget-object v10, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    sub-int/2addr v8, v3

    invoke-virtual {v10, v8}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v3

    goto :goto_a

    :cond_e
    move v8, v2

    :goto_a
    if-eqz v5, :cond_f

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v11, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v10, v11}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/g;

    invoke-direct {v11, p1}, Lcom/github/javaparser/printer/lexicalpreservation/g;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    move v10, v3

    goto :goto_b

    :cond_f
    move v10, v2

    :goto_b
    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    if-eqz v10, :cond_10

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v1, v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_c

    :cond_10
    if-eqz v7, :cond_11

    if-eqz v6, :cond_11

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {p0, v1, v4, v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result v0

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v1, v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_c

    :cond_11
    if-eqz v7, :cond_13

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isChild()Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v0, :cond_12

    if-nez v9, :cond_12

    if-nez v8, :cond_12

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {p0, v1, v4, v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result v0

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_12
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_c

    :cond_13
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_14
    :goto_c
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isFollowedByUnindent(Ljava/util/List;I)Z

    move-result p1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nextIsRightBrace(I)Z

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v0, :cond_16

    :cond_15
    if-eqz p1, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->adjustIndentation(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;IZ)I

    move-result p1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_17
    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    return-void
.end method

.method private applyKeptDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/Kept;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kept",
            "originalElement",
            "originalElementIsChild",
            "originalElementIsToken"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p4, :cond_a

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isNodeWithTypeArguments(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElement(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result p1

    iget p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isTypeWithFullyQualifiedName(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElement(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)I

    move-result p1

    iget p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isKeyword()Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isArrayType(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p3

    if-eqz p3, :cond_7

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getArrayLevel(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElementInArrayType(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result p1

    iget p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isIdentifier()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isPrimitiveType()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_9
    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p4, :cond_11

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->getTokenType()I

    move-result p3

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result p4

    if-ne p3, p4, :cond_b

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isNewLine()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isNewline()Z

    move-result p3

    if-eqz p3, :cond_c

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isNewLine()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSpaceOrTab()Z

    move-result p3

    if-eqz p3, :cond_d

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isWhiteSpaceOrComment()Z

    move-result p3

    if-eqz p3, :cond_e

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result p3

    if-eqz p3, :cond_f

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isNewLine()Z

    move-result p3

    if-nez p3, :cond_10

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSeparator()Z

    move-result p3

    if-eqz p3, :cond_10

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_0

    :cond_10
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Csm token "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " NodeText TOKEN "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_11
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isToken()Z

    move-result p4

    if-eqz p4, :cond_12

    if-eqz p3, :cond_12

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isWhiteSpace()Z

    move-result p3

    if-eqz p3, :cond_13

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isIndent()Z

    move-result p3

    if-eqz p3, :cond_14

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->isUnindent()Z

    move-result p3

    if-eqz p3, :cond_15

    iget p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    :goto_0
    return-void

    :cond_15
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "kept "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private applyLeftOverDiffElements()Z
    .locals 4

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isKept()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Added;->toTextElement()Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private applyLeftOverOriginalElements()Z
    .locals 4

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NodeText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Difference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private applyRemovedDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/printer/lexicalpreservation/Removed;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "removedGroup",
            "removed",
            "originalElement",
            "originalElementIsChild",
            "originalElementIsToken"
        }
    .end annotation

    invoke-interface {p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p4, :cond_9

    check-cast p3, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->isComment()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {p3}, Lcom/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3}, Lcom/github/javaparser/ast/comments/Comment;->getCommentedNode()Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/github/javaparser/ast/comments/Comment;->getCommentedNode()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto/16 :goto_2

    :cond_0
    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_2

    :cond_1
    new-instance p3, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {p3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-nez p5, :cond_3

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p5

    invoke-virtual {p5}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p4

    invoke-virtual {p4}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/javaparser/ast/Node;

    invoke-static {p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p5

    invoke-virtual {p5}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/Node;

    invoke-static {p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p3

    move-object p5, p3

    move-object p3, p4

    :cond_2
    invoke-static {p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findIndentation(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object p4

    move-object p3, p5

    :cond_3
    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isEnforcingIndentationActivable(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p0, p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->considerEnforcingIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)I

    move-result p5

    iput p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_4
    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-le p5, v0, :cond_6

    if-lez v0, :cond_6

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p5}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p5

    if-eqz p5, :cond_6

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p5}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p5

    if-eqz p5, :cond_6

    iget p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p5, p5, 0x1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p5, v0, :cond_5

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {p5}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isKept()Z

    move-result p5

    if-eqz p5, :cond_6

    :cond_5
    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {p5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    iget p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-direct {p0, p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isFollowedByComment(ILjava/util/List;)Z

    move-result p5

    if-eqz p5, :cond_7

    iget p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-direct {p0, p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->posOfNextComment(ILjava/util/List;)I

    move-result p5

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-direct {p0, v0, p5, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->removeElements(IILjava/util/List;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isRemovingIndentationActivable(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->considerRemovingIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)I

    move-result p5

    iput p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-nez p5, :cond_8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_8

    iget-object p5, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isInlined(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result p5

    if-nez p5, :cond_8

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p5}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->matchByRange()Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->and(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto :goto_0

    :cond_8
    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    :cond_9
    invoke-interface {p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isRemovingIndentationActivable(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Z

    move-result p3

    if-eqz p3, :cond_18

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-direct {p0, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->considerRemovingIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)I

    move-result p3

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isToken()Z

    move-result p4

    if-eqz p4, :cond_c

    if-eqz p5, :cond_c

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getTokenType()I

    move-result p4

    move-object v0, p3

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v1

    if-eq p4, v1, :cond_b

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object p4

    invoke-virtual {p4}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object p4

    invoke-virtual {p4}, Lcom/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isNewLine()Z

    move-result p4

    if-eqz p4, :cond_c

    :cond_b
    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isWhiteSpaceNotEol()Z

    move-result p4

    if-nez p4, :cond_d

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p4

    instance-of p4, p4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez p4, :cond_d

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p4

    instance-of p4, p4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz p4, :cond_e

    :cond_d
    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto/16 :goto_2

    :cond_e
    if-eqz p5, :cond_f

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpaceOrComment()Z

    move-result p4

    if-eqz p4, :cond_f

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isNewLine()Z

    move-result p3

    if-eqz p3, :cond_18

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isLiteral()Z

    move-result p4

    if-eqz p4, :cond_10

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isPrimitiveType()Z

    move-result p4

    const-string p5, " vs "

    const-string v0, "removed "

    if-eqz p4, :cond_12

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isPrimitive()Z

    move-result p4

    if-eqz p4, :cond_11

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto/16 :goto_2

    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isWhiteSpace()Z

    move-result p4

    if-nez p4, :cond_17

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p4

    instance-of p4, p4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez p4, :cond_17

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p4

    instance-of p4, p4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz p4, :cond_13

    goto :goto_1

    :cond_13
    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p4

    if-eqz p4, :cond_14

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_2

    :cond_14
    invoke-interface {p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result p4

    if-eqz p4, :cond_15

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_2

    :cond_15
    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isChild()Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isToken()Z

    move-result p4

    if-eqz p4, :cond_16

    iget-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    goto :goto_2

    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_1
    iget p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    :cond_18
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->cleanTheLineOfLeftOverSpace(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/printer/lexicalpreservation/Removed;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lambda$groupConsecutiveRemovedElements$3(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lambda$lastIndexOfEol$2(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method private cleanTheLineOfLeftOverSpace(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/printer/lexicalpreservation/Removed;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "removedGroup",
            "removed"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isLastElement(Lcom/github/javaparser/printer/lexicalpreservation/Removed;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isACompleteLine()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isNewLine()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElementIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getIndentation()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isReplaced(I)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    goto :goto_2

    :cond_3
    move v2, p2

    :goto_2
    iput v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->processed()V

    :cond_6
    return-void
.end method

.method private combineRemovedElementsToRemovedGroups()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            "Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->groupConsecutiveRemovedElements()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->of(Ljava/lang/Integer;Ljava/util/List;)Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private considerIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex",
            "numberOfCharactersToPreserve"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->defineEnforcingIndentationContext(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;

    move-result-object v0

    iget v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    if-lez v1, :cond_2

    if-le v1, p3, :cond_0

    sub-int/2addr v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget p2, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->start:I

    invoke-direct {p0, p1, p2, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->removeExtraCharacters(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;II)I

    move-result p1

    if-lez v1, :cond_1

    add-int/2addr p1, p3

    :cond_1
    move p2, p1

    :cond_2
    if-ltz p2, :cond_3

    return p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private considerRemovingIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->considerIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;II)I

    move-result p1

    return p1
.end method

.method public static synthetic d(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lambda$lastIndexOfEol$1(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method private defineEnforcingIndentationContext(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "startIndex"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/Difference;I)V

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-lez p2, :cond_2

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isSpaceOrTabElement(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/Difference;I)V

    goto :goto_1

    :cond_1
    iput v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->start:I

    iget v2, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isSpaceOrTabElement(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    if-ltz p2, :cond_5

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isSpaceOrTabElement(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$EnforcingIndentationContext;->extraCharacters:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static synthetic e(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lambda$applyAddedDiffElement$4(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getArrayLevel(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isArrayType(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getArrayLevel()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getIndexToNextTokenElement(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "nestedDiamondOperator"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    .line 13
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/JavaToken$Kind;->valueOf(I)Lcom/github/javaparser/JavaToken$Kind;

    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isDiamondOperator(Lcom/github/javaparser/JavaToken$Kind;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    sget-object v1, Lcom/github/javaparser/JavaToken$Kind;->GT:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 17
    :cond_3
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElement(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getIndexToNextTokenElement(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "kept"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isTypeWithFullyQualifiedName(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 3
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getNameWithScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    .line 5
    array-length v0, p2

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2

    .line 6
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    .line 8
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->asString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    :cond_3
    return v1
.end method

.method private getIndexToNextTokenElementInArrayType(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "arrayLevel"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/JavaToken$Kind;->valueOf(I)Lcom/github/javaparser/JavaToken$Kind;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isBracket(Lcom/github/javaparser/JavaToken$Kind;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/github/javaparser/JavaToken$Kind;->RBRACKET:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getCategory()Lcom/github/javaparser/JavaToken$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->getIndexToNextTokenElementInArrayType(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private groupConsecutiveRemovedElements()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v4}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    new-instance v5, Lcom/github/javaparser/printer/lexicalpreservation/f;

    invoke-direct {v5}, Lcom/github/javaparser/printer/lexicalpreservation/f;-><init>()V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private indentationBlock()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isAReplacement(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffIndex"
        }
    .end annotation

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isAfterLBrace(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex"
        }
    .end annotation

    const/4 v0, 0x1

    if-lez p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-lez p2, :cond_1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isAfterLBrace(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isArrayType(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    instance-of p1, p1, Lcom/github/javaparser/ast/type/ArrayType;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isBracket(Lcom/github/javaparser/JavaToken$Kind;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/JavaToken$Kind;->LBRACKET:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/JavaToken$Kind;->RBRACKET:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isDiamondOperator(Lcom/github/javaparser/JavaToken$Kind;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kind"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/JavaToken$Kind;->GT:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/JavaToken$Kind;->LT:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isEnforcingIndentationActivable(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedGroup"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isLastElement(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nextDiffElement(Ljava/util/List;I)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isACompleteLine()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFollowedByComment(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->posOfNextComment(ILjava/util/List;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFollowedByUnindent(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diffElements",
            "diffIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    instance-of p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInlined(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "startIndex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-ltz p2, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private isLastElement(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNodeWithTypeArguments(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isRemovingIndentationActivable(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedGroup"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isLastElement(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nextDiffElement(Ljava/util/List;I)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isACompleteLine()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isReplaced(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSpaceOrTabElement(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "i"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result p1

    return p1
.end method

.method private isTypeWithFullyQualifiedName(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    return p1
.end method

.method private isValidIndex(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$applyAddedDiffElement$4(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "addedTextElement",
            "range"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    invoke-virtual {p1, p0}, Lcom/github/javaparser/Range;->isBefore(Lcom/github/javaparser/Range;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$groupConsecutiveRemovedElements$3(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$lastIndexOfEol$1(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "source",
            "i"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static synthetic lambda$lastIndexOfEol$2(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "source",
            "i"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$processIndentation$0(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p0

    return p0
.end method

.method private nextDiffElement(Ljava/util/List;I)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;I)",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    return-object p1
.end method

.method private nextIsRightBrace(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0x68

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private posOfNextComment(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isValidIndex(ILjava/util/List;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;

    invoke-direct {v0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;-><init>(Ljava/util/List;I)V

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isComment()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->index()I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private removeElements(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isValidIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->isValidIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt p1, p2, :cond_1

    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private removeExtraCharacters(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex",
            "extraCharacters"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->numberOfElements()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-ge v0, p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public apply()V
    .locals 9

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->of(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->extract(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->combineRemovedElementsToRemovedGroups()Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->applyLeftOverDiffElements()Z

    move-result v1

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->applyLeftOverOriginalElements()Z

    move-result v2

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    iget v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {p0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->applyAddedDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/Added;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    iget v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    instance-of v7, v6, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    instance-of v8, v6, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-interface {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isKept()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {p0, v1, v6, v7, v8}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->applyKeptDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/Kept;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v5, v1

    check-cast v5, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->applyRemovedDiffElement(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/printer/lexicalpreservation/Removed;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;ZZ)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply operations from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffIndex:I

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalIndex:I

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->originalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void
.end method

.method public considerEnforcingIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "nodeTextIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->indentation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->considerIndentation(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;II)I

    move-result p1

    return p1
.end method

.method public lastIndexOfEol(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/d;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/d;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/e;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/e;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    return p1
.end method

.method public lastIndexOfEolWithoutGPT(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public processIndentation(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indentation",
            "prevElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->lastIndexOfEol(Ljava/util/List;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/lexicalpreservation/c;

    invoke-direct {p2}, Lcom/github/javaparser/printer/lexicalpreservation/c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->takeWhile(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prevElements",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Difference{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->diffElements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
