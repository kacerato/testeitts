.class public Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;
.super Lorg/openjdk/javax/lang/model/util/ElementScanner9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/ElementScanner9<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/ElementScanner9;-><init>()V

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;Lorg/openjdk/javax/lang/model/element/TypeParameterElement;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->lambda$getTypeParameters$0(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->encodeChar(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeChar(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getParamTypes(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/c;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private getTypeDescs(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/b;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/b;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private getTypeParameters(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeParameterElement;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/d;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/comp/d;-><init>(Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private isAnonymous(Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
    .locals 0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNonPrivate(Lorg/openjdk/javax/lang/model/element/Element;)Z
    .locals 1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/Modifier;->PRIVATE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic lambda$getTypeParameters$0(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCollectedPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    return-object v0
.end method

.method public bridge synthetic visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->isNonPrivate(Lorg/openjdk/javax/lang/model/element/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getTypeParameters(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->fromType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    move-result-object v3

    .line 6
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getParamTypes(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;-><init>(Ljava/util/Set;Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->asSignatureString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->isNonPrivate(Lorg/openjdk/javax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    .line 4
    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    .line 5
    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->isAnonymous(Lorg/openjdk/javax/lang/model/element/TypeElement;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    move-object p2, p1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v1, p1, p2, v2}, Lorg/openjdk/tools/sjavac/pubapi/PubType;-><init>(Ljava/util/Set;Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    .line 9
    iget-object p1, v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    iget-object p2, v1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->isNonPrivate(Lorg/openjdk/javax/lang/model/element/Element;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "char"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->encodeChar(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance v1, Lorg/openjdk/tools/sjavac/comp/e;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/comp/e;-><init>()V

    .line 9
    invoke-interface {p2, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v1, ""

    .line 10
    const-string v2, "\""

    invoke-static {v1, v2, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 11
    :goto_0
    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    .line 12
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->fromType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1, p2}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;-><init>(Ljava/util/Set;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->collectedApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    iget-object p2, v1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
