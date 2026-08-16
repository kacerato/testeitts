.class public Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildPositionInfo"
.end annotation


# instance fields
.field node:Lcom/github/javaparser/ast/Node;

.field position:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/Node;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "position"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->position:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    iget-object v2, p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
