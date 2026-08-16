.class public Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;
    }
.end annotation


# static fields
.field private static JAVAPARSER_AST_NODELIST:Ljava/lang/String;

.field private static JAVA_UTIL_OPTIONAL:Ljava/lang/String;

.field private static final LEXICAL_DIFFERENCE_CALCULATOR:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

.field public static final NODE_TEXT_DATA:Lcom/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/DataKey<",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ">;"
        }
    .end annotation
.end field

.field private static observer:Lcom/github/javaparser/ast/observer/AstObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->JAVA_UTIL_OPTIONAL:Ljava/lang/String;

    const-class v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->JAVAPARSER_AST_NODELIST:Ljava/lang/String;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;-><init>()V

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lcom/github/javaparser/ast/DataKey;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;-><init>()V

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->LEXICAL_DIFFERENCE_CALCULATOR:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$storeInitialTextForOneNode$5(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->LEXICAL_DIFFERENCE_CALCULATOR:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findNodeListName(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/github/javaparser/ast/Node;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->storeInitialTextForOneNode(Lcom/github/javaparser/ast/Node;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/TokenRange;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$setup$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/TokenRange;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$tokensPreceeding$6(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static createObserver()Lcom/github/javaparser/ast/observer/AstObserver;
    .locals 2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$null$1(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$interpret$7(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$interpret$10(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static findIndentation(Lcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private static findNodeListName(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;)",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    const/4 v6, 0x3

    const-string v7, "get"

    const/4 v8, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->JAVAPARSER_AST_NODELIST:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lcom/github/javaparser/ast/NodeList;

    if-eqz v8, :cond_1

    check-cast v5, Lcom/github/javaparser/ast/NodeList;

    if-ne v5, p0, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/ast/observer/ObservableProperty;->fromCamelCaseName(Ljava/lang/String;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected NodeList, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->isReturningOptionalNodeList(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/ast/observer/ObservableProperty;->fromCamelCaseName(Ljava/lang/String;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find list name of NodeList of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$interpret$8(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public static getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->prettyPrintingTextNode(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-object p0
.end method

.method public static synthetic h(Lcom/github/javaparser/ast/Node;Ljava/util/Map;Lcom/github/javaparser/TokenRange;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$storeInitialText$3(Lcom/github/javaparser/ast/Node;Ljava/util/Map;Lcom/github/javaparser/TokenRange;)V

    return-void
.end method

.method public static synthetic i(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$storeInitialTextForOneNode$4(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method private static interpret(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "csm",
            "nodeText"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findIndentation(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/B;

    invoke-direct {v2, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/B;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v5, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    iget-object v8, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_2

    iget-object v9, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-nez v8, :cond_2

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_2

    new-instance v9, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const-string v10, " "

    invoke-direct {v9, v7, v10}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    instance-of v8, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v8, :cond_2

    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_4

    instance-of v3, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/C;

    invoke-direct {v3, p2}, Lcom/github/javaparser/printer/lexicalpreservation/C;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-interface {v0, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    instance-of v3, v4, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v3, :cond_5

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addChild(Lcom/github/javaparser/ast/Node;)V

    goto :goto_0

    :cond_5
    instance-of v3, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v3, :cond_6

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v3

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v3

    goto/16 :goto_1

    :cond_6
    instance-of v3, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v3, :cond_7

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/D;

    invoke-direct {v4, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/D;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :cond_7
    if-nez v5, :cond_0

    instance-of v3, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v3, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown element type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    instance-of p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    if-eqz p1, :cond_a

    check-cast p0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/E;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/E;-><init>(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    return-object p2
.end method

.method public static isAvailableOn(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result p0

    return p0
.end method

.method private static isReturningOptionalNodeList(Ljava/lang/reflect/Method;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->JAVA_UTIL_OPTIONAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->JAVAPARSER_AST_NODELIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$null$2(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$null$9(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method private static synthetic lambda$interpret$10(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "variableDeclarator",
            "nodeText",
            "parent"
        }
    .end annotation

    check-cast p2, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/v;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/v;-><init>(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$interpret$7(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "calculatedSyntaxModel",
            "comment"
        }
    .end annotation

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->getLineEndingStyleOrDefault(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object p0

    iget-object v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->eolTokenKind(Lcom/github/javaparser/utils/LineSeparator;)I

    move-result v2

    invoke-virtual {p0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-direct {v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-interface {p1, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$interpret$8(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "nodeText",
            "e"
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->interpret(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method

.method private static synthetic lambda$null$1(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "token"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token without range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "token"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token without node owning it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$null$9(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/type/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "variableDeclarator",
            "nodeText",
            "mct"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result p0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result p2

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setup$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/TokenRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "r"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->storeInitialText(Lcom/github/javaparser/ast/Node;)V

    sget-object p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->isRegistered(Lcom/github/javaparser/ast/observer/AstObserver;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$storeInitialText$3(Lcom/github/javaparser/ast/Node;Ljava/util/Map;Lcom/github/javaparser/TokenRange;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "root",
            "tokensByNode",
            "rootTokenRange"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/y;

    invoke-direct {v2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/y;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/Node;->findByRange(Lcom/github/javaparser/Range;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/z;

    invoke-direct {v2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/z;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;

    invoke-direct {p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p0}, Lcom/github/javaparser/ast/visitor/TreeVisitor;->visitBreadthFirst(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$storeInitialTextForOneNode$4(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$storeInitialTextForOneNode$5(Lcom/github/javaparser/utils/Pair;)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    return-object p0
.end method

.method private static synthetic lambda$tokensPreceeding$6(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static prettyPrintingTextNode(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "nodeText"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$3;->$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive:[I

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x35

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getFooter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p0, Lcom/github/javaparser/ast/comments/BlockComment;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/github/javaparser/ast/comments/BlockComment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getFooter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p0, Lcom/github/javaparser/ast/comments/LineComment;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/github/javaparser/ast/comments/LineComment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p0, Lcom/github/javaparser/ast/Modifier;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/github/javaparser/ast/Modifier;

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->toToken(Lcom/github/javaparser/ast/Modifier;)I

    move-result v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->interpret(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;-><init>()V

    invoke-interface {v0, p0}, Lcom/github/javaparser/printer/Printer;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setup(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(TN;)TN;"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lcom/github/javaparser/ast/observer/AstObserver;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->createObserver()Lcom/github/javaparser/ast/observer/AstObserver;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lcom/github/javaparser/ast/observer/AstObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/t;

    invoke-direct {v1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/t;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method private static storeInitialText(Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/u;

    invoke-direct {v2, p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/u;-><init>(Lcom/github/javaparser/ast/Node;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static storeInitialTextForOneNode(Lcom/github/javaparser/ast/Node;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "nodeTokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/JavaToken;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->isPhantom()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/github/javaparser/utils/Pair;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v5, v2}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Range not present on node "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/JavaToken;

    new-instance v2, Lcom/github/javaparser/utils/Pair;

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v4, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lcom/github/javaparser/JavaToken;)V

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/w;

    invoke-direct {p1}, Lcom/github/javaparser/printer/lexicalpreservation/w;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    sget-object p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lcom/github/javaparser/ast/DataKey;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/x;

    invoke-direct {v2}, Lcom/github/javaparser/printer/lexicalpreservation/x;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    return-void
.end method

.method private static tokensPreceeding(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindChild(Lcom/github/javaparser/ast/Node;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;-><init>()V

    return-object p0

    :cond_2
    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->partialReverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/A;

    invoke-direct {v1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/A;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-direct {v2, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;-><init>(Ljava/util/Iterator;Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;)V

    return-object v2
.end method
