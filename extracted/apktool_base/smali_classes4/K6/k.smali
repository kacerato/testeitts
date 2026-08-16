.class public final LK6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/util/List;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0

    invoke-static {p0, p1, p2}, LK6/k;->d(ILjava/util/List;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    return-void
.end method

.method public static synthetic b(ILjava/util/List;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-static {p0, p1, p2}, LK6/k;->e(ILjava/util/List;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method

.method public static synthetic d(ILjava/util/List;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 6

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    iget-object v0, v0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    if-le v0, p0, :cond_1

    return-void

    :cond_1
    const-class v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v1, v1, Lcom/github/javaparser/Position;->line:I

    if-lt p0, v1, :cond_2

    iget-object v0, v0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    if-le p0, v0, :cond_4

    :cond_2
    return-void

    :cond_3
    move v2, v3

    :cond_4
    move v5, v3

    move v3, v2

    move v2, v5

    :cond_5
    new-instance p0, LK6/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local"

    iput-object v0, p0, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LK6/f;->d:Ljava/lang/String;

    iput-object v0, p0, LK6/f;->e:Ljava/lang/String;

    iput-boolean v3, p0, LK6/f;->h:Z

    iput-boolean v2, p0, LK6/f;->i:Z

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic e(ILjava/util/List;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 3

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    iget-object v0, v0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    if-le v0, p0, :cond_1

    return-void

    :cond_1
    const-class v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v1, v1, Lcom/github/javaparser/Position;->line:I

    if-lt p0, v1, :cond_5

    iget-object v0, v0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    if-le p0, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, LK6/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LK6/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local"

    iput-object v0, p0, LK6/f;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LK6/f;->d:Ljava/lang/String;

    iput-object v0, p0, LK6/f;->e:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, LK6/f;->h:Z

    iput-boolean p2, p0, LK6/f;->i:Z

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "lineNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "LK6/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    :try_start_0
    new-instance v1, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v1}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_8:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/ParserConfiguration;->setLanguageLevel(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Lcom/github/javaparser/ParserConfiguration;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/JavaParser;

    invoke-direct {v2, v1}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v2, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    const-string v3, ";"

    invoke-virtual {p0, p1, p2, v3}, LK6/k;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/github/javaparser/JavaParser;->parse(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-class v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    new-instance v2, LK6/i;

    invoke-direct {v2, p2, v0}, LK6/i;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-class v1, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    new-instance v2, LK6/j;

    invoke-direct {v2, p2, v0}, LK6/j;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-class p2, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    new-instance p2, LK6/k$a;

    invoke-direct {p2, p0, v0}, LK6/k$a;-><init>(LK6/k;Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0}, LK6/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_2
    throw p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1
.end method

.method public final f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullScript",
            "lineNumber",
            "replacement"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\\r?\\n"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_5

    array-length v1, p1

    if-lt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    aput-object p3, p1, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_4

    if-lez p3, :cond_3

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v0, p1, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method
