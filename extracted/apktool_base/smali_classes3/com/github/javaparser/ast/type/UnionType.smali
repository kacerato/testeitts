.class public Lcom/github/javaparser/ast/type/UnionType;
.super Lcom/github/javaparser/ast/type/Type;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/type/Type;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lcom/github/javaparser/ast/type/UnionType;",
        ">;"
    }
.end annotation


# instance fields
.field private elements:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/github/javaparser/ast/type/UnionType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/type/Type;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/UnionType;->setElements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/UnionType;

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/type/UnionType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static synthetic j0(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/type/UnionType;->lambda$convertToUsage$0(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$convertToUsage$0(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "context",
            "el"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/type/ConvertibleToUsage;->convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V

    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/type/e;

    invoke-direct {v1}, Lcom/github/javaparser/ast/type/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public asUnionType()Lcom/github/javaparser/ast/type/UnionType;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->clone()Lcom/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->clone()Lcom/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/type/UnionType;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/type/UnionType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/UnionType;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->clone()Lcom/github/javaparser/ast/type/UnionType;

    move-result-object v0

    return-object v0
.end method

.method public convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/type/h;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/type/h;-><init>(Lcom/github/javaparser/resolution/Context;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedUnionType;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getElements()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->getMetaModel()Lcom/github/javaparser/metamodel/UnionTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->getMetaModel()Lcom/github/javaparser/metamodel/UnionTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/UnionTypeMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->unionTypeMetaModel:Lcom/github/javaparser/metamodel/UnionTypeMetaModel;

    return-object v0
.end method

.method public ifUnionType(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/type/UnionType;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isUnionType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/type/Type;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic resolve()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lcom/github/javaparser/resolution/types/ResolvedUnionType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lcom/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/UnionType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/UnionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/UnionType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/UnionType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/UnionType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lcom/github/javaparser/ast/type/UnionType;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/UnionType;

    return-object p1
.end method

.method public setElements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/UnionType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ReferenceType;",
            ">;)",
            "Lcom/github/javaparser/ast/type/UnionType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELEMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/type/UnionType;->elements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toUnionType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/UnionType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
