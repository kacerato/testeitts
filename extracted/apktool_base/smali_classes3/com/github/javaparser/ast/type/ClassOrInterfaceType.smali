.class public Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
.super Lcom/github/javaparser/ast/type/ReferenceType;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/type/ReferenceType;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations<",
        "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lcom/github/javaparser/ast/expr/SimpleName;

.field private scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private typeArguments:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v3, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v3}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "scope",
            "name",
            "typeArguments",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p5}, Lcom/github/javaparser/ast/type/ReferenceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setScope(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 8
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 9
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 10
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "name",
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "name",
            "typeArguments",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "scope",
            "name"
        }
    .end annotation

    .line 3
    new-instance v3, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v3, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    new-instance v3, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v3, p1}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static synthetic j0(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->lambda$getNameWithScope$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    return-void
.end method

.method public static synthetic k0(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->lambda$asString$2(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static synthetic l0(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->lambda$convertToUsage$3(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asString$1(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "str",
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$asString$2(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/NodeList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "str",
            "ta"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/body/d;

    invoke-direct {v0}, Lcom/github/javaparser/ast/body/d;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, "<"

    const-string v1, ">"

    const-string v2, ","

    invoke-static {v2, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$convertToUsage$3(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "context",
            "pt"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/type/ConvertibleToUsage;->convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getNameWithScope$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "str",
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getNameWithScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic m0(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->lambda$asString$1(Ljava/lang/StringBuilder;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    return-void
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V

    return-void
.end method

.method public asClassOrInterfaceType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 0

    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/type/a;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/type/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/SimpleName;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/type/b;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/type/b;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->clone()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 2

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/ReferenceType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->clone()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->clone()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->clone()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public convertToUsage(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getNameWithScope()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/resolution/Context;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/model/SymbolReference;->getCorrespondingDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/type/d;

    invoke-direct {v2, p1}, Lcom/github/javaparser/ast/type/d;-><init>(Lcom/github/javaparser/resolution/Context;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isTypeParameter()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-direct {p1, v0, v1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    invoke-direct {p1, v0}, Lcom/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ClassOrInterfaceTypeMetaModel;
    .locals 1

    .line 4
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->classOrInterfaceTypeMetaModel:Lcom/github/javaparser/metamodel/ClassOrInterfaceTypeMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getMetaModel()Lcom/github/javaparser/metamodel/ClassOrInterfaceTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ReferenceTypeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getMetaModel()Lcom/github/javaparser/metamodel/ClassOrInterfaceTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/TypeMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getMetaModel()Lcom/github/javaparser/metamodel/ClassOrInterfaceTypeMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getNameWithScope()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/type/c;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/type/c;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/SimpleName;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifClassOrInterfaceType(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isBoxedType()Z
    .locals 2

    sget-object v0, Lcom/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClassOrInterfaceType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 3
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
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->removeScope()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return v2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeScope()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setScope(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 3
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
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return v2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setScope(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return v2

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/type/Type;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->toResolvedType(Lcom/github/javaparser/ast/type/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedType;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
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
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/type/Type;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setScope(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scope"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->scope:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;)",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toClassOrInterfaceType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->resolve()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "L%s;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnboxedType()Lcom/github/javaparser/ast/type/PrimitiveType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->isBoxedType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType;

    sget-object v1, Lcom/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t a boxed type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
