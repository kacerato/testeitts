.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic B(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$null$4(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Ljava/lang/Class;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$getParameterByType$2(Ljava/lang/Class;Lcom/github/javaparser/ast/body/Parameter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$getParameterByName$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$hasParametersOfType$3(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getParameterByName$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "p"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getParameterByType$1(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "type",
            "p"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getParameterByType$2(Ljava/lang/Class;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "type",
            "p"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasParametersOfType$3(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasParametersOfType$5(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->toClassOrInterfaceType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/G;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/G;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/H;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/nodeTypes/H;-><init>(Lcom/github/javaparser/ast/body/Parameter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$null$4(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$getParameterByType$1(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$hasParametersOfType$5(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAndGetParameter(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p1
.end method

.method public addAndGetParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/body/Parameter;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    return-object p1
.end method

.method public addAndGetParameter(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/Parameter;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    return-object p1
.end method

.method public addAndGetParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "name"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ")TN;"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 6
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/body/Parameter;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public getParameter(I)Lcom/github/javaparser/ast/body/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/Parameter;

    return-object p1
.end method

.method public getParameterByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/I;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/I;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getParameterByType(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/F;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/F;-><init>(Ljava/lang/Class;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getParameterByType(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/J;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/J;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public abstract getParameters()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end method

.method public varargs hasParametersOfType([Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/D;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/D;-><init>()V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/E;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/E;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs hasParametersOfType([Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/K;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/K;-><init>()V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setParameter(ILcom/github/javaparser/ast/body/Parameter;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public abstract tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
