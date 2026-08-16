.class Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;,
        Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->lambda$calculatedSyntaxModelForNode$1(Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->lambda$calculatedSyntaxModelForNode$0(Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method private calculatedSyntaxModelAfterListReplacement(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p3}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;

    invoke-direct {v1, p2, p4, p5}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;ILcom/github/javaparser/ast/Node;)V

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method private calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "node",
            "elements",
            "change"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;",
            "Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;",
            ")V"
        }
    .end annotation

    .line 5
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    .line 7
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSequence;->getElements()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/q;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/q;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    .line 11
    instance-of v0, p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    .line 12
    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 13
    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    .line 14
    instance-of p2, p2, Lcom/github/javaparser/ast/expr/LambdaExpr;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz p2, :cond_3

    .line 15
    check-cast p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getValueAsSingleReference(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    :cond_3
    :goto_0
    if-eqz p1, :cond_22

    .line 17
    new-instance p2, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-direct {p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 18
    :cond_4
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 19
    :cond_5
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_6

    .line 20
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 21
    :cond_6
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 22
    :cond_7
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    if-eqz v0, :cond_14

    .line 23
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    .line 24
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/observer/ObservableProperty;->isAboutNodes()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 25
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v3, v0, Ljava/util/Optional;

    const-string v4, "Expected NodeList, found "

    if-eqz v3, :cond_a

    .line 27
    check-cast v0, Ljava/util/Optional;

    .line 28
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 29
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/github/javaparser/ast/NodeList;

    if-eqz v3, :cond_8

    .line 30
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    goto :goto_1

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_9
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    goto :goto_1

    .line 34
    :cond_a
    instance-of v3, v0, Lcom/github/javaparser/ast/NodeList;

    if-eqz v3, :cond_e

    .line 35
    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    .line 36
    :goto_1
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 37
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getPreceeding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPre()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 40
    :cond_b
    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_c

    .line 42
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPost()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    :cond_d
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getFollowing()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    goto/16 :goto_4

    .line 44
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_f
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 48
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getPreceeding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v2, :cond_10

    .line 50
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPre()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 51
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    instance-of v3, v2, Lcom/github/javaparser/ast/Modifier;

    if-eqz v3, :cond_12

    .line 53
    check-cast v2, Lcom/github/javaparser/ast/Modifier;

    .line 54
    new-instance v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {v2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->toToken(Lcom/github/javaparser/ast/Modifier;)I

    move-result v2

    invoke-direct {v3, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 56
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getSeparatorPost()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    :cond_11
    move v2, v1

    goto :goto_3

    .line 57
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not supported value found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_13
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;->getFollowing()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    goto/16 :goto_4

    .line 60
    :cond_14
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    if-eqz v0, :cond_16

    .line 61
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    .line 62
    invoke-interface {p4, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->evaluate(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 63
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getThenElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    goto/16 :goto_4

    .line 64
    :cond_15
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getElseElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    goto/16 :goto_4

    .line 65
    :cond_16
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_17

    .line 66
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 67
    :cond_17
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_18

    .line 68
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 69
    :cond_18
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    if-eqz v0, :cond_1a

    .line 70
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    .line 71
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p4

    .line 72
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    instance-of v1, p4, Lcom/github/javaparser/printer/Stringable;

    if-eqz v1, :cond_19

    .line 74
    move-object v0, p4

    check-cast v0, Lcom/github/javaparser/printer/Stringable;

    invoke-interface {v0}, Lcom/github/javaparser/printer/Stringable;->asString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_19
    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;->getTokenType(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p1, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 76
    :cond_1a
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmString;

    if-eqz v0, :cond_1c

    instance-of v1, p2, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    if-eqz v1, :cond_1c

    .line 77
    instance-of p1, p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    const/16 v0, 0x5e

    const-string v1, "\""

    if-eqz p1, :cond_1b

    .line 78
    new-instance p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    .line 79
    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 80
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 81
    :cond_1b
    new-instance p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    .line 82
    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 83
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1c
    if-eqz v0, :cond_1e

    .line 84
    instance-of v0, p2, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    if-eqz v0, :cond_1e

    .line 85
    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getLineEndingStyle()Lcom/github/javaparser/utils/LineSeparator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/utils/LineSeparator;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    instance-of v0, p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    const/16 v1, 0x60

    const-string v2, "\"\"\""

    if-eqz v0, :cond_1d

    .line 87
    new-instance p2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    .line 88
    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 89
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 90
    :cond_1d
    new-instance p4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    .line 91
    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, v1, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 92
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 93
    :cond_1e
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmChar;

    if-eqz v0, :cond_20

    instance-of v0, p2, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    if-eqz v0, :cond_20

    .line 94
    instance-of p1, p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    const/16 v0, 0x12

    const-string v1, "\'"

    if-eqz p1, :cond_1f

    .line 95
    new-instance p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    .line 96
    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 97
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 98
    :cond_1f
    new-instance p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    .line 99
    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    .line 100
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_20
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v0, :cond_21

    .line 102
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/r;

    invoke-direct {v1, p0, p2, v0, p4}, Lcom/github/javaparser/printer/lexicalpreservation/r;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 105
    new-instance p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 106
    :cond_21
    instance-of p2, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz p2, :cond_23

    .line 107
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_4
    return-void

    .line 108
    :cond_23
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not supported element type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getNewLineToken(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$calculatedSyntaxModelForNode$0(Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "elements",
            "change",
            "e"
        }
    .end annotation

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    return-void
.end method

.method private synthetic lambda$calculatedSyntaxModelForNode$1(Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "mixElements",
            "change",
            "e"
        }
    .end annotation

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    return-void
.end method

.method private replaceEolTokens(Ljava/util/List;Lcom/github/javaparser/utils/LineSeparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "differenceElements",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;",
            "Lcom/github/javaparser/utils/LineSeparator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->getNewLineToken(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    invoke-interface {v1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->replaceEolTokens(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toToken(Lcom/github/javaparser/ast/Modifier;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported keyword"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x4e

    return p0

    :pswitch_1
    const/16 p0, 0x37

    return p0

    :pswitch_2
    const/16 p0, 0x29

    return p0

    :pswitch_3
    const/16 p0, 0x42

    return p0

    :pswitch_4
    const/16 p0, 0x3a

    return p0

    :pswitch_5
    const/16 p0, 0x3e

    return p0

    :pswitch_6
    const/16 p0, 0xb

    return p0

    :pswitch_7
    const/16 p0, 0x1d

    return p0

    :pswitch_8
    const/16 p0, 0x36

    return p0

    :pswitch_9
    const/16 p0, 0x30

    return p0

    :pswitch_a
    const/16 p0, 0x2f

    return p0

    :pswitch_b
    const/16 p0, 0x31

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculateListAdditionDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index",
            "nodeAdded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListAddition(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->getLineEndingStyleOrDefault(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->replaceEolTokens(Ljava/util/List;Lcom/github/javaparser/utils/LineSeparator;)V

    return-object p1
.end method

.method public calculateListRemovalDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculateListReplacementDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "nodeList",
            "index",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListReplacement(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculatePropertyChange(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterPropertyChange(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcom/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-direct {p4, p3, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    return-void
.end method

.method public calculatedSyntaxModelAfterListAddition(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "observableProperty",
            "index",
            "nodeAdded"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    .line 6
    invoke-virtual {p2, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_0

    .line 8
    move-object v4, p1

    check-cast v4, Lcom/github/javaparser/ast/NodeList;

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListAddition(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected NodeList, found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public calculatedSyntaxModelAfterListAddition(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index",
            "nodeAdded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    .line 3
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListAdditionChange;

    invoke-direct {v1, p2, p4, p5}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListAdditionChange;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;ILcom/github/javaparser/ast/Node;)V

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 4
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public calculatedSyntaxModelAfterListRemoval(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "observableProperty",
            "index"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v1, p1, Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_0

    .line 8
    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    .line 9
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterListRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected NodeList, found "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public calculatedSyntaxModelAfterListRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "observableProperty",
            "nodeList",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I)",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    .line 3
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;

    invoke-direct {v1, p2, p4}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;I)V

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 4
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public calculatedSyntaxModelAfterPropertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelAfterPropertyChange(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    return-object p1
.end method

.method public calculatedSyntaxModelAfterPropertyChange(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "csm",
            "node",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;

    invoke-direct {v1, p3, p4, p5}, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 5
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public calculatedSyntaxModelForNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    return-object p1
.end method

.method public calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csm",
            "node"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V

    .line 3
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    return-object p1
.end method
