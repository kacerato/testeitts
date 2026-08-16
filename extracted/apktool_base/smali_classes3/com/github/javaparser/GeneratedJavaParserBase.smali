.class abstract Lcom/github/javaparser/GeneratedJavaParserBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field problems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field

.field storeTokens:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/GeneratedJavaParserBase;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/GeneratedJavaParserBase;->lambda$propagateRangeGrowthOnRight$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private synthetic lambda$propagateRangeGrowthOnRight$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "endNode",
            "nodeParent"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p3}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/JavaToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->propagateRangeGrowthOnRight(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    :cond_0
    return-void
.end method

.method private makeMessageForParseException(Lcom/github/javaparser/ParseException;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse error. Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p1, Lcom/github/javaparser/ParseException;->expectedTokenSequences:[[I

    array-length v7, v6

    if-ge v4, v7, :cond_2

    aget-object v6, v6, v4

    array-length v7, v6

    if-ge v5, v7, :cond_0

    array-length v5, v6

    :cond_0
    move v6, v3

    :goto_1
    iget-object v7, p1, Lcom/github/javaparser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v4

    array-length v8, v7

    if-ge v6, v8, :cond_1

    iget-object v8, p1, Lcom/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    aget v7, v7, v6

    aget-object v7, v8, v7

    invoke-virtual {v2, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, " "

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/github/javaparser/ParseException;->currentToken:Lcom/github/javaparser/Token;

    iget-object v2, v2, Lcom/github/javaparser/Token;->next:Lcom/github/javaparser/Token;

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_7

    iget-object v7, v2, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    invoke-static {v7}, Lcom/github/javaparser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v8, v2, Lcom/github/javaparser/Token;->kind:I

    if-nez v8, :cond_5

    iget-object v2, p1, Lcom/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    iget v9, v2, Lcom/github/javaparser/Token;->kind:I

    aget-object v8, v8, v9

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v2, v2, Lcom/github/javaparser/Token;->next:Lcom/github/javaparser/Token;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    iget-object p1, p1, Lcom/github/javaparser/ParseException;->expectedTokenSequences:[[I

    array-length v2, p1

    if-eqz v2, :cond_9

    array-length p1, p1

    const-string v2, ", expected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    const-string p1, ""

    goto :goto_6

    :cond_8
    const-string p1, " one of "

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private propagateRangeGrowthOnRight(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "endNode"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/i;-><init>(Lcom/github/javaparser/GeneratedJavaParserBase;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/TokenRange;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/Node;->setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract ReInit(Lcom/github/javaparser/Provider;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation
.end method

.method public add(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p1
.end method

.method public add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addProblem(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/Problem;

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->tokenRange()Lcom/github/javaparser/TokenRange;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWhenNotNull(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->add(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public emptyNodeList()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">()",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    return-object v0
.end method

.method public generateLambda(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ret",
            "lambdaBody"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v9

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v10, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/github/javaparser/TokenRange;

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/type/UnknownType;

    invoke-direct {v6}, Lcom/github/javaparser/ast/type/UnknownType;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;ZLcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    invoke-virtual {p0, v0, v10}, Lcom/github/javaparser/GeneratedJavaParserBase;->add(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/TokenRange;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/ast/expr/NameExpr;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v9

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v10, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/github/javaparser/TokenRange;

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lcom/github/javaparser/ast/type/UnknownType;

    invoke-direct {v6}, Lcom/github/javaparser/ast/type/UnknownType;-><init>()V

    new-instance v8, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;ZLcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    invoke-virtual {p0, v0, v10}, Lcom/github/javaparser/GeneratedJavaParserBase;->add(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/TokenRange;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/github/javaparser/ast/expr/LambdaExpr;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->propagateRangeGrowthOnRight(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/github/javaparser/ast/expr/CastExpr;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/expr/CastExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->generateLambda(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/expr/CastExpr;->setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/CastExpr;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->propagateRangeGrowthOnRight(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    goto :goto_1

    :cond_3
    const-string p2, "Failed to parse lambda expression! Please create an issue at https://github.com/javaparser/javaparser/issues"

    invoke-virtual {p0, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->addProblem(Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public getCommentsCollection()Lcom/github/javaparser/ast/comments/CommentsCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->getCommentsCollection()Lcom/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNextToken()Lcom/github/javaparser/Token;
.end method

.method public abstract getToken(I)Lcom/github/javaparser/Token;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;
.end method

.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->getTokens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public juggleArrayCreation(Lcom/github/javaparser/TokenRange;Ljava/util/List;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Ljava/util/List;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "levelRanges",
            "type",
            "dimensions",
            "arrayAnnotations",
            "arrayInitializerExpr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/TokenRange;",
            ">;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;>;",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")",
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/github/javaparser/ast/ArrayCreationLevel;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p4, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2, v3, v4, v5}, Lcom/github/javaparser/ast/ArrayCreationLevel;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;)V

    invoke-virtual {v0, v2}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    invoke-direct {p2, p1, p3, v0, p6}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    return-object p2
.end method

.method public juggleArrayType(Lcom/github/javaparser/ast/type/Type;Ljava/util/List;)Lcom/github/javaparser/ast/type/Type;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialType",
            "additionalBrackets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;)",
            "Lcom/github/javaparser/ast/type/Type;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/ast/type/ArrayType;->unwrapArrayTypes(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/utils/Pair;

    move-result-object p1

    iget-object v0, p1, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    iget-object p1, p1, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/github/javaparser/ast/type/ArrayType;->wrapInArrayTypes(Lcom/github/javaparser/ast/type/Type;[Ljava/util/List;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->clone()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    return-object p1
.end method

.method public nodeListBegin(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/JavaToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;)",
            "Lcom/github/javaparser/JavaToken;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/github/javaparser/JavaToken;->INVALID:Lcom/github/javaparser/JavaToken;

    return-object p1
.end method

.method public orIfInvalid(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/JavaToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstChoice",
            "secondChoice"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/github/javaparser/JavaToken;->invalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public orIfInvalid(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/JavaToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstChoice",
            "secondChoice"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->orIfInvalid(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/JavaToken;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepend(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/NodeList;->addFirst(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    return-object p1
.end method

.method public range(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/TokenRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/TokenRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public recover(ILcom/github/javaparser/ParseException;)Lcom/github/javaparser/TokenRange;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recoveryTokenType",
            "p"
        }
    .end annotation

    iget-object v0, p2, Lcom/github/javaparser/ParseException;->currentToken:Lcom/github/javaparser/Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getNextToken()Lcom/github/javaparser/Token;

    move-result-object v2

    iget v2, v2, Lcom/github/javaparser/Token;->kind:I

    if-eq v2, p1, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;

    move-result-object v1

    :cond_3
    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance v0, Lcom/github/javaparser/Problem;

    invoke-direct {p0, p2}, Lcom/github/javaparser/GeneratedJavaParserBase;->makeMessageForParseException(Lcom/github/javaparser/ParseException;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, p2}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public recoverStatement(IIILcom/github/javaparser/ParseException;)Lcom/github/javaparser/TokenRange;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recoveryTokenType",
            "lBraceType",
            "rBraceType",
            "p"
        }
    .end annotation

    iget-object v0, p4, Lcom/github/javaparser/ParseException;->currentToken:Lcom/github/javaparser/Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/github/javaparser/GeneratedJavaParserBase;->getToken(I)Lcom/github/javaparser/Token;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/github/javaparser/Token;->kind:I

    if-ne v3, p3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;

    move-result-object p1

    iget-object p2, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance p3, Lcom/github/javaparser/Problem;

    invoke-direct {p0, p4}, Lcom/github/javaparser/GeneratedJavaParserBase;->makeMessageForParseException(Lcom/github/javaparser/ParseException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1, p4}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getNextToken()Lcom/github/javaparser/Token;

    move-result-object v3

    iget v3, v3, Lcom/github/javaparser/Token;->kind:I

    if-ne v3, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v3, p3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    :goto_1
    if-ne v3, p1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    if-nez v3, :cond_1

    :cond_6
    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->range(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;

    move-result-object v1

    :cond_7
    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance p2, Lcom/github/javaparser/Problem;

    invoke-direct {p0, p4}, Lcom/github/javaparser/GeneratedJavaParserBase;->makeMessageForParseException(Lcom/github/javaparser/ParseException;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p4}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public reset(Lcom/github/javaparser/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->ReInit(Lcom/github/javaparser/Provider;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->reset()V

    return-void
.end method

.method public scopeToName(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/Name;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Expression;->isNameExpr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Expression;->asNameExpr()Lcom/github/javaparser/ast/expr/NameExpr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/github/javaparser/ast/expr/Name;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Expression;->isFieldAccessExpr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Expression;->asFieldAccessExpr()Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/javaparser/GeneratedJavaParserBase;->scopeToName(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/github/javaparser/ast/expr/Name;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected expression type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStoreTokens(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->setStoreTokens(Z)V

    return-void
.end method

.method public setTokenKind(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKind"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaToken;->setKind(I)V

    return-void
.end method

.method public setYieldSupported()V
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lcom/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->setYieldSupported()V

    return-void
.end method

.method public abstract token()Lcom/github/javaparser/JavaToken;
.end method

.method public tokenRange()Lcom/github/javaparser/TokenRange;
    .locals 3

    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/javaparser/GeneratedJavaParserBase;->token()Lcom/github/javaparser/JavaToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public unTripleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
